contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PERCENT_STEP = 3

const INVEST_MIN_AMOUNT = 10^17

const PENALTY_STEP = 500


address owner;
array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
uint256 totalRefBonus;
array of struct stor4;
mapping of struct userReferralBonus;
uint256 startUNIX;
address devAddress;
address proAddress;

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_1280:
            require idx < userReferralBonus[address(arg1)].field_0
            require idx < userReferralBonus[address(arg1)].field_0
            if userReferralBonus[address(arg1)][idx].field_0 >= 4:
                mem[0] = sha3(address(arg1), 5)
                if block.timestamp > userReferralBonus[address(arg1)][idx].field_1280:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userReferralBonus[address(arg1)][idx].field_512:
                    require idx < userReferralBonus[address(arg1)].field_0
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_1024 > userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_1024 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userReferralBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 5)
                            if userReferralBonus[address(arg1)][idx].field_1024 < userReferralBonus[address(arg1)][idx].field_1280:
                                if userReferralBonus[address(arg1)][idx].field_1024 > userReferralBonus[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userReferralBonus[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userReferralBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 5)
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_1280:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_512
                    if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / userReferralBonus[address(arg1)][idx].field_512 != userReferralBonus[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_1024 > userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_1024 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_1024 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_1024 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userReferralBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 5)
                            if userReferralBonus[address(arg1)][idx].field_1024 < userReferralBonus[address(arg1)][idx].field_1280:
                                if userReferralBonus[address(arg1)][idx].field_1024 > userReferralBonus[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_1280 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_1024 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_1280 - userReferralBonus[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_1280 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_1024 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userReferralBonus[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userReferralBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 5)
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_1280:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_1280 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_1280 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_1280 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(arg1)].field_1024 < userReferralBonus[address(arg1)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)].field_1024
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_512
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1280
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function totalRefBonus() {
    return totalRefBonus
}

function totalStaked() {
    return totalStaked
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_0
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userReferralBonus[address(arg1)].field_0
    return userReferralBonus[address(arg1)][arg2].field_0, 
           userReferralBonus[address(arg1)][arg2].field_256,
           userReferralBonus[address(arg1)][arg2].field_512,
           userReferralBonus[address(arg1)][arg2].field_768,
           userReferralBonus[address(arg1)][arg2].field_1024,
           userReferralBonus[address(arg1)][arg2].field_1280
}

function startUNIX() {
    return startUNIX
}

function pro() {
    return proAddress
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_256
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1024
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    if userReferralBonus[address(arg1)].field_1024 > userReferralBonus[address(arg1)].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userReferralBonus[address(arg1)].field_1280 - userReferralBonus[address(arg1)].field_1024)
}

function transferOwnership(address arg1) {
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

function getPercent(uint8 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp <= startUNIX:
        require arg1 < stor4.length
        return stor4[2 * uint8(arg1)].field_256
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (3 * block.timestamp) - (3 * startUNIX) / 3 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < stor4.length
    if stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600) < stor4[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600))
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    if block.timestamp <= startUNIX:
        require arg1 < stor4.length
        return stor4[2 * uint8(arg1)].field_0, stor4[2 * uint8(arg1)].field_256
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (3 * block.timestamp) - (3 * startUNIX) / 3 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < stor4.length
    if stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600) < stor4[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return stor4[2 * uint8(arg1)].field_0, 
           stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600)
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require idx < userReferralBonus[address(arg1)].field_0
        if s + userReferralBonus[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_512
        continue 
    return (s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0)
}

function forceWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= userReferralBonus[address(msg.sender)].field_0:
        revert with 0, 'Invalid index'
    if userReferralBonus[address(msg.sender)][arg1].field_0 < 4:
        revert with 0, 'force withdraw not valid'
    require arg1 < userReferralBonus[address(msg.sender)].field_0
    if userReferralBonus[address(msg.sender)][arg1].field_0 >= 8:
        revert with 0, 'force withdraw not valid'
    require arg1 < userReferralBonus[address(msg.sender)].field_0
    if userReferralBonus[address(msg.sender)][arg1].field_1280 <= block.timestamp:
        revert with 0, 'you can not force withdraw'
    require arg1 < userReferralBonus[address(msg.sender)].field_0
    if not userReferralBonus[address(msg.sender)][arg1].field_512:
        if 0 > userReferralBonus[address(msg.sender)][arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value userReferralBonus[address(msg.sender)][arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require userReferralBonus[address(msg.sender)].field_0 - 1 < userReferralBonus[address(msg.sender)].field_0
        require arg1 < userReferralBonus[address(msg.sender)].field_0
        userReferralBonus[address(msg.sender)][arg1].field_0 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_256 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_512 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_768 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_1024 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_1280 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        require userReferralBonus[address(msg.sender)].field_0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)].field_0--
        emit ForceWithdrawn(userReferralBonus[address(msg.sender)][arg1].field_512, 0, msg.sender);
    else:
        require userReferralBonus[address(msg.sender)][arg1].field_512
        if 500 * userReferralBonus[address(msg.sender)][arg1].field_512 / userReferralBonus[address(msg.sender)][arg1].field_512 != 500:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 500 * userReferralBonus[address(msg.sender)][arg1].field_512 / 1000 > userReferralBonus[address(msg.sender)][arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value userReferralBonus[address(msg.sender)][arg1].field_512 - (500 * userReferralBonus[address(msg.sender)][arg1].field_512 / 1000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require userReferralBonus[address(msg.sender)].field_0 - 1 < userReferralBonus[address(msg.sender)].field_0
        require arg1 < userReferralBonus[address(msg.sender)].field_0
        userReferralBonus[address(msg.sender)][arg1].field_0 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_256 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_512 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_768 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_1024 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        userReferralBonus[address(msg.sender)][arg1].field_1280 = userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0
        require userReferralBonus[address(msg.sender)].field_0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = 0
        userReferralBonus[address(msg.sender)].field_0--
        emit ForceWithdrawn(userReferralBonus[address(msg.sender)][arg1].field_512, 500 * userReferralBonus[address(msg.sender)][arg1].field_512 / 1000, msg.sender);
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_1280:
            require idx < userReferralBonus[address(arg1)].field_0
            require idx < userReferralBonus[address(arg1)].field_0
            if userReferralBonus[address(arg1)][idx].field_0 >= 4:
                mem[0] = sha3(address(arg1), 5)
                if block.timestamp > userReferralBonus[address(arg1)][idx].field_1280:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userReferralBonus[address(arg1)][idx].field_512:
                    require idx < userReferralBonus[address(arg1)].field_0
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_1024 > userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_1024 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userReferralBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 5)
                            if userReferralBonus[address(arg1)][idx].field_1024 < userReferralBonus[address(arg1)][idx].field_1280:
                                if userReferralBonus[address(arg1)][idx].field_1024 > userReferralBonus[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userReferralBonus[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userReferralBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 5)
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_1280:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_512
                    if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / userReferralBonus[address(arg1)][idx].field_512 != userReferralBonus[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_1024 > userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_1024 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_1024 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_1024 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userReferralBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 5)
                            if userReferralBonus[address(arg1)][idx].field_1024 < userReferralBonus[address(arg1)][idx].field_1280:
                                if userReferralBonus[address(arg1)][idx].field_1024 > userReferralBonus[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_1280 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_1024 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_1280 - userReferralBonus[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_1280 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_1024 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userReferralBonus[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userReferralBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 5)
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_1280:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_1280 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_1280 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_1280 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    idx = 0
    while idx < userReferralBonus[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 5)
        if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_1280:
            require idx < userReferralBonus[address(msg.sender)].field_0
            require idx < userReferralBonus[address(msg.sender)].field_0
            if userReferralBonus[address(msg.sender)][idx].field_0 >= 4:
                mem[0] = sha3(address(msg.sender), 5)
                if block.timestamp > userReferralBonus[address(msg.sender)][idx].field_1280:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userReferralBonus[address(msg.sender)][idx].field_512:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_1024 > userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_1024 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userReferralBonus[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 5)
                            if userReferralBonus[address(msg.sender)][idx].field_1024 < userReferralBonus[address(msg.sender)][idx].field_1280:
                                if userReferralBonus[address(msg.sender)][idx].field_1024 > userReferralBonus[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userReferralBonus[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userReferralBonus[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 5)
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_1280:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(msg.sender)][idx].field_512
                    if userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / userReferralBonus[address(msg.sender)][idx].field_512 != userReferralBonus[address(msg.sender)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_1024 > userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_1024 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_1024 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_1024 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userReferralBonus[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 5)
                            if userReferralBonus[address(msg.sender)][idx].field_1024 < userReferralBonus[address(msg.sender)][idx].field_1280:
                                if userReferralBonus[address(msg.sender)][idx].field_1024 > userReferralBonus[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_1280 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_1024 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_1280 - userReferralBonus[address(msg.sender)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_1280 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_1024 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userReferralBonus[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userReferralBonus[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 5)
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_1280:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_1280 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_1280 - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_1280 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(msg.sender)].field_1024 <= 0:
        revert with 0, 'User has no dividends'
    userReferralBonus[address(msg.sender)].field_1024 = 0
    if userReferralBonus[address(msg.sender)].field_1024 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userReferralBonus[address(msg.sender)].field_1024 <= 0:
        revert with 0, 'User has no dividends'
    userReferralBonus[address(msg.sender)].field_256 = block.timestamp
    if eth.balance(this.address) >= userReferralBonus[address(msg.sender)].field_1024:
        call msg.sender with:
           value userReferralBonus[address(msg.sender)].field_1024 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(userReferralBonus[address(msg.sender)].field_1024, msg.sender);
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(eth.balance(this.address), msg.sender);
}

function getResult(uint8 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if block.timestamp <= startUNIX:
        require arg1 < stor4.length
        require arg1 < stor4.length
        if arg1 < 4:
            if not arg2:
                require arg1 < stor4.length
                if not stor4[2 * uint8(arg1)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp
                require stor4[2 * uint8(arg1)].field_0
                if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
            require arg2
            if arg2 * stor4[2 * uint8(arg1)].field_256 / arg2 != stor4[2 * uint8(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg2 * stor4[2 * uint8(arg1)].field_256 / 1000:
                require arg1 < stor4.length
                if not stor4[2 * uint8(arg1)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp
                require stor4[2 * uint8(arg1)].field_0
                if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
            require arg2 * stor4[2 * uint8(arg1)].field_256 / 1000
            if arg2 * stor4[2 * uint8(arg1)].field_256 / 1000 * stor4[2 * uint8(arg1)].field_0 / arg2 * stor4[2 * uint8(arg1)].field_256 / 1000 != stor4[2 * uint8(arg1)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require arg1 < stor4.length
            if not stor4[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor4[2 * uint8(arg1)].field_256, 
                       arg2 * stor4[2 * uint8(arg1)].field_256 / 1000 * stor4[2 * uint8(arg1)].field_0,
                       block.timestamp
            require stor4[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256, 
                   arg2 * stor4[2 * uint8(arg1)].field_256 / 1000 * stor4[2 * uint8(arg1)].field_0,
                   block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
        if arg1 >= 8:
            if not stor4[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp
            require stor4[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
        if var31003 >= stor4[2 * uint8(arg1)].field_0:
            require arg1 < stor4.length
            if not stor4[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp
            require stor4[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
        if arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            require arg1 < stor4.length
            mem[0] = 4
            if var39007 + 1 < stor4[2 * uint8(arg1)].field_0:
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                var39007 = var39007 + 1
                continue 
            require arg1 < stor4.length
            if not stor4[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp
            require stor4[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
        require arg2
        if arg2 * stor4[2 * uint8(arg1)].field_256 / arg2 != stor4[2 * uint8(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 * stor4[2 * uint8(arg1)].field_256 / 1000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < stor4.length
        mem[0] = 4
        if var39007 + 1 < stor4[2 * uint8(arg1)].field_0:
            if arg2 + (arg2 * stor4[2 * uint8(arg1)].field_256 / 1000) < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var39007 = var39007 + 1
            continue 
        require arg1 < stor4.length
        if not stor4[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256, arg2 * stor4[2 * uint8(arg1)].field_256 / 1000, block.timestamp
        require stor4[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor4[2 * uint8(arg1)].field_256, 
               arg2 * stor4[2 * uint8(arg1)].field_256 / 1000,
               block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (3 * block.timestamp) - (3 * startUNIX) / 3 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < stor4.length
    if stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600) < stor4[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < stor4.length
    if arg1 < 4:
        if not arg2:
            require arg1 < stor4.length
            if not stor4[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
            require stor4[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
        require arg2
        if (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / arg2 != stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000:
            require arg1 < stor4.length
            if not stor4[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
            require stor4[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
        require (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000
        if (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 * stor4[2 * uint8(arg1)].field_0 / (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 != stor4[2 * uint8(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require arg1 < stor4.length
        if not stor4[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
                   (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 * stor4[2 * uint8(arg1)].field_0,
                   block.timestamp
        require stor4[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 * stor4[2 * uint8(arg1)].field_0,
               block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
    if arg1 >= 8:
        if not stor4[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
        require stor4[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
    if var47003 >= stor4[2 * uint8(arg1)].field_0:
        require arg1 < stor4.length
        if not stor4[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
        require stor4[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
    if arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        require arg1 < stor4.length
        mem[0] = 4
        if var55007 + 1 < stor4[2 * uint8(arg1)].field_0:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var55007 = var55007 + 1
            continue 
        require arg1 < stor4.length
        if not stor4[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
        require stor4[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
    require arg2
    if (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / arg2 != stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < stor4.length
    mem[0] = 4
    if var55007 + 1 < stor4[2 * uint8(arg1)].field_0:
        if arg2 + ((stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000) < arg2:
            revert with 0, 'SafeMath: addition overflow'
        var55007 = var55007 + 1
        continue 
    require arg1 < stor4.length
    if not stor4[2 * uint8(arg1)].field_0:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000,
               block.timestamp
    require stor4[2 * uint8(arg1)].field_0
    if 24 * 3600 * stor4[2 * uint8(arg1)].field_0 / stor4[2 * uint8(arg1)].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return stor4[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
           (stor4[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000,
           block.timestamp + (24 * 3600 * stor4[2 * uint8(arg1)].field_0)
}



}
