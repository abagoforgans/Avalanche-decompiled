contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 100

const PERCENT_STEP = 0

const WITHDRAW_FEE = 1000

const INVEST_MIN_AMOUNT = 10^18


array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
array of address stor2;
array of struct percent;
mapping of struct userDepositInfo;
uint256 startUNIX;
address commissionWalletAddress;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_768, 
           userDepositInfo[address(arg1)].field_1024,
           userDepositInfo[address(arg1)].field_1280
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
            require idx < userDepositInfo[address(arg1)].field_0
            require idx < userDepositInfo[address(arg1)].field_0
            if userDepositInfo[address(arg1)][idx].field_0 >= 3:
                mem[0] = sha3(address(arg1), 4)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_1280:
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_512:
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userDepositInfo[address(arg1)][idx].field_512
                    if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_512 != userDepositInfo[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userDepositInfo[address(arg1)].field_1536 < userDepositInfo[address(arg1)].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    return userDepositInfo[address(arg1)].field_1536
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_512
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_1792
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function totalRefBonus() {
    return stor2.length
}

function totalStaked() {
    return totalStaked
}

function commissionWallet() {
    return commissionWalletAddress
}

function getPercent(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < percent.length
    return percent[2 * uint8(arg1)].field_256
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_0
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < percent.length
    return percent[2 * uint8(arg1)].field_0, percent[2 * uint8(arg1)].field_256
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userDepositInfo[address(arg1)].field_0
    return userDepositInfo[address(arg1)][arg2].field_0, 
           userDepositInfo[address(arg1)][arg2].field_256,
           userDepositInfo[address(arg1)][arg2].field_512,
           userDepositInfo[address(arg1)][arg2].field_768,
           userDepositInfo[address(arg1)][arg2].field_1024,
           userDepositInfo[address(arg1)][arg2].field_1280
}

function startUNIX() {
    return startUNIX
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_256
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_1536
}

function _fallback() payable {
    revert
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    if userDepositInfo[address(arg1)].field_1536 > userDepositInfo[address(arg1)].field_1792:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userDepositInfo[address(arg1)].field_1792 - userDepositInfo[address(arg1)].field_1536)
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        require idx < userDepositInfo[address(arg1)].field_0
        if s + userDepositInfo[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_512
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function getResult(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < percent.length
    require arg1 < percent.length
    if arg1 >= 3:
        if not percent[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return percent[2 * uint8(arg1)].field_256, 0, block.timestamp
        require percent[2 * uint8(arg1)].field_0
        if 24 * 3600 * percent[2 * uint8(arg1)].field_0 / percent[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * percent[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return percent[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * percent[2 * uint8(arg1)].field_0)
    if not arg2:
        require arg1 < percent.length
        if not percent[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return percent[2 * uint8(arg1)].field_256, 0, block.timestamp
        require percent[2 * uint8(arg1)].field_0
        if 24 * 3600 * percent[2 * uint8(arg1)].field_0 / percent[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * percent[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return percent[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * percent[2 * uint8(arg1)].field_0)
    require arg2
    if arg2 * percent[2 * uint8(arg1)].field_256 / arg2 != percent[2 * uint8(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2 * percent[2 * uint8(arg1)].field_256 / 1000:
        require arg1 < percent.length
        if not percent[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return percent[2 * uint8(arg1)].field_256, 0, block.timestamp
        require percent[2 * uint8(arg1)].field_0
        if 24 * 3600 * percent[2 * uint8(arg1)].field_0 / percent[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * percent[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return percent[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * percent[2 * uint8(arg1)].field_0)
    require arg2 * percent[2 * uint8(arg1)].field_256 / 1000
    if arg2 * percent[2 * uint8(arg1)].field_256 / 1000 * percent[2 * uint8(arg1)].field_0 / arg2 * percent[2 * uint8(arg1)].field_256 / 1000 != percent[2 * uint8(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < percent.length
    if not percent[2 * uint8(arg1)].field_0:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return percent[2 * uint8(arg1)].field_256, 
               arg2 * percent[2 * uint8(arg1)].field_256 / 1000 * percent[2 * uint8(arg1)].field_0,
               block.timestamp
    require percent[2 * uint8(arg1)].field_0
    if 24 * 3600 * percent[2 * uint8(arg1)].field_0 / percent[2 * uint8(arg1)].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if block.timestamp + (24 * 3600 * percent[2 * uint8(arg1)].field_0) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return percent[2 * uint8(arg1)].field_256, 
           arg2 * percent[2 * uint8(arg1)].field_256 / 1000 * percent[2 * uint8(arg1)].field_0,
           block.timestamp + (24 * 3600 * percent[2 * uint8(arg1)].field_0)
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
            require idx < userDepositInfo[address(arg1)].field_0
            require idx < userDepositInfo[address(arg1)].field_0
            if userDepositInfo[address(arg1)][idx].field_0 >= 3:
                mem[0] = sha3(address(arg1), 4)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_1280:
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_512:
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userDepositInfo[address(arg1)][idx].field_512
                    if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_512 != userDepositInfo[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    idx = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 4)
        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
            require idx < userDepositInfo[address(msg.sender)].field_0
            require idx < userDepositInfo[address(msg.sender)].field_0
            if userDepositInfo[address(msg.sender)][idx].field_0 >= 3:
                mem[0] = sha3(address(msg.sender), 4)
                if block.timestamp > userDepositInfo[address(msg.sender)][idx].field_1280:
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userDepositInfo[address(msg.sender)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(msg.sender)][idx].field_512:
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)].field_256:
                        if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(msg.sender)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            if userDepositInfo[address(msg.sender)][idx].field_1024 < userDepositInfo[address(msg.sender)][idx].field_1280:
                                if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_256 < block.timestamp:
                                if userDepositInfo[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
                                if userDepositInfo[address(msg.sender)].field_256 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userDepositInfo[address(msg.sender)][idx].field_512
                    if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / userDepositInfo[address(msg.sender)][idx].field_512 != userDepositInfo[address(msg.sender)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)].field_256:
                        if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(msg.sender)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            if userDepositInfo[address(msg.sender)][idx].field_1024 < userDepositInfo[address(msg.sender)][idx].field_1280:
                                if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_256 < block.timestamp:
                                if userDepositInfo[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
                                if userDepositInfo[address(msg.sender)].field_256 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userDepositInfo[address(msg.sender)].field_1536 <= 0:
        revert with 0, 'User has no dividends'
    userDepositInfo[address(msg.sender)].field_1536 = 0
    if userDepositInfo[address(msg.sender)].field_1536 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userDepositInfo[address(msg.sender)].field_1536 <= 0:
        revert with 0, 'User has no dividends'
    userDepositInfo[address(msg.sender)].field_256 = block.timestamp
    if eth.balance(this.address) >= userDepositInfo[address(msg.sender)].field_1536:
        call msg.sender with:
           value userDepositInfo[address(msg.sender)].field_1536 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(userDepositInfo[address(msg.sender)].field_1536, msg.sender);
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(eth.balance(this.address), msg.sender);
}

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp <= startUNIX:
        revert with 0, '***** NOT LAUNCHED YET *****'
    if msg.value < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe2a2a2a2a2a20544845204d494e20414d4f554e5420495320312041564158202a2a2a2a,
                    mem[200 len 28]
    if arg2 >= 3:
        revert with 0, '***** INVALID PLAN *****'
    if not msg.value:
        call commissionWalletAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FeePayed(0, msg.sender);
    else:
        require msg.value
        if 100 * msg.value / msg.value != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call commissionWalletAddress with:
           value 100 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FeePayed((100 * msg.value / 1000), msg.sender);
    mem[0] = msg.sender
    mem[32] = 4
    if userDepositInfo[address(msg.sender)].field_512:
        idx = 0
        s = stor2[sha3(mem[0 len 64])]
        while idx < 3:
            if address(s):
                require idx < rEFERRAL_PERCENTS.length
                if not msg.value:
                    if userDepositInfo[address(s)].field_1536 < userDepositInfo[address(s)].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    if userDepositInfo[address(s)].field_1792 < userDepositInfo[address(s)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[96] = 0
                    emit RefBonus(0, address(s), msg.sender, idx);
                else:
                    require msg.value
                    if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userDepositInfo[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userDepositInfo[address(s)].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    if userDepositInfo[address(s)].field_1792 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userDepositInfo[address(s)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(s)].field_1792 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                mem[0] = address(s)
                mem[32] = 4
                idx = idx + 1
                s = userDepositInfo[address(s)].field_512
                continue 
            if not userDepositInfo[address(msg.sender)].field_0:
                userDepositInfo[address(msg.sender)].field_256 = block.timestamp
                emit Newbie(msg.sender);
            require arg2 < percent.length
            require arg2 < percent.length
            if arg2 >= 3:
                if not percent[2 * uint8(arg2)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(msg.sender)].field_0++
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                    if totalStaked + msg.value < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += msg.value
                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                else:
                    require percent[2 * uint8(arg2)].field_0
                    if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(msg.sender)].field_0++
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                    if totalStaked + msg.value < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += msg.value
                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
            else:
                if not msg.value:
                    require arg2 < percent.length
                    if not percent[2 * uint8(arg2)].field_0:
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked + msg.value < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += msg.value
                        emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                    else:
                        require percent[2 * uint8(arg2)].field_0
                        if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                        if totalStaked + msg.value < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += msg.value
                        emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                else:
                    require msg.value
                    if msg.value * percent[2 * uint8(arg2)].field_256 / msg.value != percent[2 * uint8(arg2)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not msg.value * percent[2 * uint8(arg2)].field_256 / 1000:
                        require arg2 < percent.length
                        if not percent[2 * uint8(arg2)].field_0:
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                        else:
                            require percent[2 * uint8(arg2)].field_0
                            if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                    else:
                        require msg.value * percent[2 * uint8(arg2)].field_256 / 1000
                        if msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0 / msg.value * percent[2 * uint8(arg2)].field_256 / 1000 != percent[2 * uint8(arg2)].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require arg2 < percent.length
                        if not percent[2 * uint8(arg2)].field_0:
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp, msg.sender);
                        else:
                            require percent[2 * uint8(arg2)].field_0
                            if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
    else:
        if userDepositInfo[address(arg1)].field_0 > 0:
            if arg1 != msg.sender:
                userDepositInfo[address(msg.sender)].field_512 = arg1
        idx = 0
        s = userDepositInfo[address(msg.sender)].field_512
        while idx < 3:
            if address(s):
                require idx < 3
                if userDepositInfo[address(s)][idx].field_768 + 1 < userDepositInfo[address(s)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 3
                userDepositInfo[address(s)][idx].field_768++
                mem[0] = address(s)
                mem[32] = 4
                idx = idx + 1
                s = userDepositInfo[address(s)].field_512
                continue 
            if userDepositInfo[address(msg.sender)].field_512:
                idx = 0
                s = userDepositInfo[address(msg.sender)].field_512
                while idx < 3:
                    if address(s):
                        require idx < rEFERRAL_PERCENTS.length
                        if not msg.value:
                            if userDepositInfo[address(s)].field_1536 < userDepositInfo[address(s)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            if userDepositInfo[address(s)].field_1792 < userDepositInfo[address(s)].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[96] = 0
                            emit RefBonus(0, address(s), msg.sender, idx);
                        else:
                            require msg.value
                            if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userDepositInfo[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userDepositInfo[address(s)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                            if userDepositInfo[address(s)].field_1792 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userDepositInfo[address(s)].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(s)].field_1792 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                            mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                            emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                        mem[0] = address(s)
                        mem[32] = 4
                        idx = idx + 1
                        s = userDepositInfo[address(s)].field_512
                        continue 
                    if not userDepositInfo[address(msg.sender)].field_0:
                        userDepositInfo[address(msg.sender)].field_256 = block.timestamp
                        emit Newbie(msg.sender);
                    require arg2 < percent.length
                    require arg2 < percent.length
                    if arg2 >= 3:
                        if not percent[2 * uint8(arg2)].field_0:
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                        else:
                            require percent[2 * uint8(arg2)].field_0
                            if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                    else:
                        if not msg.value:
                            require arg2 < percent.length
                            if not percent[2 * uint8(arg2)].field_0:
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked + msg.value < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += msg.value
                                emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                            else:
                                require percent[2 * uint8(arg2)].field_0
                                if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                                if totalStaked + msg.value < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += msg.value
                                emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                        else:
                            require msg.value
                            if msg.value * percent[2 * uint8(arg2)].field_256 / msg.value != percent[2 * uint8(arg2)].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not msg.value * percent[2 * uint8(arg2)].field_256 / 1000:
                                require arg2 < percent.length
                                if not percent[2 * uint8(arg2)].field_0:
                                    if block.timestamp < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userDepositInfo[address(msg.sender)].field_0++
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                    if totalStaked + msg.value < totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStaked += msg.value
                                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                                else:
                                    require percent[2 * uint8(arg2)].field_0
                                    if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userDepositInfo[address(msg.sender)].field_0++
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                                    if totalStaked + msg.value < totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStaked += msg.value
                                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                            else:
                                require msg.value * percent[2 * uint8(arg2)].field_256 / 1000
                                if msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0 / msg.value * percent[2 * uint8(arg2)].field_256 / 1000 != percent[2 * uint8(arg2)].field_0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require arg2 < percent.length
                                if not percent[2 * uint8(arg2)].field_0:
                                    if block.timestamp < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userDepositInfo[address(msg.sender)].field_0++
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                    if totalStaked + msg.value < totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStaked += msg.value
                                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp, msg.sender);
                                else:
                                    require percent[2 * uint8(arg2)].field_0
                                    if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userDepositInfo[address(msg.sender)].field_0++
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                                    if totalStaked + msg.value < totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStaked += msg.value
                                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
            if not userDepositInfo[address(msg.sender)].field_0:
                userDepositInfo[address(msg.sender)].field_256 = block.timestamp
                emit Newbie(msg.sender);
            require arg2 < percent.length
            require arg2 < percent.length
            if arg2 >= 3:
                if not percent[2 * uint8(arg2)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(msg.sender)].field_0++
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                    if totalStaked + msg.value < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += msg.value
                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                else:
                    require percent[2 * uint8(arg2)].field_0
                    if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(msg.sender)].field_0++
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                    if totalStaked + msg.value < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += msg.value
                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
            else:
                if not msg.value:
                    require arg2 < percent.length
                    if not percent[2 * uint8(arg2)].field_0:
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked + msg.value < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += msg.value
                        emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                    else:
                        require percent[2 * uint8(arg2)].field_0
                        if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                        if totalStaked + msg.value < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += msg.value
                        emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                else:
                    require msg.value
                    if msg.value * percent[2 * uint8(arg2)].field_256 / msg.value != percent[2 * uint8(arg2)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not msg.value * percent[2 * uint8(arg2)].field_256 / 1000:
                        require arg2 < percent.length
                        if not percent[2 * uint8(arg2)].field_0:
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                        else:
                            require percent[2 * uint8(arg2)].field_0
                            if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                    else:
                        require msg.value * percent[2 * uint8(arg2)].field_256 / 1000
                        if msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0 / msg.value * percent[2 * uint8(arg2)].field_256 / 1000 != percent[2 * uint8(arg2)].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require arg2 < percent.length
                        if not percent[2 * uint8(arg2)].field_0:
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp, msg.sender);
                        else:
                            require percent[2 * uint8(arg2)].field_0
                            if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
        if userDepositInfo[address(msg.sender)].field_512:
            idx = 0
            s = userDepositInfo[address(msg.sender)].field_512
            while idx < 3:
                if address(s):
                    require idx < rEFERRAL_PERCENTS.length
                    if not msg.value:
                        if userDepositInfo[address(s)].field_1536 < userDepositInfo[address(s)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        if userDepositInfo[address(s)].field_1792 < userDepositInfo[address(s)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[96] = 0
                        emit RefBonus(0, address(s), msg.sender, idx);
                    else:
                        require msg.value
                        if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userDepositInfo[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userDepositInfo[address(s)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        if userDepositInfo[address(s)].field_1792 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userDepositInfo[address(s)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(s)].field_1792 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                    mem[0] = address(s)
                    mem[32] = 4
                    idx = idx + 1
                    s = userDepositInfo[address(s)].field_512
                    continue 
                if not userDepositInfo[address(msg.sender)].field_0:
                    userDepositInfo[address(msg.sender)].field_256 = block.timestamp
                    emit Newbie(msg.sender);
                require arg2 < percent.length
                require arg2 < percent.length
                if arg2 >= 3:
                    if not percent[2 * uint8(arg2)].field_0:
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked + msg.value < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += msg.value
                        emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                    else:
                        require percent[2 * uint8(arg2)].field_0
                        if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                        if totalStaked + msg.value < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += msg.value
                        emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                else:
                    if not msg.value:
                        require arg2 < percent.length
                        if not percent[2 * uint8(arg2)].field_0:
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                        else:
                            require percent[2 * uint8(arg2)].field_0
                            if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                            if totalStaked + msg.value < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += msg.value
                            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                    else:
                        require msg.value
                        if msg.value * percent[2 * uint8(arg2)].field_256 / msg.value != percent[2 * uint8(arg2)].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not msg.value * percent[2 * uint8(arg2)].field_256 / 1000:
                            require arg2 < percent.length
                            if not percent[2 * uint8(arg2)].field_0:
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked + msg.value < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += msg.value
                                emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                            else:
                                require percent[2 * uint8(arg2)].field_0
                                if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                                if totalStaked + msg.value < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += msg.value
                                emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
                        else:
                            require msg.value * percent[2 * uint8(arg2)].field_256 / 1000
                            if msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0 / msg.value * percent[2 * uint8(arg2)].field_256 / 1000 != percent[2 * uint8(arg2)].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require arg2 < percent.length
                            if not percent[2 * uint8(arg2)].field_0:
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked + msg.value < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += msg.value
                                emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp, msg.sender);
                            else:
                                require percent[2 * uint8(arg2)].field_0
                                if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                                if totalStaked + msg.value < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += msg.value
                                emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
    if not userDepositInfo[address(msg.sender)].field_0:
        userDepositInfo[address(msg.sender)].field_256 = block.timestamp
        emit Newbie(msg.sender);
    require arg2 < percent.length
    require arg2 < percent.length
    if arg2 >= 3:
        if not percent[2 * uint8(arg2)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            userDepositInfo[address(msg.sender)].field_0++
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
            if totalStaked + msg.value < totalStaked:
                revert with 0, 'SafeMath: addition overflow'
            totalStaked += msg.value
            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
        else:
            require percent[2 * uint8(arg2)].field_0
            if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            userDepositInfo[address(msg.sender)].field_0++
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
            if totalStaked + msg.value < totalStaked:
                revert with 0, 'SafeMath: addition overflow'
            totalStaked += msg.value
            emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
    else:
        if not msg.value:
            require arg2 < percent.length
            if not percent[2 * uint8(arg2)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                userDepositInfo[address(msg.sender)].field_0++
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                if totalStaked + msg.value < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked += msg.value
                emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
            else:
                require percent[2 * uint8(arg2)].field_0
                if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                userDepositInfo[address(msg.sender)].field_0++
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                if totalStaked + msg.value < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked += msg.value
                emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
        else:
            require msg.value
            if msg.value * percent[2 * uint8(arg2)].field_256 / msg.value != percent[2 * uint8(arg2)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not msg.value * percent[2 * uint8(arg2)].field_256 / 1000:
                require arg2 < percent.length
                if not percent[2 * uint8(arg2)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(msg.sender)].field_0++
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                    if totalStaked + msg.value < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += msg.value
                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp, msg.sender);
                else:
                    require percent[2 * uint8(arg2)].field_0
                    if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(msg.sender)].field_0++
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                    if totalStaked + msg.value < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += msg.value
                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, 0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
            else:
                require msg.value * percent[2 * uint8(arg2)].field_256 / 1000
                if msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0 / msg.value * percent[2 * uint8(arg2)].field_256 / 1000 != percent[2 * uint8(arg2)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require arg2 < percent.length
                if not percent[2 * uint8(arg2)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(msg.sender)].field_0++
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                    if totalStaked + msg.value < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += msg.value
                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp, msg.sender);
                else:
                    require percent[2 * uint8(arg2)].field_0
                    if 24 * 3600 * percent[2 * uint8(arg2)].field_0 / percent[2 * uint8(arg2)].field_0 != 24 * 3600:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2a536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userDepositInfo[address(msg.sender)].field_0++
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg2
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = percent[2 * uint8(arg2)].field_256
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = msg.value
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                    userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0)
                    if totalStaked + msg.value < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += msg.value
                    emit NewDeposit(arg2 << 248, percent[2 * uint8(arg2)].field_256, msg.value, msg.value * percent[2 * uint8(arg2)].field_256 / 1000 * percent[2 * uint8(arg2)].field_0, block.timestamp, block.timestamp + (24 * 3600 * percent[2 * uint8(arg2)].field_0), msg.sender);
}



}
