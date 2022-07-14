contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 100


array of uint256 rEFERRAL_PERCENTS;
uint256 stor1;
array of address stor2;
uint256 totalFunded;
array of struct planInfo;
mapping of struct userReferralBonus;
uint8 stor6;
address commissionWalletAddress; offset 8

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        if userReferralBonus[address(arg1)][idx].field_0 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[stor5[address(arg1)][idx].field_0].field_0:
            if idx >= userReferralBonus[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 5)
            if userReferralBonus[address(arg1)][idx].field_512 > -1:
                revert with 'NH{q', 17
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                if idx >= userReferralBonus[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if userReferralBonus[address(arg1)][idx].field_0 >= planInfo.length:
                    revert with 'NH{q', 50
                if idx >= userReferralBonus[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if not userReferralBonus[address(arg1)][idx].field_256:
                    if idx >= userReferralBonus[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                    else:
                        if idx >= userReferralBonus[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                else:
                    if userReferralBonus[address(arg1)][idx].field_256 and planInfo[stor5[address(arg1)][idx].field_0].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256:
                        revert with 'NH{q', 17
                    if not userReferralBonus[address(arg1)][idx].field_256:
                        revert with 'NH{q', 18
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor5[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if idx >= userReferralBonus[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(arg1)].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userReferralBonus[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and 0 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(arg1)][idx].field_512 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            if planInfo[stor5[address(arg1)][idx].field_0].field_0 and 24 * 3600 > -1 / planInfo[stor5[address(arg1)][idx].field_0].field_0:
                revert with 'NH{q', 17
            if not planInfo[stor5[address(arg1)][idx].field_0].field_0:
                revert with 'NH{q', 18
            if 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 / planInfo[stor5[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if idx >= userReferralBonus[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 5)
            if userReferralBonus[address(arg1)][idx].field_512 > (-86400 * planInfo[stor5[address(arg1)][idx].field_0].field_0) - 1:
                revert with 'NH{q', 17
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                if idx >= userReferralBonus[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if userReferralBonus[address(arg1)][idx].field_0 >= planInfo.length:
                    revert with 'NH{q', 50
                if idx >= userReferralBonus[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if not userReferralBonus[address(arg1)][idx].field_256:
                    if idx >= userReferralBonus[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                    else:
                        if idx >= userReferralBonus[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                else:
                    if userReferralBonus[address(arg1)][idx].field_256 and planInfo[stor5[address(arg1)][idx].field_0].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256:
                        revert with 'NH{q', 17
                    if not userReferralBonus[address(arg1)][idx].field_256:
                        revert with 'NH{q', 18
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor5[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if idx >= userReferralBonus[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(arg1)].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userReferralBonus[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(arg1)][idx].field_512 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if userReferralBonus[address(arg1)].field_1280 > -1:
        revert with 'NH{q', 17
    if userReferralBonus[address(arg1)].field_1280 < userReferralBonus[address(arg1)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)].field_1280
}

function started() {
    return bool(stor6)
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userReferralBonus[address(arg1)].field_512
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userReferralBonus[address(arg1)].field_1536
}

function totalInvested() {
    return stor2.length
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        if idx >= userReferralBonus[address(arg1)].field_0:
            revert with 'NH{q', 50
        if s > -userReferralBonus[address(arg1)][idx].field_256 - 1:
            revert with 'NH{q', 17
        if s + userReferralBonus[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    if userReferralBonus[address(arg1)].field_768 > -userReferralBonus[address(arg1)].field_1024 - 1:
        revert with 'NH{q', 17
    return s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0, 
           userReferralBonus[address(arg1)].field_1792,
           userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024
}

function commissionWallet() {
    return commissionWalletAddress
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userReferralBonus[address(arg1)].field_0
}

function totalFunded() {
    return totalFunded
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    return planInfo[2 * uint8(arg1)].field_0, planInfo[2 * uint8(arg1)].field_256
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userReferralBonus[address(arg1)].field_256
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userReferralBonus[address(arg1)].field_1280
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userReferralBonus[address(arg1)].field_1792
}

function _fallback() payable {
    revert
}

function getUserTotalReferrals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userReferralBonus[address(arg1)].field_768 > -userReferralBonus[address(arg1)].field_1024 - 1:
        revert with 'NH{q', 17
    return (userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024)
}

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 160
    s = 3
    while 224 > idx + 32:
        mem[idx + 32] = userReferralBonus[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return userReferralBonus[address(arg1)].field_768, mem[192]
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userReferralBonus[address(arg1)].field_1280 > userReferralBonus[address(arg1)].field_1536:
        revert with 0, 'SafeMath: subtraction overflow'
    if userReferralBonus[address(arg1)].field_1536 < userReferralBonus[address(arg1)].field_1280:
        revert with 'NH{q', 17
    return (userReferralBonus[address(arg1)].field_1536 - userReferralBonus[address(arg1)].field_1280)
}

function fundContract() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor6:
        if commissionWalletAddress != msg.sender:
            revert with 0, 'Not started yet'
        stor6 = 1
    if totalFunded > -msg.value - 1:
        revert with 'NH{q', 17
    if totalFunded + msg.value < totalFunded:
        revert with 0, 'SafeMath: addition overflow'
    totalFunded += msg.value
    emit ContractFunded(msg.value, msg.sender);
    stor1 = 1
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= userReferralBonus[address(arg1)].field_0:
        revert with 'NH{q', 50
    if userReferralBonus[address(arg1)][arg2].field_0 >= planInfo.length:
        revert with 'NH{q', 50
    if arg2 >= userReferralBonus[address(arg1)].field_0:
        revert with 'NH{q', 50
    if userReferralBonus[address(arg1)][arg2].field_0 >= planInfo.length:
        revert with 'NH{q', 50
    if not planInfo[stor5[address(arg1)][arg2].field_0].field_0:
        if arg2 >= userReferralBonus[address(arg1)].field_0:
            revert with 'NH{q', 50
        if userReferralBonus[address(arg1)][arg2].field_512 > -1:
            revert with 'NH{q', 17
        if userReferralBonus[address(arg1)][arg2].field_512 < userReferralBonus[address(arg1)][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return userReferralBonus[address(arg1)][arg2].field_0, 
               planInfo[stor5[address(arg1)][arg2].field_0].field_256,
               userReferralBonus[address(arg1)][arg2].field_256,
               userReferralBonus[address(arg1)][arg2].field_512,
               userReferralBonus[address(arg1)][arg2].field_512
    if planInfo[stor5[address(arg1)][arg2].field_0].field_0 and 24 * 3600 > -1 / planInfo[stor5[address(arg1)][arg2].field_0].field_0:
        revert with 'NH{q', 17
    if not planInfo[stor5[address(arg1)][arg2].field_0].field_0:
        revert with 'NH{q', 18
    if 24 * 3600 * planInfo[stor5[address(arg1)][arg2].field_0].field_0 / planInfo[stor5[address(arg1)][arg2].field_0].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if arg2 >= userReferralBonus[address(arg1)].field_0:
        revert with 'NH{q', 50
    if userReferralBonus[address(arg1)][arg2].field_512 > (-86400 * planInfo[stor5[address(arg1)][arg2].field_0].field_0) - 1:
        revert with 'NH{q', 17
    if userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][arg2].field_0].field_0) < userReferralBonus[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)][arg2].field_0, 
           planInfo[stor5[address(arg1)][arg2].field_0].field_256,
           userReferralBonus[address(arg1)][arg2].field_256,
           userReferralBonus[address(arg1)][arg2].field_512,
           userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][arg2].field_0].field_0)
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        if idx >= userReferralBonus[address(arg1)].field_0:
            revert with 'NH{q', 50
        if s > -userReferralBonus[address(arg1)][idx].field_256 - 1:
            revert with 'NH{q', 17
        if s + userReferralBonus[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    return (s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0)
}

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor6:
        if commissionWalletAddress != msg.sender:
            revert with 0, 'Not started yet'
        stor6 = 1
    if arg2 >= 1:
        revert with 0, 'Invalid plan'
    if not msg.value:
        call commissionWalletAddress with:
             gas 2300 wei
    else:
        if msg.value and 100 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if 100 * msg.value / msg.value != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        call commissionWalletAddress with:
           value 100 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = msg.sender
    mem[32] = 5
    if userReferralBonus[address(msg.sender)].field_512:
        idx = 0
        s = stor2[sha3(mem[0 len 64])]
        while idx < 5:
            if not address(s):
                if userReferralBonus[address(msg.sender)].field_0:
                    userReferralBonus[address(msg.sender)].field_0++
                    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                    if stor2.length > -msg.value - 1:
                        revert with 'NH{q', 17
                    if stor2.length + msg.value < stor2.length:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2.length += msg.value
                    emit 0x1f77de32: arg2 << 248, msg.value, 0, msg.sender
                else:
                    userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                    userReferralBonus[address(msg.sender)].field_0++
                    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                    if stor2.length > -msg.value - 1:
                        revert with 'NH{q', 17
                    if stor2.length + msg.value < stor2.length:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2.length += msg.value
                    emit 0x1f77de32: arg2 << 248, msg.value, 1, msg.sender
                stor1 = 1
            if idx >= rEFERRAL_PERCENTS.length:
                revert with 'NH{q', 50
            if not msg.value:
                if userReferralBonus[address(s)].field_1280 > -1:
                    revert with 'NH{q', 17
                if userReferralBonus[address(s)].field_1280 < userReferralBonus[address(s)].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if userReferralBonus[address(s)].field_1536 > -1:
                    revert with 'NH{q', 17
                if userReferralBonus[address(s)].field_1536 < userReferralBonus[address(s)].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if msg.value and rEFERRAL_PERCENTS[idx] > -1 / msg.value:
                    revert with 'NH{q', 17
                if not msg.value:
                    revert with 'NH{q', 18
                if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userReferralBonus[address(s)].field_1280 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                    revert with 'NH{q', 17
                if userReferralBonus[address(s)].field_1280 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(s)].field_1280 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                if userReferralBonus[address(s)].field_1536 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                    revert with 'NH{q', 17
                if userReferralBonus[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
            mem[0] = address(s)
            mem[32] = 5
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = userReferralBonus[address(s)].field_512
            continue 
    else:
        if userReferralBonus[address(arg1)].field_0 > 0:
            if arg1 != msg.sender:
                userReferralBonus[address(msg.sender)].field_512 = arg1
        idx = 0
        s = userReferralBonus[address(msg.sender)].field_512
        while idx < 5:
            if address(s):
                if idx >= 2:
                    revert with 'NH{q', 50
                if userReferralBonus[address(s)][idx].field_768 > -2:
                    revert with 'NH{q', 17
                if userReferralBonus[address(s)][idx].field_768 + 1 < userReferralBonus[address(s)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if idx >= 2:
                    revert with 'NH{q', 50
                userReferralBonus[address(s)][idx].field_768++
                mem[0] = address(s)
                mem[32] = 5
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = userReferralBonus[address(s)].field_512
                continue 
            if userReferralBonus[address(msg.sender)].field_512:
                idx = 0
                s = userReferralBonus[address(msg.sender)].field_512
                while idx < 5:
                    if not address(s):
                        if userReferralBonus[address(msg.sender)].field_0:
                            userReferralBonus[address(msg.sender)].field_0++
                            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                            if stor2.length > -msg.value - 1:
                                revert with 'NH{q', 17
                            if stor2.length + msg.value < stor2.length:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2.length += msg.value
                            emit 0x1f77de32: arg2 << 248, msg.value, 0, msg.sender
                        else:
                            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                            userReferralBonus[address(msg.sender)].field_0++
                            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                            if stor2.length > -msg.value - 1:
                                revert with 'NH{q', 17
                            if stor2.length + msg.value < stor2.length:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2.length += msg.value
                            emit 0x1f77de32: arg2 << 248, msg.value, 1, msg.sender
                        stor1 = 1
                    if idx >= rEFERRAL_PERCENTS.length:
                        revert with 'NH{q', 50
                    if not msg.value:
                        if userReferralBonus[address(s)].field_1280 > -1:
                            revert with 'NH{q', 17
                        if userReferralBonus[address(s)].field_1280 < userReferralBonus[address(s)].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if userReferralBonus[address(s)].field_1536 > -1:
                            revert with 'NH{q', 17
                        if userReferralBonus[address(s)].field_1536 < userReferralBonus[address(s)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if msg.value and rEFERRAL_PERCENTS[idx] > -1 / msg.value:
                            revert with 'NH{q', 17
                        if not msg.value:
                            revert with 'NH{q', 18
                        if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if userReferralBonus[address(s)].field_1280 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                            revert with 'NH{q', 17
                        if userReferralBonus[address(s)].field_1280 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_1280 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        if userReferralBonus[address(s)].field_1536 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                            revert with 'NH{q', 17
                        if userReferralBonus[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    mem[0] = address(s)
                    mem[32] = 5
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = userReferralBonus[address(s)].field_512
                    continue 
            if userReferralBonus[address(msg.sender)].field_0:
                userReferralBonus[address(msg.sender)].field_0++
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                if stor2.length > -msg.value - 1:
                    revert with 'NH{q', 17
                if stor2.length + msg.value < stor2.length:
                    revert with 0, 'SafeMath: addition overflow'
                stor2.length += msg.value
                emit 0x1f77de32: arg2 << 248, msg.value, 0, msg.sender
            else:
                userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                userReferralBonus[address(msg.sender)].field_0++
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                if stor2.length > -msg.value - 1:
                    revert with 'NH{q', 17
                if stor2.length + msg.value < stor2.length:
                    revert with 0, 'SafeMath: addition overflow'
                stor2.length += msg.value
                emit 0x1f77de32: arg2 << 248, msg.value, 1, msg.sender
            stor1 = 1
        if userReferralBonus[address(msg.sender)].field_512:
            idx = 0
            s = userReferralBonus[address(msg.sender)].field_512
            while idx < 5:
                if not address(s):
                    if userReferralBonus[address(msg.sender)].field_0:
                        userReferralBonus[address(msg.sender)].field_0++
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                        if stor2.length > -msg.value - 1:
                            revert with 'NH{q', 17
                        if stor2.length + msg.value < stor2.length:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2.length += msg.value
                        emit 0x1f77de32: arg2 << 248, msg.value, 0, msg.sender
                    else:
                        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                        userReferralBonus[address(msg.sender)].field_0++
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                        if stor2.length > -msg.value - 1:
                            revert with 'NH{q', 17
                        if stor2.length + msg.value < stor2.length:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2.length += msg.value
                        emit 0x1f77de32: arg2 << 248, msg.value, 1, msg.sender
                    stor1 = 1
                if idx >= rEFERRAL_PERCENTS.length:
                    revert with 'NH{q', 50
                if not msg.value:
                    if userReferralBonus[address(s)].field_1280 > -1:
                        revert with 'NH{q', 17
                    if userReferralBonus[address(s)].field_1280 < userReferralBonus[address(s)].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    if userReferralBonus[address(s)].field_1536 > -1:
                        revert with 'NH{q', 17
                    if userReferralBonus[address(s)].field_1536 < userReferralBonus[address(s)].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if msg.value and rEFERRAL_PERCENTS[idx] > -1 / msg.value:
                        revert with 'NH{q', 17
                    if not msg.value:
                        revert with 'NH{q', 18
                    if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userReferralBonus[address(s)].field_1280 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                        revert with 'NH{q', 17
                    if userReferralBonus[address(s)].field_1280 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    userReferralBonus[address(s)].field_1280 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    if userReferralBonus[address(s)].field_1536 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                        revert with 'NH{q', 17
                    if userReferralBonus[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    userReferralBonus[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                mem[0] = address(s)
                mem[32] = 5
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = userReferralBonus[address(s)].field_512
                continue 
    if userReferralBonus[address(msg.sender)].field_0:
        userReferralBonus[address(msg.sender)].field_0++
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
        if stor2.length > -msg.value - 1:
            revert with 'NH{q', 17
        if stor2.length + msg.value < stor2.length:
            revert with 0, 'SafeMath: addition overflow'
        stor2.length += msg.value
        emit 0x1f77de32: arg2 << 248, msg.value, 0, msg.sender
    else:
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        userReferralBonus[address(msg.sender)].field_0++
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
        if stor2.length > -msg.value - 1:
            revert with 'NH{q', 17
        if stor2.length + msg.value < stor2.length:
            revert with 0, 'SafeMath: addition overflow'
        stor2.length += msg.value
        emit 0x1f77de32: arg2 << 248, msg.value, 1, msg.sender
    stor1 = 1
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        if userReferralBonus[address(arg1)][idx].field_0 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[stor5[address(arg1)][idx].field_0].field_0:
            if idx >= userReferralBonus[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 5)
            if userReferralBonus[address(arg1)][idx].field_512 > -1:
                revert with 'NH{q', 17
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                if idx >= userReferralBonus[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if userReferralBonus[address(arg1)][idx].field_0 >= planInfo.length:
                    revert with 'NH{q', 50
                if idx >= userReferralBonus[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if not userReferralBonus[address(arg1)][idx].field_256:
                    if idx >= userReferralBonus[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                    else:
                        if idx >= userReferralBonus[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                else:
                    if userReferralBonus[address(arg1)][idx].field_256 and planInfo[stor5[address(arg1)][idx].field_0].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256:
                        revert with 'NH{q', 17
                    if not userReferralBonus[address(arg1)][idx].field_256:
                        revert with 'NH{q', 18
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor5[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if idx >= userReferralBonus[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(arg1)].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userReferralBonus[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and 0 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(arg1)][idx].field_512 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            if planInfo[stor5[address(arg1)][idx].field_0].field_0 and 24 * 3600 > -1 / planInfo[stor5[address(arg1)][idx].field_0].field_0:
                revert with 'NH{q', 17
            if not planInfo[stor5[address(arg1)][idx].field_0].field_0:
                revert with 'NH{q', 18
            if 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 / planInfo[stor5[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if idx >= userReferralBonus[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 5)
            if userReferralBonus[address(arg1)][idx].field_512 > (-86400 * planInfo[stor5[address(arg1)][idx].field_0].field_0) - 1:
                revert with 'NH{q', 17
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                if idx >= userReferralBonus[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if userReferralBonus[address(arg1)][idx].field_0 >= planInfo.length:
                    revert with 'NH{q', 50
                if idx >= userReferralBonus[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if not userReferralBonus[address(arg1)][idx].field_256:
                    if idx >= userReferralBonus[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                    else:
                        if idx >= userReferralBonus[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                else:
                    if userReferralBonus[address(arg1)][idx].field_256 and planInfo[stor5[address(arg1)][idx].field_0].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256:
                        revert with 'NH{q', 17
                    if not userReferralBonus[address(arg1)][idx].field_256:
                        revert with 'NH{q', 18
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor5[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if idx >= userReferralBonus[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(arg1)].field_256 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userReferralBonus[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(arg1)][idx].field_512 > -1 / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < userReferralBonus[address(msg.sender)].field_0:
        if userReferralBonus[address(msg.sender)][idx].field_0 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[stor5[address(msg.sender)][idx].field_0].field_0:
            if idx >= userReferralBonus[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 5)
            if userReferralBonus[address(msg.sender)][idx].field_512 > -1:
                revert with 'NH{q', 17
            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                if idx >= userReferralBonus[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                if userReferralBonus[address(msg.sender)][idx].field_0 >= planInfo.length:
                    revert with 'NH{q', 50
                if idx >= userReferralBonus[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    if idx >= userReferralBonus[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)].field_256:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(msg.sender)].field_256:
                                    revert with 'NH{q', 17
                    else:
                        if idx >= userReferralBonus[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 5)
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                else:
                    if userReferralBonus[address(msg.sender)][idx].field_256 and planInfo[stor5[address(msg.sender)][idx].field_0].field_256 > -1 / userReferralBonus[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if not userReferralBonus[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 18
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor5[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if idx >= userReferralBonus[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 and userReferralBonus[address(msg.sender)][idx].field_512 - userReferralBonus[address(msg.sender)].field_256 > -1 / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(msg.sender)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(msg.sender)].field_256 > -1 / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userReferralBonus[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 5)
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 and 0 > -1 / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512 > -1 / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            if planInfo[stor5[address(msg.sender)][idx].field_0].field_0 and 24 * 3600 > -1 / planInfo[stor5[address(msg.sender)][idx].field_0].field_0:
                revert with 'NH{q', 17
            if not planInfo[stor5[address(msg.sender)][idx].field_0].field_0:
                revert with 'NH{q', 18
            if 24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 / planInfo[stor5[address(msg.sender)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if idx >= userReferralBonus[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 5)
            if userReferralBonus[address(msg.sender)][idx].field_512 > (-86400 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) - 1:
                revert with 'NH{q', 17
            if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                if idx >= userReferralBonus[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                if userReferralBonus[address(msg.sender)][idx].field_0 >= planInfo.length:
                    revert with 'NH{q', 50
                if idx >= userReferralBonus[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    if idx >= userReferralBonus[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)].field_256:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(msg.sender)].field_256:
                                    revert with 'NH{q', 17
                    else:
                        if idx >= userReferralBonus[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 5)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                else:
                    if userReferralBonus[address(msg.sender)][idx].field_256 and planInfo[stor5[address(msg.sender)][idx].field_0].field_256 > -1 / userReferralBonus[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if not userReferralBonus[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 18
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor5[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if idx >= userReferralBonus[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 and userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) - userReferralBonus[address(msg.sender)].field_256 > -1 / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(msg.sender)].field_256:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(msg.sender)].field_256 > -1 / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userReferralBonus[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 5)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 and 24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 > -1 / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 and block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512 > -1 / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if userReferralBonus[address(msg.sender)].field_1280 <= 0:
        revert with 0, 'User has no dividends'
    userReferralBonus[address(msg.sender)].field_1280 = 0
    if 0 > -userReferralBonus[address(msg.sender)].field_1280 - 1:
        revert with 'NH{q', 17
    if userReferralBonus[address(msg.sender)].field_1280 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userReferralBonus[address(msg.sender)].field_1280 <= 0:
        revert with 0, 'User has no dividends'
    if eth.balance(this.address) >= userReferralBonus[address(msg.sender)].field_1280:
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        if userReferralBonus[address(msg.sender)].field_1792 > -userReferralBonus[address(msg.sender)].field_1280 - 1:
            revert with 'NH{q', 17
        if userReferralBonus[address(msg.sender)].field_1792 + userReferralBonus[address(msg.sender)].field_1280 < userReferralBonus[address(msg.sender)].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_1792 += userReferralBonus[address(msg.sender)].field_1280
        call msg.sender with:
           value userReferralBonus[address(msg.sender)].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(userReferralBonus[address(msg.sender)].field_1280, msg.sender);
    else:
        if eth.balance(this.address) > userReferralBonus[address(msg.sender)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if userReferralBonus[address(msg.sender)].field_1280 < eth.balance(this.address):
            revert with 'NH{q', 17
        userReferralBonus[address(msg.sender)].field_1280 -= eth.balance(this.address)
        if userReferralBonus[address(msg.sender)].field_1536 > -userReferralBonus[address(msg.sender)].field_1280 - 1:
            revert with 'NH{q', 17
        if userReferralBonus[address(msg.sender)].field_1536 + userReferralBonus[address(msg.sender)].field_1280 < userReferralBonus[address(msg.sender)].field_1536:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_1536 += userReferralBonus[address(msg.sender)].field_1280
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        if userReferralBonus[address(msg.sender)].field_1792 > -eth.balance(this.address) - 1:
            revert with 'NH{q', 17
        if userReferralBonus[address(msg.sender)].field_1792 + eth.balance(this.address) < userReferralBonus[address(msg.sender)].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_1792 += eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(eth.balance(this.address), msg.sender);
    stor1 = 1
}



}
