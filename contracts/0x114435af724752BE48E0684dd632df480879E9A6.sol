contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#
const sub_05f4903f(?) = 100

const sub_4fa8e0d0(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const DECIMAL_PRECISION = 10^18

const NAME = 'TokenStaking'


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 totalTokenStaked;
address stakeTokenAddress;
array of address sub_8ef4403c;
mapping of uint8 stor104;
mapping of address sub_433f4660;
mapping of uint8 stor106;
mapping of uint8 stor107;
mapping of uint8 stor108;
mapping of uint256 stakes;
mapping of uint256 sub_420480b8;
mapping of uint256 sub_7ec475a8;
uint256 stor112;
address vETokenAddress;
uint256 bonusMultiplier;
uint256 unlockPeriod;
uint256 sub_c00c4da1;
uint256 sub_f0cc490e;
mapping of uint256 sub_a8c7a08a;
mapping of uint256 sub_443ea0fd;
mapping of uint256 unlockTime;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528494;

function sub_0a526e2f(?) {
    require calldata.size - 4 >= 32
    return bool(stor108[arg1])
}

function initialized() {
    return bool(uint8(stor0.field_0))
}

function stakes(address arg1) {
    require calldata.size - 4 >= 32
    return stakes[arg1]
}

function isFeeToken(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor104[arg1])
}

function unlockPeriod() {
    return unlockPeriod
}

function VEToken() {
    return vETokenAddress
}

function totalTokenStaked() {
    return totalTokenStaked
}

function sub_420480b8(?) {
    require calldata.size - 4 >= 32
    return sub_420480b8[arg1]
}

function sub_433f4660(?) {
    require calldata.size - 4 >= 32
    return sub_433f4660[arg1]
}

function sub_443ea0fd(?) {
    require calldata.size - 4 >= 32
    return sub_443ea0fd[arg1]
}

function stakeToken() {
    return stakeTokenAddress
}

function unlockTime(address arg1) {
    require calldata.size - 4 >= 32
    return unlockTime[arg1]
}

function sub_7ec475a8(?) {
    require calldata.size - 4 >= 64
    return sub_7ec475a8[arg1][arg2]
}

function owner() {
    return owner
}

function sub_8ef4403c(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_8ef4403c.length
    return sub_8ef4403c[arg1]
}

function sub_a69e95cf(?) {
    require calldata.size - 4 >= 32
    return bool(stor106[arg1])
}

function bonusMultiplier() {
    return bonusMultiplier
}

function sub_a8c7a08a(?) {
    require calldata.size - 4 >= 32
    return sub_a8c7a08a[arg1]
}

function sub_c00c4da1(?) {
    return sub_c00c4da1
}

function sub_eeccde93(?) {
    require calldata.size - 4 >= 32
    return bool(stor107[arg1])
}

function sub_f0cc490e(?) {
    return sub_f0cc490e
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function initializeReentrancyGuard() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor112 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1e48d334(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    vETokenAddress = arg1
    emit 0x785f5ec2: arg1
}

function setUnlockPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    unlockPeriod = arg1
    emit 0xef17b49d: arg1
}

function setBonusMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    bonusMultiplier = arg1
    emit 0xe2e1d004: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addNewAsset(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor104[address(arg1)]:
        revert with 0, 'fee token has been added!'
    if stor104[address(arg2)]:
        revert with 0, 'fee token has been added!'
    stor106[address(arg3)] = 1
    stor107[address(arg4)] = 1
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        stor108[address(arg5)] = 1
    sub_433f4660[address(arg3)] = arg2
    sub_8ef4403c.length++
    sub_8ef4403c[sub_8ef4403c.length] = arg2
    stor104[address(arg2)] = 1
    sub_433f4660[address(arg4)] = arg1
    sub_8ef4403c.length++
    sub_8ef4403c[sub_8ef4403c.length] = arg1
    stor104[address(arg1)] = 1
    emit NewAssetTokenAddress(address(arg3), address(arg4), address(arg5), address(arg2), arg1);
}

function setAddresses(address arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stakeTokenAddress = arg1
        sub_433f4660[address(arg1)] = arg1
        sub_8ef4403c.length++
        stor9787[stor103.length] = arg1
        stor104[address(arg1)] = 1
        emit StakeTokenAddress(arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stakeTokenAddress = arg1
            sub_433f4660[address(arg1)] = arg1
            sub_8ef4403c.length++
            stor9787[stor103.length] = arg1
            stor104[address(arg1)] = 1
            emit StakeTokenAddress(arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stakeTokenAddress = arg1
                sub_433f4660[address(arg1)] = arg1
                sub_8ef4403c.length++
                stor9787[stor103.length] = arg1
                stor104[address(arg1)] = 1
                emit StakeTokenAddress(arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stakeTokenAddress = arg1
                    sub_433f4660[address(arg1)] = arg1
                    sub_8ef4403c.length++
                    stor9787[stor103.length] = arg1
                    stor104[address(arg1)] = 1
                    emit StakeTokenAddress(arg1);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stakeTokenAddress = arg1
                        sub_433f4660[address(arg1)] = arg1
                        sub_8ef4403c.length++
                        stor9787[stor103.length] = arg1
                        stor104[address(arg1)] = 1
                        emit StakeTokenAddress(arg1);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        stakeTokenAddress = arg1
                        sub_433f4660[address(arg1)] = arg1
                        sub_8ef4403c.length++
                        stor9787[stor103.length] = arg1
                        stor104[address(arg1)] = 1
                        emit StakeTokenAddress(arg1);
                        uint8(stor0.field_8) = 0
}

function getPendingGain(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if sub_7ec475a8[address(arg2)][address(arg1)] > sub_420480b8[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_a8c7a08a[address(arg2)]:
            if sub_443ea0fd[address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stakes[address(arg2)] + sub_443ea0fd[address(arg2)] < sub_443ea0fd[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not stakes[address(arg2)] + sub_443ea0fd[address(arg2)]:
                return 0
            if (stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) / stakes[address(arg2)] + sub_443ea0fd[address(arg2)] != sub_420480b8[address(arg1)] - sub_7ec475a8[address(arg2)][address(arg1)]:
                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return ((stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) / 10^18)
        if bonusMultiplier * sub_a8c7a08a[address(arg2)] / sub_a8c7a08a[address(arg2)] != bonusMultiplier:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_443ea0fd[address(arg2)] + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100) < bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not stakes[address(arg2)] + sub_443ea0fd[address(arg2)] + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100):
            return 0
        if (stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_7ec475a8[address(arg2)][address(arg1)]) / stakes[address(arg2)] + sub_443ea0fd[address(arg2)] + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100) != sub_420480b8[address(arg1)] - sub_7ec475a8[address(arg2)][address(arg1)]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return ((stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_7ec475a8[address(arg2)][address(arg1)]) / 10^18)
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_7ec475a8[address(arg2)][address(arg1)] > sub_420480b8[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[31 len 1] >= 18:
        if not sub_a8c7a08a[address(arg2)]:
            if sub_443ea0fd[address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stakes[address(arg2)] + sub_443ea0fd[address(arg2)] < sub_443ea0fd[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not stakes[address(arg2)] + sub_443ea0fd[address(arg2)]:
                return 0
            if (stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) / stakes[address(arg2)] + sub_443ea0fd[address(arg2)] != sub_420480b8[address(arg1)] - sub_7ec475a8[address(arg2)][address(arg1)]:
                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return ((stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) / 10^18)
        if bonusMultiplier * sub_a8c7a08a[address(arg2)] / sub_a8c7a08a[address(arg2)] != bonusMultiplier:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_443ea0fd[address(arg2)] + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100) < bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not stakes[address(arg2)] + sub_443ea0fd[address(arg2)] + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100):
            return 0
        if (stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_7ec475a8[address(arg2)][address(arg1)]) / stakes[address(arg2)] + sub_443ea0fd[address(arg2)] + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100) != sub_420480b8[address(arg1)] - sub_7ec475a8[address(arg2)][address(arg1)]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return ((stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_7ec475a8[address(arg2)][address(arg1)]) / 10^18)
    if not sub_a8c7a08a[address(arg2)]:
        if sub_443ea0fd[address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(arg2)] + sub_443ea0fd[address(arg2)] < sub_443ea0fd[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if not stakes[address(arg2)] + sub_443ea0fd[address(arg2)]:
            if not 10^(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 'SafeMath: division by zero'
            return (0 / 10^(-uint8(ext_call.return_data[0]) + 18))
        if (stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) / stakes[address(arg2)] + sub_443ea0fd[address(arg2)] != sub_420480b8[address(arg1)] - sub_7ec475a8[address(arg2)][address(arg1)]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 'SafeMath: division by zero'
        return ((stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18))
    if bonusMultiplier * sub_a8c7a08a[address(arg2)] / sub_a8c7a08a[address(arg2)] != bonusMultiplier:
        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if sub_443ea0fd[address(arg2)] + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100) < bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100:
        revert with 0, 'SafeMath: addition overflow'
    if stakes[address(arg2)] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not stakes[address(arg2)] + sub_443ea0fd[address(arg2)] + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100):
        if not 10^(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^(-uint8(ext_call.return_data[0]) + 18))
    if (stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_7ec475a8[address(arg2)][address(arg1)]) / stakes[address(arg2)] + sub_443ea0fd[address(arg2)] + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100) != sub_420480b8[address(arg1)] - sub_7ec475a8[address(arg2)][address(arg1)]:
        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 10^(-uint8(ext_call.return_data[0]) + 18):
        revert with 0, 'SafeMath: division by zero'
    return ((stakes[address(arg2)] * sub_420480b8[address(arg1)]) + (sub_443ea0fd[address(arg2)] * sub_420480b8[address(arg1)]) + (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_420480b8[address(arg1)]) - (stakes[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (sub_443ea0fd[address(arg2)] * sub_7ec475a8[address(arg2)][address(arg1)]) - (bonusMultiplier * sub_a8c7a08a[address(arg2)] / 100 * sub_7ec475a8[address(arg2)][address(arg1)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18))
}

function increaseTransferFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stakeTokenAddress != msg.sender:
        revert with 0, 'caller is not stake token'
    if not totalTokenStaked:
        if sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
            revert with 0, 'SafeMath: addition overflow'
        emit TokenFeeUpdated(arg1, sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
    else:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_433f4660[msg.sender]:
            if not sub_c00c4da1:
                if totalTokenStaked < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_f0cc490e + totalTokenStaked < totalTokenStaked:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1:
                    if not sub_f0cc490e + totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if arg1 / arg1 != 1:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if bonusMultiplier * sub_c00c4da1 / sub_c00c4da1 != bonusMultiplier:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100) < bonusMultiplier * sub_c00c4da1 / 100:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_f0cc490e < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1:
                    if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                    emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if arg1 / arg1 != 1:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
        else:
            require ext_code.size(sub_433f4660[msg.sender])
            staticcall sub_433f4660[msg.sender].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] >= 18:
                if not sub_c00c4da1:
                    if totalTokenStaked < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e + totalTokenStaked < totalTokenStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if arg1 / arg1 != 1:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg1:
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if bonusMultiplier * sub_c00c4da1 / sub_c00c4da1 != bonusMultiplier:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100) < bonusMultiplier * sub_c00c4da1 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if arg1 / arg1 != 1:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg1:
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if not sub_c00c4da1:
                    if totalTokenStaked < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e + totalTokenStaked < totalTokenStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / arg1 != 10^(-uint8(ext_call.return_data[0]) + 18):
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 10^(-uint8(ext_call.return_data[0]) + 18) * arg1:
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if bonusMultiplier * sub_c00c4da1 / sub_c00c4da1 != bonusMultiplier:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100) < bonusMultiplier * sub_c00c4da1 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / arg1 != 10^(-uint8(ext_call.return_data[0]) + 18):
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 10^(-uint8(ext_call.return_data[0]) + 18) * arg1:
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
}

function increaseRedeemingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor106[msg.sender]:
        revert with 0, 'caller is not valid troveManager'
    if not totalTokenStaked:
        if sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
            revert with 0, 'SafeMath: addition overflow'
        emit TokenFeeUpdated(arg1, sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
    else:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_433f4660[msg.sender]:
            if not sub_c00c4da1:
                if totalTokenStaked < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_f0cc490e + totalTokenStaked < totalTokenStaked:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1:
                    if not sub_f0cc490e + totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if arg1 / arg1 != 1:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if bonusMultiplier * sub_c00c4da1 / sub_c00c4da1 != bonusMultiplier:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100) < bonusMultiplier * sub_c00c4da1 / 100:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_f0cc490e < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1:
                    if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                    emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if arg1 / arg1 != 1:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
        else:
            require ext_code.size(sub_433f4660[msg.sender])
            staticcall sub_433f4660[msg.sender].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] >= 18:
                if not sub_c00c4da1:
                    if totalTokenStaked < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e + totalTokenStaked < totalTokenStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if arg1 / arg1 != 1:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg1:
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if bonusMultiplier * sub_c00c4da1 / sub_c00c4da1 != bonusMultiplier:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100) < bonusMultiplier * sub_c00c4da1 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if arg1 / arg1 != 1:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg1:
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if not sub_c00c4da1:
                    if totalTokenStaked < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e + totalTokenStaked < totalTokenStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / arg1 != 10^(-uint8(ext_call.return_data[0]) + 18):
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 10^(-uint8(ext_call.return_data[0]) + 18) * arg1:
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if bonusMultiplier * sub_c00c4da1 / sub_c00c4da1 != bonusMultiplier:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100) < bonusMultiplier * sub_c00c4da1 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / arg1 != 10^(-uint8(ext_call.return_data[0]) + 18):
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 10^(-uint8(ext_call.return_data[0]) + 18) * arg1:
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
}

function increaseBorrowingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor107[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6463616c6c6572206973206e6f742076616c696420626f72726f7765724f7065726174696f,
                    mem[201 len 27]
    if not totalTokenStaked:
        if sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
            revert with 0, 'SafeMath: addition overflow'
        emit TokenFeeUpdated(arg1, sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
    else:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_433f4660[msg.sender]:
            if not sub_c00c4da1:
                if totalTokenStaked < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_f0cc490e + totalTokenStaked < totalTokenStaked:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1:
                    if not sub_f0cc490e + totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if arg1 / arg1 != 1:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if bonusMultiplier * sub_c00c4da1 / sub_c00c4da1 != bonusMultiplier:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100) < bonusMultiplier * sub_c00c4da1 / 100:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_f0cc490e < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1:
                    if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                    emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if arg1 / arg1 != 1:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
        else:
            require ext_code.size(sub_433f4660[msg.sender])
            staticcall sub_433f4660[msg.sender].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] >= 18:
                if not sub_c00c4da1:
                    if totalTokenStaked < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e + totalTokenStaked < totalTokenStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if arg1 / arg1 != 1:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg1:
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if bonusMultiplier * sub_c00c4da1 / sub_c00c4da1 != bonusMultiplier:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100) < bonusMultiplier * sub_c00c4da1 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if arg1 / arg1 != 1:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg1:
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (10^18 * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if not sub_c00c4da1:
                    if totalTokenStaked < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e + totalTokenStaked < totalTokenStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / arg1 != 10^(-uint8(ext_call.return_data[0]) + 18):
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 10^(-uint8(ext_call.return_data[0]) + 18) * arg1:
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked
                            emit TokenFeeUpdated(arg1, (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if bonusMultiplier * sub_c00c4da1 / sub_c00c4da1 != bonusMultiplier:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100) < bonusMultiplier * sub_c00c4da1 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_f0cc490e < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg1:
                        if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                        emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / arg1 != 10^(-uint8(ext_call.return_data[0]) + 18):
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 10^(-uint8(ext_call.return_data[0]) + 18) * arg1:
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (0 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                        else:
                            if 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_420480b8[stor105[msg.sender]] += 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)
                            emit TokenFeeUpdated(arg1, (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / sub_f0cc490e + totalTokenStaked + (bonusMultiplier * sub_c00c4da1 / 100)) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
}

function sub_15ed948f(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor112 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor112 = 2
    if arg1 <= 0:
        revert with 0, 'amount must be non-zero'
    mem[0] = msg.sender
    mem[32] = 109
    if stakes[msg.sender] <= 0:
        revert with 0, 'user must have a non-zero stake'
    idx = 0
    while idx < sub_8ef4403c.length:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
            mem[0] = sub_8ef4403c[idx]
            mem[32] = 110
            _667 = mem[64]
            mem[64] = mem[64] + 64
            mem[_667] = 30
            mem[_667 + 32] = 'SafeMath: subtraction overflow'
            if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                _674 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _674 + 68] = mem[idx + _667 + 32]
                    idx = idx + 32
                    continue 
                mem[_674 + 68] = mem[_674 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _674 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 118
            if sub_a8c7a08a[address(msg.sender)]:
                if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _757 = mem[64]
                mem[64] = mem[64] + 64
                mem[_757] = 26
                mem[_757 + 32] = 'SafeMath: division by zero'
                if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                    _819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_819] = 26
                    mem[_819 + 32] = 'SafeMath: division by zero'
                    _835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_835] = 26
                    mem[_835 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_827] = 26
                    mem[_827 + 32] = 'SafeMath: division by zero'
                    _839 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_839] = 26
                    mem[_839 + 32] = 'SafeMath: division by zero'
                    if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _931 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _933 = mem[_931]
                            t = _931 + 32
                            u = mem[64]
                            s = mem[_931]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_931])] = mem[_931 + floor32(mem[_931]) + -(mem[_931] % 32) + 64 len mem[_931] % 32] or Mask(8 * -(mem[_931] % 32) + 32, -(8 * -(mem[_931] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_931])])
                            call msg.sender.mem[mem[64] len 4] with:
                               value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _933 + _931 + -mem[64] + 28]
                            if return_data.size:
                                _1400 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1400] = return_data.size
                                mem[_1400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            _926 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            _927 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_927 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_927 + 36 len 28]
                            _930 = mem[_927]
                            t = _927 + 32
                            u = _926 + 100
                            s = mem[_927]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_926 + floor32(mem[_927]) + 100] = mem[_927 + -(mem[_927] % 32) + floor32(mem[_927]) + 64 len mem[_927] % 32] or Mask(8 * -(mem[_927] % 32) + 32, -(8 * -(mem[_927] % 32) + 32) + 256, mem[_926 + floor32(mem[_927]) + 100])
                            call sub_8ef4403c[idx].mem[_926 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_926 + 104 len _930 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_926 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                mem[64] = _926 + ceil32(return_data.size) + 101
                                mem[_926 + 100] = return_data.size
                                mem[_926 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_926 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_926 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                _738 = mem[64]
                mem[64] = mem[64] + 64
                mem[_738] = 26
                mem[_738 + 32] = 'SafeMath: division by zero'
                if sub_443ea0fd[address(msg.sender)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                    _812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_812] = 26
                    mem[_812 + 32] = 'SafeMath: division by zero'
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 26
                    mem[_834 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_820] = 26
                    mem[_820 + 32] = 'SafeMath: division by zero'
                    _836 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_836] = 26
                    mem[_836 + 32] = 'SafeMath: division by zero'
                    if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _904 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _906 = mem[_904]
                            t = _904 + 32
                            u = _904 + 32
                            s = mem[_904]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_904 + floor32(mem[_904]) + 32] = mem[_904 + -(mem[_904] % 32) + floor32(mem[_904]) + 64 len mem[_904] % 32] or Mask(8 * -(mem[_904] % 32) + 32, -(8 * -(mem[_904] % 32) + 32) + 256, mem[_904 + floor32(mem[_904]) + 32])
                            call msg.sender.mem[_904 + 32 len 4] with:
                               value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[_904 + 36 len _906 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_904 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                mem[64] = _904 + ceil32(return_data.size) + 33
                                mem[_904 + 32] = return_data.size
                                mem[_904 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_904 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            _899 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            _900 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_900 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_900 + 36 len 28]
                            _903 = mem[_900]
                            t = _900 + 32
                            u = mem[64]
                            s = mem[_900]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_900])] = mem[_900 + floor32(mem[_900]) + -(mem[_900] % 32) + 64 len mem[_900] % 32] or Mask(8 * -(mem[_900] % 32) + 32, -(8 * -(mem[_900] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_900])])
                            call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _903 + _899 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                            else:
                                _1401 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1401] = return_data.size
                                mem[_1401 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1401 + 32]:
                                        revert with 0, '!safeTransfer'
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
        else:
            require ext_code.size(sub_8ef4403c[idx])
            staticcall sub_8ef4403c[idx].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_8ef4403c[idx]
            mem[32] = 110
            if uint8(ext_call.return_data[0]) >= 18:
                _677 = mem[64]
                mem[64] = mem[64] + 64
                mem[_677] = 30
                mem[_677 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _682 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _682 + 68] = mem[idx + _677 + 32]
                        idx = idx + 32
                        continue 
                    mem[_682 + 68] = mem[_682 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _682 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 118
                if not sub_a8c7a08a[address(msg.sender)]:
                    _760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_760] = 26
                    mem[_760 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                        _821 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_821] = 26
                        mem[_821 + 32] = 'SafeMath: division by zero'
                        _837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_837] = 26
                        mem[_837 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _829 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_829] = 26
                        mem[_829 + 32] = 'SafeMath: division by zero'
                        _841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_841] = 26
                        mem[_841 + 32] = 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _947 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _949 = mem[_947]
                                t = _947 + 32
                                u = _947 + 32
                                s = mem[_947]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_947 + floor32(mem[_947]) + 32] = mem[_947 + -(mem[_947] % 32) + floor32(mem[_947]) + 64 len mem[_947] % 32] or Mask(8 * -(mem[_947] % 32) + 32, -(8 * -(mem[_947] % 32) + 32) + 256, mem[_947 + floor32(mem[_947]) + 32])
                                call msg.sender.mem[_947 + 32 len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[_947 + 36 len _949 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_947 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    mem[64] = _947 + ceil32(return_data.size) + 33
                                    mem[_947 + 32] = return_data.size
                                    mem[_947 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_947 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                _942 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                _943 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_943 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_943 + 36 len 28]
                                _946 = mem[_943]
                                t = _943 + 32
                                u = mem[64]
                                s = mem[_943]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_943])] = mem[_943 + floor32(mem[_943]) + -(mem[_943] % 32) + 64 len mem[_943] % 32] or Mask(8 * -(mem[_943] % 32) + 32, -(8 * -(mem[_943] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_943])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _946 + _942 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1377 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1377] = return_data.size
                                    mem[_1377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1377 + 32]:
                                            revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_768] = 26
                    mem[_768 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                        _828 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_828] = 26
                        mem[_828 + 32] = 'SafeMath: division by zero'
                        _840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_840] = 26
                        mem[_840 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _832 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_832] = 26
                        mem[_832 + 32] = 'SafeMath: division by zero'
                        _848 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_848] = 26
                        mem[_848 + 32] = 'SafeMath: division by zero'
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _995 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _997 = mem[_995]
                                t = _995 + 32
                                u = mem[64]
                                s = mem[_995]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_995])] = mem[_995 + floor32(mem[_995]) + -(mem[_995] % 32) + 64 len mem[_995] % 32] or Mask(8 * -(mem[_995] % 32) + 32, -(8 * -(mem[_995] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_995])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _997 + _995 + -mem[64] + 28]
                                if return_data.size:
                                    _1376 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1376] = return_data.size
                                    mem[_1376 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _990 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                _991 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_991 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_991 + 36 len 28]
                                _994 = mem[_991]
                                t = _991 + 32
                                u = mem[64]
                                s = mem[_991]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_991])] = mem[_991 + floor32(mem[_991]) + -(mem[_991] % 32) + 64 len mem[_991] % 32] or Mask(8 * -(mem[_991] % 32) + 32, -(8 * -(mem[_991] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_991])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _994 + _990 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1375 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1375] = return_data.size
                                    mem[_1375 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1375 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                _678 = mem[64]
                mem[64] = mem[64] + 64
                mem[_678] = 30
                mem[_678 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _685 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _685 + 68] = mem[idx + _678 + 32]
                        idx = idx + 32
                        continue 
                    mem[_685 + 68] = mem[_685 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _685 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 118
                if sub_a8c7a08a[address(msg.sender)]:
                    if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_769] = 26
                    mem[_769 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _833 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_833] = 26
                        mem[_833 + 32] = 'SafeMath: division by zero'
                        _849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_849] = 26
                        mem[_849 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _849 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _1011 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _1013 = mem[_1011]
                                t = _1011 + 32
                                u = _1011 + 32
                                s = mem[_1011]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1011 + floor32(mem[_1011]) + 32] = mem[_1011 + -(mem[_1011] % 32) + floor32(mem[_1011]) + 64 len mem[_1011] % 32] or Mask(8 * -(mem[_1011] % 32) + 32, -(8 * -(mem[_1011] % 32) + 32) + 256, mem[_1011 + floor32(mem[_1011]) + 32])
                                call msg.sender.mem[_1011 + 32 len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[_1011 + 36 len _1013 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_1011 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _1011 + ceil32(return_data.size) + 33
                                    mem[_1011 + 32] = return_data.size
                                    mem[_1011 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_1011 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _1006 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _1007 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1007 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1007 + 36 len 28]
                                _1010 = mem[_1007]
                                t = _1007 + 32
                                u = _1006 + 100
                                s = mem[_1007]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1006 + floor32(mem[_1007]) + 100] = mem[_1007 + -(mem[_1007] % 32) + floor32(mem[_1007]) + 64 len mem[_1007] % 32] or Mask(8 * -(mem[_1007] % 32) + 32, -(8 * -(mem[_1007] % 32) + 32) + 256, mem[_1006 + floor32(mem[_1007]) + 100])
                                call sub_8ef4403c[idx].mem[_1006 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1006 + 104 len _1010 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1006 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _1006 + ceil32(return_data.size) + 101
                                    mem[_1006 + 100] = return_data.size
                                    mem[_1006 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1006 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1006 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        _830 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_830] = 26
                        mem[_830 + 32] = 'SafeMath: division by zero'
                        _842 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_842] = 26
                        mem[_842 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _842 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _955 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _957 = mem[_955]
                                t = _955 + 32
                                u = mem[64]
                                s = mem[_955]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_955])] = mem[_955 + floor32(mem[_955]) + -(mem[_955] % 32) + 64 len mem[_955] % 32] or Mask(8 * -(mem[_955] % 32) + 32, -(8 * -(mem[_955] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_955])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _957 + _955 + -mem[64] + 28]
                                if return_data.size:
                                    _1386 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1386] = return_data.size
                                    mem[_1386 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _950 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _951 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_951 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_951 + 36 len 28]
                                _954 = mem[_951]
                                t = _951 + 32
                                u = mem[64]
                                s = mem[_951]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_951])] = mem[_951 + floor32(mem[_951]) + -(mem[_951] % 32) + 64 len mem[_951] % 32] or Mask(8 * -(mem[_951] % 32) + 32, -(8 * -(mem[_951] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_951])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _954 + _950 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1385 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1385] = return_data.size
                                    mem[_1385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1385 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                else:
                    _761 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_761] = 26
                    mem[_761 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                        _822 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_822] = 26
                        mem[_822 + 32] = 'SafeMath: division by zero'
                        _838 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_838] = 26
                        mem[_838 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _838 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _913 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _915 = mem[_913]
                                t = _913 + 32
                                u = mem[64]
                                s = mem[_913]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_913])] = mem[_913 + floor32(mem[_913]) + -(mem[_913] % 32) + 64 len mem[_913] % 32] or Mask(8 * -(mem[_913] % 32) + 32, -(8 * -(mem[_913] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_913])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _915 + _913 + -mem[64] + 28]
                                if return_data.size:
                                    _1394 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1394] = return_data.size
                                    mem[_1394 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _908 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _909 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_909 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_909 + 36 len 28]
                                _912 = mem[_909]
                                t = _909 + 32
                                u = mem[64]
                                s = mem[_909]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_909])] = mem[_909 + floor32(mem[_909]) + -(mem[_909] % 32) + 64 len mem[_909] % 32] or Mask(8 * -(mem[_909] % 32) + 32, -(8 * -(mem[_909] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_909])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _912 + _908 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1393] = return_data.size
                                    mem[_1393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1393 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _831 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_831] = 26
                        mem[_831 + 32] = 'SafeMath: division by zero'
                        _843 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_843] = 26
                        mem[_843 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _843 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _963 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _965 = mem[_963]
                                t = _963 + 32
                                u = mem[64]
                                s = mem[_963]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_963])] = mem[_963 + floor32(mem[_963]) + -(mem[_963] % 32) + 64 len mem[_963] % 32] or Mask(8 * -(mem[_963] % 32) + 32, -(8 * -(mem[_963] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_963])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _965 + _963 + -mem[64] + 28]
                                if return_data.size:
                                    _1390 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1390] = return_data.size
                                    mem[_1390 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _958 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _959 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_959 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_959 + 36 len 28]
                                _962 = mem[_959]
                                t = _959 + 32
                                u = mem[64]
                                s = mem[_959]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_959])] = mem[_959 + floor32(mem[_959]) + -(mem[_959] % 32) + 64 len mem[_959] % 32] or Mask(8 * -(mem[_959] % 32) + 32, -(8 * -(mem[_959] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_959])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _962 + _958 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1389 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1389] = return_data.size
                                    mem[_1389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1389 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_8ef4403c.length:
        mem[0] = sub_8ef4403c[idx]
        mem[32] = sha3(address(msg.sender), 111)
        sub_7ec475a8[address(msg.sender)][stor103[idx]] = sub_420480b8[stor103[idx]]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = sub_8ef4403c[idx]
        mem[mem[64] + 64] = sub_420480b8[stor103[idx]]
        emit StakerSnapshotsUpdated(msg.sender, sub_8ef4403c[idx], sub_420480b8[stor103[idx]]);
        idx = idx + 1
        continue 
    if arg1 < stakes[msg.sender]:
        if arg1 + sub_a8c7a08a[msg.sender] < sub_a8c7a08a[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 > stakes[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_a8c7a08a[msg.sender] += arg1
        emit 0x7257c0a3: (arg1 + sub_a8c7a08a[msg.sender]), msg.sender
        if arg1 + sub_c00c4da1 < sub_c00c4da1:
            revert with 0, 'SafeMath: addition overflow'
        sub_c00c4da1 += arg1
        emit 0xa777ef2b: (arg1 + sub_c00c4da1)
        stakes[msg.sender] -= arg1
        emit StakeChanged((stakes[msg.sender] - arg1), msg.sender);
        if arg1 > totalTokenStaked:
            revert with 0, 'SafeMath: subtraction overflow'
        totalTokenStaked -= arg1
        emit totalTokenStakedUpdated((totalTokenStaked - arg1));
        require ext_code.size(vETokenAddress)
        call vETokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        if stakes[msg.sender] + sub_a8c7a08a[msg.sender] < sub_a8c7a08a[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[msg.sender] > stakes[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_a8c7a08a[msg.sender] += stakes[msg.sender]
        emit 0x7257c0a3: (stakes[msg.sender] + sub_a8c7a08a[msg.sender]), msg.sender
        if stakes[msg.sender] + sub_c00c4da1 < sub_c00c4da1:
            revert with 0, 'SafeMath: addition overflow'
        sub_c00c4da1 += stakes[msg.sender]
        emit 0xa777ef2b: (stakes[msg.sender] + sub_c00c4da1)
        stakes[msg.sender] = 0
        emit StakeChanged(0, msg.sender);
        if stakes[msg.sender] > totalTokenStaked:
            revert with 0, 'SafeMath: subtraction overflow'
        totalTokenStaked -= stakes[msg.sender]
        emit totalTokenStakedUpdated((totalTokenStaked - stakes[msg.sender]));
        require ext_code.size(vETokenAddress)
        call vETokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, stakes[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor112 = 1
}

function sub_8569bb2c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor112 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor112 = 2
    if arg1 <= 0:
        revert with 0, 'amount must be non-zero'
    mem[0] = msg.sender
    mem[32] = 119
    if sub_443ea0fd[msg.sender] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7375736572206d75737420686176652061206e6f6e2d7a65726f20756e6c6f636b65,
                    mem[198 len 30]
    idx = 0
    while idx < sub_8ef4403c.length:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
            mem[0] = sub_8ef4403c[idx]
            mem[32] = 110
            _667 = mem[64]
            mem[64] = mem[64] + 64
            mem[_667] = 30
            mem[_667 + 32] = 'SafeMath: subtraction overflow'
            if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                _674 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _674 + 68] = mem[idx + _667 + 32]
                    idx = idx + 32
                    continue 
                mem[_674 + 68] = mem[_674 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _674 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 118
            if sub_a8c7a08a[address(msg.sender)]:
                if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _757 = mem[64]
                mem[64] = mem[64] + 64
                mem[_757] = 26
                mem[_757 + 32] = 'SafeMath: division by zero'
                if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                    _819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_819] = 26
                    mem[_819 + 32] = 'SafeMath: division by zero'
                    _835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_835] = 26
                    mem[_835 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_827] = 26
                    mem[_827 + 32] = 'SafeMath: division by zero'
                    _839 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_839] = 26
                    mem[_839 + 32] = 'SafeMath: division by zero'
                    if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _931 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _933 = mem[_931]
                            t = _931 + 32
                            u = mem[64]
                            s = mem[_931]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_931])] = mem[_931 + floor32(mem[_931]) + -(mem[_931] % 32) + 64 len mem[_931] % 32] or Mask(8 * -(mem[_931] % 32) + 32, -(8 * -(mem[_931] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_931])])
                            call msg.sender.mem[mem[64] len 4] with:
                               value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _933 + _931 + -mem[64] + 28]
                            if return_data.size:
                                _1400 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1400] = return_data.size
                                mem[_1400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            _926 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            _927 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_927 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_927 + 36 len 28]
                            _930 = mem[_927]
                            t = _927 + 32
                            u = _926 + 100
                            s = mem[_927]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_926 + floor32(mem[_927]) + 100] = mem[_927 + -(mem[_927] % 32) + floor32(mem[_927]) + 64 len mem[_927] % 32] or Mask(8 * -(mem[_927] % 32) + 32, -(8 * -(mem[_927] % 32) + 32) + 256, mem[_926 + floor32(mem[_927]) + 100])
                            call sub_8ef4403c[idx].mem[_926 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_926 + 104 len _930 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_926 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                mem[64] = _926 + ceil32(return_data.size) + 101
                                mem[_926 + 100] = return_data.size
                                mem[_926 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_926 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_926 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                _738 = mem[64]
                mem[64] = mem[64] + 64
                mem[_738] = 26
                mem[_738 + 32] = 'SafeMath: division by zero'
                if sub_443ea0fd[address(msg.sender)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                    _812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_812] = 26
                    mem[_812 + 32] = 'SafeMath: division by zero'
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 26
                    mem[_834 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_820] = 26
                    mem[_820 + 32] = 'SafeMath: division by zero'
                    _836 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_836] = 26
                    mem[_836 + 32] = 'SafeMath: division by zero'
                    if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _904 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _906 = mem[_904]
                            t = _904 + 32
                            u = _904 + 32
                            s = mem[_904]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_904 + floor32(mem[_904]) + 32] = mem[_904 + -(mem[_904] % 32) + floor32(mem[_904]) + 64 len mem[_904] % 32] or Mask(8 * -(mem[_904] % 32) + 32, -(8 * -(mem[_904] % 32) + 32) + 256, mem[_904 + floor32(mem[_904]) + 32])
                            call msg.sender.mem[_904 + 32 len 4] with:
                               value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[_904 + 36 len _906 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_904 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                mem[64] = _904 + ceil32(return_data.size) + 33
                                mem[_904 + 32] = return_data.size
                                mem[_904 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_904 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            _899 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            _900 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_900 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_900 + 36 len 28]
                            _903 = mem[_900]
                            t = _900 + 32
                            u = mem[64]
                            s = mem[_900]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_900])] = mem[_900 + floor32(mem[_900]) + -(mem[_900] % 32) + 64 len mem[_900] % 32] or Mask(8 * -(mem[_900] % 32) + 32, -(8 * -(mem[_900] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_900])])
                            call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _903 + _899 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                            else:
                                _1401 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1401] = return_data.size
                                mem[_1401 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1401 + 32]:
                                        revert with 0, '!safeTransfer'
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
        else:
            require ext_code.size(sub_8ef4403c[idx])
            staticcall sub_8ef4403c[idx].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_8ef4403c[idx]
            mem[32] = 110
            if uint8(ext_call.return_data[0]) >= 18:
                _677 = mem[64]
                mem[64] = mem[64] + 64
                mem[_677] = 30
                mem[_677 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _682 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _682 + 68] = mem[idx + _677 + 32]
                        idx = idx + 32
                        continue 
                    mem[_682 + 68] = mem[_682 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _682 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 118
                if not sub_a8c7a08a[address(msg.sender)]:
                    _760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_760] = 26
                    mem[_760 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                        _821 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_821] = 26
                        mem[_821 + 32] = 'SafeMath: division by zero'
                        _837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_837] = 26
                        mem[_837 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _829 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_829] = 26
                        mem[_829 + 32] = 'SafeMath: division by zero'
                        _841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_841] = 26
                        mem[_841 + 32] = 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _947 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _949 = mem[_947]
                                t = _947 + 32
                                u = _947 + 32
                                s = mem[_947]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_947 + floor32(mem[_947]) + 32] = mem[_947 + -(mem[_947] % 32) + floor32(mem[_947]) + 64 len mem[_947] % 32] or Mask(8 * -(mem[_947] % 32) + 32, -(8 * -(mem[_947] % 32) + 32) + 256, mem[_947 + floor32(mem[_947]) + 32])
                                call msg.sender.mem[_947 + 32 len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[_947 + 36 len _949 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_947 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    mem[64] = _947 + ceil32(return_data.size) + 33
                                    mem[_947 + 32] = return_data.size
                                    mem[_947 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_947 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                _942 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                _943 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_943 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_943 + 36 len 28]
                                _946 = mem[_943]
                                t = _943 + 32
                                u = mem[64]
                                s = mem[_943]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_943])] = mem[_943 + floor32(mem[_943]) + -(mem[_943] % 32) + 64 len mem[_943] % 32] or Mask(8 * -(mem[_943] % 32) + 32, -(8 * -(mem[_943] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_943])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _946 + _942 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1377 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1377] = return_data.size
                                    mem[_1377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1377 + 32]:
                                            revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_768] = 26
                    mem[_768 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                        _828 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_828] = 26
                        mem[_828 + 32] = 'SafeMath: division by zero'
                        _840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_840] = 26
                        mem[_840 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _832 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_832] = 26
                        mem[_832 + 32] = 'SafeMath: division by zero'
                        _848 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_848] = 26
                        mem[_848 + 32] = 'SafeMath: division by zero'
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _995 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _997 = mem[_995]
                                t = _995 + 32
                                u = mem[64]
                                s = mem[_995]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_995])] = mem[_995 + floor32(mem[_995]) + -(mem[_995] % 32) + 64 len mem[_995] % 32] or Mask(8 * -(mem[_995] % 32) + 32, -(8 * -(mem[_995] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_995])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _997 + _995 + -mem[64] + 28]
                                if return_data.size:
                                    _1376 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1376] = return_data.size
                                    mem[_1376 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _990 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                _991 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_991 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_991 + 36 len 28]
                                _994 = mem[_991]
                                t = _991 + 32
                                u = mem[64]
                                s = mem[_991]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_991])] = mem[_991 + floor32(mem[_991]) + -(mem[_991] % 32) + 64 len mem[_991] % 32] or Mask(8 * -(mem[_991] % 32) + 32, -(8 * -(mem[_991] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_991])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _994 + _990 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1375 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1375] = return_data.size
                                    mem[_1375 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1375 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                _678 = mem[64]
                mem[64] = mem[64] + 64
                mem[_678] = 30
                mem[_678 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _685 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _685 + 68] = mem[idx + _678 + 32]
                        idx = idx + 32
                        continue 
                    mem[_685 + 68] = mem[_685 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _685 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 118
                if sub_a8c7a08a[address(msg.sender)]:
                    if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_769] = 26
                    mem[_769 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _833 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_833] = 26
                        mem[_833 + 32] = 'SafeMath: division by zero'
                        _849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_849] = 26
                        mem[_849 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _849 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _1011 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _1013 = mem[_1011]
                                t = _1011 + 32
                                u = _1011 + 32
                                s = mem[_1011]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1011 + floor32(mem[_1011]) + 32] = mem[_1011 + -(mem[_1011] % 32) + floor32(mem[_1011]) + 64 len mem[_1011] % 32] or Mask(8 * -(mem[_1011] % 32) + 32, -(8 * -(mem[_1011] % 32) + 32) + 256, mem[_1011 + floor32(mem[_1011]) + 32])
                                call msg.sender.mem[_1011 + 32 len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[_1011 + 36 len _1013 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_1011 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _1011 + ceil32(return_data.size) + 33
                                    mem[_1011 + 32] = return_data.size
                                    mem[_1011 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_1011 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _1006 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _1007 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1007 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1007 + 36 len 28]
                                _1010 = mem[_1007]
                                t = _1007 + 32
                                u = _1006 + 100
                                s = mem[_1007]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1006 + floor32(mem[_1007]) + 100] = mem[_1007 + -(mem[_1007] % 32) + floor32(mem[_1007]) + 64 len mem[_1007] % 32] or Mask(8 * -(mem[_1007] % 32) + 32, -(8 * -(mem[_1007] % 32) + 32) + 256, mem[_1006 + floor32(mem[_1007]) + 100])
                                call sub_8ef4403c[idx].mem[_1006 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1006 + 104 len _1010 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1006 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _1006 + ceil32(return_data.size) + 101
                                    mem[_1006 + 100] = return_data.size
                                    mem[_1006 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1006 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1006 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        _830 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_830] = 26
                        mem[_830 + 32] = 'SafeMath: division by zero'
                        _842 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_842] = 26
                        mem[_842 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _842 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _955 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _957 = mem[_955]
                                t = _955 + 32
                                u = mem[64]
                                s = mem[_955]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_955])] = mem[_955 + floor32(mem[_955]) + -(mem[_955] % 32) + 64 len mem[_955] % 32] or Mask(8 * -(mem[_955] % 32) + 32, -(8 * -(mem[_955] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_955])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _957 + _955 + -mem[64] + 28]
                                if return_data.size:
                                    _1386 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1386] = return_data.size
                                    mem[_1386 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _950 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _951 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_951 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_951 + 36 len 28]
                                _954 = mem[_951]
                                t = _951 + 32
                                u = mem[64]
                                s = mem[_951]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_951])] = mem[_951 + floor32(mem[_951]) + -(mem[_951] % 32) + 64 len mem[_951] % 32] or Mask(8 * -(mem[_951] % 32) + 32, -(8 * -(mem[_951] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_951])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _954 + _950 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1385 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1385] = return_data.size
                                    mem[_1385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1385 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                else:
                    _761 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_761] = 26
                    mem[_761 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                        _822 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_822] = 26
                        mem[_822 + 32] = 'SafeMath: division by zero'
                        _838 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_838] = 26
                        mem[_838 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _838 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _913 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _915 = mem[_913]
                                t = _913 + 32
                                u = mem[64]
                                s = mem[_913]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_913])] = mem[_913 + floor32(mem[_913]) + -(mem[_913] % 32) + 64 len mem[_913] % 32] or Mask(8 * -(mem[_913] % 32) + 32, -(8 * -(mem[_913] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_913])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _915 + _913 + -mem[64] + 28]
                                if return_data.size:
                                    _1394 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1394] = return_data.size
                                    mem[_1394 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _908 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _909 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_909 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_909 + 36 len 28]
                                _912 = mem[_909]
                                t = _909 + 32
                                u = mem[64]
                                s = mem[_909]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_909])] = mem[_909 + floor32(mem[_909]) + -(mem[_909] % 32) + 64 len mem[_909] % 32] or Mask(8 * -(mem[_909] % 32) + 32, -(8 * -(mem[_909] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_909])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _912 + _908 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1393] = return_data.size
                                    mem[_1393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1393 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _831 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_831] = 26
                        mem[_831 + 32] = 'SafeMath: division by zero'
                        _843 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_843] = 26
                        mem[_843 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _843 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _963 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _965 = mem[_963]
                                t = _963 + 32
                                u = mem[64]
                                s = mem[_963]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_963])] = mem[_963 + floor32(mem[_963]) + -(mem[_963] % 32) + 64 len mem[_963] % 32] or Mask(8 * -(mem[_963] % 32) + 32, -(8 * -(mem[_963] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_963])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _965 + _963 + -mem[64] + 28]
                                if return_data.size:
                                    _1390 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1390] = return_data.size
                                    mem[_1390 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _958 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _959 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_959 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_959 + 36 len 28]
                                _962 = mem[_959]
                                t = _959 + 32
                                u = mem[64]
                                s = mem[_959]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_959])] = mem[_959 + floor32(mem[_959]) + -(mem[_959] % 32) + 64 len mem[_959] % 32] or Mask(8 * -(mem[_959] % 32) + 32, -(8 * -(mem[_959] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_959])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _962 + _958 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1389 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1389] = return_data.size
                                    mem[_1389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1389 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_8ef4403c.length:
        mem[0] = sub_8ef4403c[idx]
        mem[32] = sha3(address(msg.sender), 111)
        sub_7ec475a8[address(msg.sender)][stor103[idx]] = sub_420480b8[stor103[idx]]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = sub_8ef4403c[idx]
        mem[mem[64] + 64] = sub_420480b8[stor103[idx]]
        emit StakerSnapshotsUpdated(msg.sender, sub_8ef4403c[idx], sub_420480b8[stor103[idx]]);
        idx = idx + 1
        continue 
    if arg1 < sub_443ea0fd[msg.sender]:
        if arg1 + sub_a8c7a08a[msg.sender] < sub_a8c7a08a[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 > sub_443ea0fd[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_a8c7a08a[msg.sender] += arg1
        emit 0x7257c0a3: (arg1 + sub_a8c7a08a[msg.sender]), msg.sender
        if arg1 + sub_c00c4da1 < sub_c00c4da1:
            revert with 0, 'SafeMath: addition overflow'
        sub_c00c4da1 += arg1
        emit 0xa777ef2b: (arg1 + sub_c00c4da1)
        sub_443ea0fd[msg.sender] -= arg1
        emit 0xbd8a48d0: (sub_443ea0fd[msg.sender] - arg1), msg.sender
        if arg1 > sub_f0cc490e:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_f0cc490e -= arg1
        emit 0x20e7bfc8: (sub_f0cc490e - arg1)
        require ext_code.size(vETokenAddress)
        call vETokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        if sub_443ea0fd[msg.sender] + sub_a8c7a08a[msg.sender] < sub_a8c7a08a[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if sub_443ea0fd[msg.sender] > sub_443ea0fd[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_a8c7a08a[msg.sender] += sub_443ea0fd[msg.sender]
        emit 0x7257c0a3: (sub_443ea0fd[msg.sender] + sub_a8c7a08a[msg.sender]), msg.sender
        if sub_443ea0fd[msg.sender] + sub_c00c4da1 < sub_c00c4da1:
            revert with 0, 'SafeMath: addition overflow'
        sub_c00c4da1 += sub_443ea0fd[msg.sender]
        emit 0xa777ef2b: (sub_443ea0fd[msg.sender] + sub_c00c4da1)
        sub_443ea0fd[msg.sender] = 0
        emit 0xbd8a48d0: 0, msg.sender
        if sub_443ea0fd[msg.sender] > sub_f0cc490e:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_f0cc490e -= sub_443ea0fd[msg.sender]
        emit 0x20e7bfc8: (sub_f0cc490e - sub_443ea0fd[msg.sender])
        require ext_code.size(vETokenAddress)
        call vETokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, sub_443ea0fd[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor112 = 1
}

function unlock(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor112 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor112 = 2
    mem[0] = msg.sender
    mem[32] = 118
    if sub_a8c7a08a[msg.sender] <= 0:
        revert with 0, 'user must have a non-zero locked'
    idx = 0
    while idx < sub_8ef4403c.length:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
            mem[0] = sub_8ef4403c[idx]
            mem[32] = 110
            _673 = mem[64]
            mem[64] = mem[64] + 64
            mem[_673] = 30
            mem[_673 + 32] = 'SafeMath: subtraction overflow'
            if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                _678 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _678 + 68] = mem[idx + _673 + 32]
                    idx = idx + 32
                    continue 
                mem[_678 + 68] = mem[_678 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _678 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 118
            if not sub_a8c7a08a[address(msg.sender)]:
                _732 = mem[64]
                mem[64] = mem[64] + 64
                mem[_732] = 26
                mem[_732 + 32] = 'SafeMath: division by zero'
                if sub_443ea0fd[address(msg.sender)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                    _830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_830] = 26
                    mem[_830 + 32] = 'SafeMath: division by zero'
                    _852 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_852] = 26
                    mem[_852 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _838 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_838] = 26
                    mem[_838 + 32] = 'SafeMath: division by zero'
                    _854 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_854] = 26
                    mem[_854 + 32] = 'SafeMath: division by zero'
                    if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _922 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _924 = mem[_922]
                            t = _922 + 32
                            u = mem[64]
                            s = mem[_922]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_922])] = mem[_922 + floor32(mem[_922]) + -(mem[_922] % 32) + 64 len mem[_922] % 32] or Mask(8 * -(mem[_922] % 32) + 32, -(8 * -(mem[_922] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_922])])
                            call msg.sender.mem[mem[64] len 4] with:
                               value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _924 + _922 + -mem[64] + 28]
                            if return_data.size:
                                _1420 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1420] = return_data.size
                                mem[_1420 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            _917 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            _918 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_918 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_918 + 36 len 28]
                            _921 = mem[_918]
                            t = _918 + 32
                            u = _917 + 100
                            s = mem[_918]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_917 + floor32(mem[_918]) + 100] = mem[_918 + -(mem[_918] % 32) + floor32(mem[_918]) + 64 len mem[_918] % 32] or Mask(8 * -(mem[_918] % 32) + 32, -(8 * -(mem[_918] % 32) + 32) + 256, mem[_917 + floor32(mem[_918]) + 100])
                            call sub_8ef4403c[idx].mem[_917 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_917 + 104 len _921 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_917 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                mem[64] = _917 + ceil32(return_data.size) + 101
                                mem[_917 + 100] = return_data.size
                                mem[_917 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_917 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_917 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _741 = mem[64]
                mem[64] = mem[64] + 64
                mem[_741] = 26
                mem[_741 + 32] = 'SafeMath: division by zero'
                if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                    _837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_837] = 26
                    mem[_837 + 32] = 'SafeMath: division by zero'
                    _853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_853] = 26
                    mem[_853 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_845] = 26
                    mem[_845 + 32] = 'SafeMath: division by zero'
                    _857 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_857] = 26
                    mem[_857 + 32] = 'SafeMath: division by zero'
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _949 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _951 = mem[_949]
                            t = _949 + 32
                            u = mem[64]
                            s = mem[_949]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_949])] = mem[_949 + floor32(mem[_949]) + -(mem[_949] % 32) + 64 len mem[_949] % 32] or Mask(8 * -(mem[_949] % 32) + 32, -(8 * -(mem[_949] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_949])])
                            call msg.sender.mem[mem[64] len 4] with:
                               value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _951 + _949 + -mem[64] + 28]
                            if return_data.size:
                                _1418 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1418] = return_data.size
                                mem[_1418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                        else:
                            _944 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            _945 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_945 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_945 + 36 len 28]
                            _948 = mem[_945]
                            t = _945 + 32
                            u = mem[64]
                            s = mem[_945]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_945])] = mem[_945 + floor32(mem[_945]) + -(mem[_945] % 32) + 64 len mem[_945] % 32] or Mask(8 * -(mem[_945] % 32) + 32, -(8 * -(mem[_945] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_945])])
                            call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _948 + _944 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                            else:
                                _1417 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1417] = return_data.size
                                mem[_1417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1417 + 32]:
                                        revert with 0, '!safeTransfer'
                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
        else:
            require ext_code.size(sub_8ef4403c[idx])
            staticcall sub_8ef4403c[idx].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_8ef4403c[idx]
            mem[32] = 110
            if uint8(ext_call.return_data[0]) >= 18:
                _687 = mem[64]
                mem[64] = mem[64] + 64
                mem[_687] = 30
                mem[_687 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _692 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _692 + 68] = mem[idx + _687 + 32]
                        idx = idx + 32
                        continue 
                    mem[_692 + 68] = mem[_692 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _692 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 118
                if not sub_a8c7a08a[address(msg.sender)]:
                    _746 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_746] = 26
                    mem[_746 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                        _839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_839] = 26
                        mem[_839 + 32] = 'SafeMath: division by zero'
                        _855 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_855] = 26
                        mem[_855 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _847 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_847] = 26
                        mem[_847 + 32] = 'SafeMath: division by zero'
                        _859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_859] = 26
                        mem[_859 + 32] = 'SafeMath: division by zero'
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _965 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _967 = mem[_965]
                                t = _965 + 32
                                u = mem[64]
                                s = mem[_965]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_965])] = mem[_965 + floor32(mem[_965]) + -(mem[_965] % 32) + 64 len mem[_965] % 32] or Mask(8 * -(mem[_965] % 32) + 32, -(8 * -(mem[_965] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_965])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _967 + _965 + -mem[64] + 28]
                                if return_data.size:
                                    _1396 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1396] = return_data.size
                                    mem[_1396 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _960 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                _961 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_961 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_961 + 36 len 28]
                                _964 = mem[_961]
                                t = _961 + 32
                                u = mem[64]
                                s = mem[_961]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_961])] = mem[_961 + floor32(mem[_961]) + -(mem[_961] % 32) + 64 len mem[_961] % 32] or Mask(8 * -(mem[_961] % 32) + 32, -(8 * -(mem[_961] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_961])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _964 + _960 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1395 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1395] = return_data.size
                                    mem[_1395 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1395 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _758 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_758] = 26
                    mem[_758 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                        _846 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_846] = 26
                        mem[_846 + 32] = 'SafeMath: division by zero'
                        _858 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_858] = 26
                        mem[_858 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_850] = 26
                        mem[_850 + 32] = 'SafeMath: division by zero'
                        _866 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_866] = 26
                        mem[_866 + 32] = 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _1013 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _1015 = mem[_1013]
                                t = _1013 + 32
                                u = _1013 + 32
                                s = mem[_1013]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1013 + floor32(mem[_1013]) + 32] = mem[_1013 + -(mem[_1013] % 32) + floor32(mem[_1013]) + 64 len mem[_1013] % 32] or Mask(8 * -(mem[_1013] % 32) + 32, -(8 * -(mem[_1013] % 32) + 32) + 256, mem[_1013 + floor32(mem[_1013]) + 32])
                                call msg.sender.mem[_1013 + 32 len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[_1013 + 36 len _1015 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_1013 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    mem[64] = _1013 + ceil32(return_data.size) + 33
                                    mem[_1013 + 32] = return_data.size
                                    mem[_1013 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_1013 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                _1008 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                _1009 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1009 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1009 + 36 len 28]
                                _1012 = mem[_1009]
                                t = _1009 + 32
                                u = mem[64]
                                s = mem[_1009]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1009])] = mem[_1009 + floor32(mem[_1009]) + -(mem[_1009] % 32) + 64 len mem[_1009] % 32] or Mask(8 * -(mem[_1009] % 32) + 32, -(8 * -(mem[_1009] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1009])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1012 + _1008 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1393] = return_data.size
                                    mem[_1393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1393 + 32]:
                                            revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                _688 = mem[64]
                mem[64] = mem[64] + 64
                mem[_688] = 30
                mem[_688 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _695 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _695 + 68] = mem[idx + _688 + 32]
                        idx = idx + 32
                        continue 
                    mem[_695 + 68] = mem[_695 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _695 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 118
                if not sub_a8c7a08a[address(msg.sender)]:
                    _747 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_747] = 26
                    mem[_747 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                        _840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_840] = 26
                        mem[_840 + 32] = 'SafeMath: division by zero'
                        _856 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_856] = 26
                        mem[_856 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _856 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _931 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _933 = mem[_931]
                                t = _931 + 32
                                u = mem[64]
                                s = mem[_931]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_931])] = mem[_931 + floor32(mem[_931]) + -(mem[_931] % 32) + 64 len mem[_931] % 32] or Mask(8 * -(mem[_931] % 32) + 32, -(8 * -(mem[_931] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_931])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _933 + _931 + -mem[64] + 28]
                                if return_data.size:
                                    _1412 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1412] = return_data.size
                                    mem[_1412 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _926 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _927 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_927 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_927 + 36 len 28]
                                _930 = mem[_927]
                                t = _927 + 32
                                u = _926 + 100
                                s = mem[_927]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_926 + floor32(mem[_927]) + 100] = mem[_927 + -(mem[_927] % 32) + floor32(mem[_927]) + 64 len mem[_927] % 32] or Mask(8 * -(mem[_927] % 32) + 32, -(8 * -(mem[_927] % 32) + 32) + 256, mem[_926 + floor32(mem[_927]) + 100])
                                call sub_8ef4403c[idx].mem[_926 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_926 + 104 len _930 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_926 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _926 + ceil32(return_data.size) + 101
                                    mem[_926 + 100] = return_data.size
                                    mem[_926 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_926 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_926 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_849] = 26
                        mem[_849 + 32] = 'SafeMath: division by zero'
                        _861 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_861] = 26
                        mem[_861 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _861 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _981 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _983 = mem[_981]
                                t = _981 + 32
                                u = _981 + 32
                                s = mem[_981]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_981 + floor32(mem[_981]) + 32] = mem[_981 + -(mem[_981] % 32) + floor32(mem[_981]) + 64 len mem[_981] % 32] or Mask(8 * -(mem[_981] % 32) + 32, -(8 * -(mem[_981] % 32) + 32) + 256, mem[_981 + floor32(mem[_981]) + 32])
                                call msg.sender.mem[_981 + 32 len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[_981 + 36 len _983 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_981 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _981 + ceil32(return_data.size) + 33
                                    mem[_981 + 32] = return_data.size
                                    mem[_981 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_981 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _976 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _977 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_977 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_977 + 36 len 28]
                                _980 = mem[_977]
                                t = _977 + 32
                                u = _976 + 100
                                s = mem[_977]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_976 + floor32(mem[_977]) + 100] = mem[_977 + -(mem[_977] % 32) + floor32(mem[_977]) + 64 len mem[_977] % 32] or Mask(8 * -(mem[_977] % 32) + 32, -(8 * -(mem[_977] % 32) + 32) + 256, mem[_976 + floor32(mem[_977]) + 100])
                                call sub_8ef4403c[idx].mem[_976 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_976 + 104 len _980 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_976 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _976 + ceil32(return_data.size) + 101
                                    mem[_976 + 100] = return_data.size
                                    mem[_976 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_976 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_976 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                else:
                    if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_759] = 26
                    mem[_759 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                        _848 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_848] = 26
                        mem[_848 + 32] = 'SafeMath: division by zero'
                        _860 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_860] = 26
                        mem[_860 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _860 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _973 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _975 = mem[_973]
                                t = _973 + 32
                                u = mem[64]
                                s = mem[_973]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_973])] = mem[_973 + floor32(mem[_973]) + -(mem[_973] % 32) + 64 len mem[_973] % 32] or Mask(8 * -(mem[_973] % 32) + 32, -(8 * -(mem[_973] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_973])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _975 + _973 + -mem[64] + 28]
                                if return_data.size:
                                    _1404 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1404] = return_data.size
                                    mem[_1404 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _968 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _969 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_969 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_969 + 36 len 28]
                                _972 = mem[_969]
                                t = _969 + 32
                                u = _968 + 100
                                s = mem[_969]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_968 + floor32(mem[_969]) + 100] = mem[_969 + -(mem[_969] % 32) + floor32(mem[_969]) + 64 len mem[_969] % 32] or Mask(8 * -(mem[_969] % 32) + 32, -(8 * -(mem[_969] % 32) + 32) + 256, mem[_968 + floor32(mem[_969]) + 100])
                                call sub_8ef4403c[idx].mem[_968 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_968 + 104 len _972 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_968 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _968 + ceil32(return_data.size) + 101
                                    mem[_968 + 100] = return_data.size
                                    mem[_968 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_968 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_968 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _851 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_851] = 26
                        mem[_851 + 32] = 'SafeMath: division by zero'
                        _867 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_867] = 26
                        mem[_867 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _867 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _1029 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _1031 = mem[_1029]
                                t = _1029 + 32
                                u = mem[64]
                                s = mem[_1029]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1029])] = mem[_1029 + floor32(mem[_1029]) + -(mem[_1029] % 32) + 64 len mem[_1029] % 32] or Mask(8 * -(mem[_1029] % 32) + 32, -(8 * -(mem[_1029] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1029])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1031 + _1029 + -mem[64] + 28]
                                if return_data.size:
                                    _1400 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1400] = return_data.size
                                    mem[_1400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _1024 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _1025 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1025 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1025 + 36 len 28]
                                _1028 = mem[_1025]
                                t = _1025 + 32
                                u = _1024 + 100
                                s = mem[_1025]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1024 + floor32(mem[_1025]) + 100] = mem[_1025 + -(mem[_1025] % 32) + floor32(mem[_1025]) + 64 len mem[_1025] % 32] or Mask(8 * -(mem[_1025] % 32) + 32, -(8 * -(mem[_1025] % 32) + 32) + 256, mem[_1024 + floor32(mem[_1025]) + 100])
                                call sub_8ef4403c[idx].mem[_1024 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1024 + 104 len _1028 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1024 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _1024 + ceil32(return_data.size) + 101
                                    mem[_1024 + 100] = return_data.size
                                    mem[_1024 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1024 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1024 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_8ef4403c.length:
        mem[0] = sub_8ef4403c[idx]
        mem[32] = sha3(address(msg.sender), 111)
        sub_7ec475a8[address(msg.sender)][stor103[idx]] = sub_420480b8[stor103[idx]]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = sub_8ef4403c[idx]
        mem[mem[64] + 64] = sub_420480b8[stor103[idx]]
        emit StakerSnapshotsUpdated(msg.sender, sub_8ef4403c[idx], sub_420480b8[stor103[idx]]);
        idx = idx + 1
        continue 
    if arg1:
        if arg1 < sub_a8c7a08a[msg.sender]:
            if arg1 > sub_a8c7a08a[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + sub_443ea0fd[msg.sender] < sub_443ea0fd[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if unlockPeriod + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(vETokenAddress)
            call vETokenAddress.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_a8c7a08a[msg.sender] -= arg1
            emit 0x7257c0a3: (sub_a8c7a08a[msg.sender] - arg1), msg.sender
            if arg1 > sub_c00c4da1:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_c00c4da1 -= arg1
            emit 0xa777ef2b: (sub_c00c4da1 - arg1)
            sub_443ea0fd[msg.sender] += arg1
            emit 0xbd8a48d0: (arg1 + sub_443ea0fd[msg.sender]), msg.sender
            if arg1 + sub_f0cc490e < sub_f0cc490e:
                revert with 0, 'SafeMath: addition overflow'
            sub_f0cc490e += arg1
            emit 0x20e7bfc8: (arg1 + sub_f0cc490e)
        else:
            if sub_a8c7a08a[msg.sender] > sub_a8c7a08a[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_a8c7a08a[msg.sender] + sub_443ea0fd[msg.sender] < sub_443ea0fd[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if unlockPeriod + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(vETokenAddress)
            call vETokenAddress.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_a8c7a08a[msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_a8c7a08a[msg.sender] = 0
            emit 0x7257c0a3: 0, msg.sender
            if sub_a8c7a08a[msg.sender] > sub_c00c4da1:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_c00c4da1 -= sub_a8c7a08a[msg.sender]
            emit 0xa777ef2b: (sub_c00c4da1 - sub_a8c7a08a[msg.sender])
            sub_443ea0fd[msg.sender] += sub_a8c7a08a[msg.sender]
            emit 0xbd8a48d0: (sub_a8c7a08a[msg.sender] + sub_443ea0fd[msg.sender]), msg.sender
            if sub_a8c7a08a[msg.sender] + sub_f0cc490e < sub_f0cc490e:
                revert with 0, 'SafeMath: addition overflow'
            sub_f0cc490e += sub_a8c7a08a[msg.sender]
            emit 0x20e7bfc8: (sub_a8c7a08a[msg.sender] + sub_f0cc490e)
        unlockTime[msg.sender] = unlockPeriod + block.timestamp
        emit 0xdbea72ca: (unlockPeriod + block.timestamp), msg.sender
    stor112 = 1
}

function unstake(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor112 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor112 = 2
    mem[0] = msg.sender
    mem[32] = 109
    if stakes[msg.sender] <= 0:
        revert with 0, 'user must have a non-zero stake'
    idx = 0
    while idx < sub_8ef4403c.length:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
            mem[0] = sub_8ef4403c[idx]
            mem[32] = 110
            _691 = mem[64]
            mem[64] = mem[64] + 64
            mem[_691] = 30
            mem[_691 + 32] = 'SafeMath: subtraction overflow'
            if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                _696 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _696 + 68] = mem[idx + _691 + 32]
                    idx = idx + 32
                    continue 
                mem[_696 + 68] = mem[_696 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _696 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 118
            if sub_a8c7a08a[address(msg.sender)]:
                if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _781 = mem[64]
                mem[64] = mem[64] + 64
                mem[_781] = 26
                mem[_781 + 32] = 'SafeMath: division by zero'
                if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                    _873 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_873] = 26
                    mem[_873 + 32] = 'SafeMath: division by zero'
                    _889 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_889] = 26
                    mem[_889 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_881] = 26
                    mem[_881 + 32] = 'SafeMath: division by zero'
                    _893 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_893] = 26
                    mem[_893 + 32] = 'SafeMath: division by zero'
                    if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _985 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _987 = mem[_985]
                            t = _985 + 32
                            u = mem[64]
                            s = mem[_985]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_985])] = mem[_985 + floor32(mem[_985]) + -(mem[_985] % 32) + 64 len mem[_985] % 32] or Mask(8 * -(mem[_985] % 32) + 32, -(8 * -(mem[_985] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_985])])
                            call msg.sender.mem[mem[64] len 4] with:
                               value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _987 + _985 + -mem[64] + 28]
                            if return_data.size:
                                _1454 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1454] = return_data.size
                                mem[_1454 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            _980 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            _981 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_981 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_981 + 36 len 28]
                            _984 = mem[_981]
                            t = _981 + 32
                            u = _980 + 100
                            s = mem[_981]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_980 + floor32(mem[_981]) + 100] = mem[_981 + -(mem[_981] % 32) + floor32(mem[_981]) + 64 len mem[_981] % 32] or Mask(8 * -(mem[_981] % 32) + 32, -(8 * -(mem[_981] % 32) + 32) + 256, mem[_980 + floor32(mem[_981]) + 100])
                            call sub_8ef4403c[idx].mem[_980 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_980 + 104 len _984 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_980 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                mem[64] = _980 + ceil32(return_data.size) + 101
                                mem[_980 + 100] = return_data.size
                                mem[_980 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_980 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_980 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                _756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_756] = 26
                mem[_756 + 32] = 'SafeMath: division by zero'
                if sub_443ea0fd[address(msg.sender)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                    _866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_866] = 26
                    mem[_866 + 32] = 'SafeMath: division by zero'
                    _888 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_888] = 26
                    mem[_888 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _874 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_874] = 26
                    mem[_874 + 32] = 'SafeMath: division by zero'
                    _890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_890] = 26
                    mem[_890 + 32] = 'SafeMath: division by zero'
                    if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _958 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _960 = mem[_958]
                            t = _958 + 32
                            u = mem[64]
                            s = mem[_958]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_958])] = mem[_958 + floor32(mem[_958]) + -(mem[_958] % 32) + 64 len mem[_958] % 32] or Mask(8 * -(mem[_958] % 32) + 32, -(8 * -(mem[_958] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_958])])
                            call msg.sender.mem[mem[64] len 4] with:
                               value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _960 + _958 + -mem[64] + 28]
                            if return_data.size:
                                _1456 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1456] = return_data.size
                                mem[_1456 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                        else:
                            _953 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            _954 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_954 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_954 + 36 len 28]
                            _957 = mem[_954]
                            t = _954 + 32
                            u = mem[64]
                            s = mem[_954]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_954])] = mem[_954 + floor32(mem[_954]) + -(mem[_954] % 32) + 64 len mem[_954] % 32] or Mask(8 * -(mem[_954] % 32) + 32, -(8 * -(mem[_954] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_954])])
                            call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _957 + _953 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                            else:
                                _1455 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1455] = return_data.size
                                mem[_1455 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1455 + 32]:
                                        revert with 0, '!safeTransfer'
                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                    emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
        else:
            require ext_code.size(sub_8ef4403c[idx])
            staticcall sub_8ef4403c[idx].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_8ef4403c[idx]
            mem[32] = 110
            if uint8(ext_call.return_data[0]) >= 18:
                _705 = mem[64]
                mem[64] = mem[64] + 64
                mem[_705] = 30
                mem[_705 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _710 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _710 + 68] = mem[idx + _705 + 32]
                        idx = idx + 32
                        continue 
                    mem[_710 + 68] = mem[_710 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _710 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 118
                if not sub_a8c7a08a[address(msg.sender)]:
                    _782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_782] = 26
                    mem[_782 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                        _875 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_875] = 26
                        mem[_875 + 32] = 'SafeMath: division by zero'
                        _891 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_891] = 26
                        mem[_891 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _883 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_883] = 26
                        mem[_883 + 32] = 'SafeMath: division by zero'
                        _895 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_895] = 26
                        mem[_895 + 32] = 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _1001 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _1003 = mem[_1001]
                                t = _1001 + 32
                                u = mem[64]
                                s = mem[_1001]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1001])] = mem[_1001 + floor32(mem[_1001]) + -(mem[_1001] % 32) + 64 len mem[_1001] % 32] or Mask(8 * -(mem[_1001] % 32) + 32, -(8 * -(mem[_1001] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1001])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1003 + _1001 + -mem[64] + 28]
                                if return_data.size:
                                    _1432 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1432] = return_data.size
                                    mem[_1432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                _996 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                _997 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_997 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_997 + 36 len 28]
                                _1000 = mem[_997]
                                t = _997 + 32
                                u = _996 + 100
                                s = mem[_997]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_996 + floor32(mem[_997]) + 100] = mem[_997 + -(mem[_997] % 32) + floor32(mem[_997]) + 64 len mem[_997] % 32] or Mask(8 * -(mem[_997] % 32) + 32, -(8 * -(mem[_997] % 32) + 32) + 256, mem[_996 + floor32(mem[_997]) + 100])
                                call sub_8ef4403c[idx].mem[_996 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_996 + 104 len _1000 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_996 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    mem[64] = _996 + ceil32(return_data.size) + 101
                                    mem[_996 + 100] = return_data.size
                                    mem[_996 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_996 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_996 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_794] = 26
                    mem[_794 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                        _882 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_882] = 26
                        mem[_882 + 32] = 'SafeMath: division by zero'
                        _894 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_894] = 26
                        mem[_894 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _886 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_886] = 26
                        mem[_886 + 32] = 'SafeMath: division by zero'
                        _902 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_902] = 26
                        mem[_902 + 32] = 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _1049 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _1051 = mem[_1049]
                                t = _1049 + 32
                                u = _1049 + 32
                                s = mem[_1049]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1049 + floor32(mem[_1049]) + 32] = mem[_1049 + -(mem[_1049] % 32) + floor32(mem[_1049]) + 64 len mem[_1049] % 32] or Mask(8 * -(mem[_1049] % 32) + 32, -(8 * -(mem[_1049] % 32) + 32) + 256, mem[_1049 + floor32(mem[_1049]) + 32])
                                call msg.sender.mem[_1049 + 32 len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[_1049 + 36 len _1051 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_1049 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    mem[64] = _1049 + ceil32(return_data.size) + 33
                                    mem[_1049 + 32] = return_data.size
                                    mem[_1049 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_1049 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                _1044 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                _1045 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1045 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1045 + 36 len 28]
                                _1048 = mem[_1045]
                                t = _1045 + 32
                                u = _1044 + 100
                                s = mem[_1045]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1044 + floor32(mem[_1045]) + 100] = mem[_1045 + -(mem[_1045] % 32) + floor32(mem[_1045]) + 64 len mem[_1045] % 32] or Mask(8 * -(mem[_1045] % 32) + 32, -(8 * -(mem[_1045] % 32) + 32) + 256, mem[_1044 + floor32(mem[_1045]) + 100])
                                call sub_8ef4403c[idx].mem[_1044 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1044 + 104 len _1048 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1044 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    mem[64] = _1044 + ceil32(return_data.size) + 101
                                    mem[_1044 + 100] = return_data.size
                                    mem[_1044 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1044 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1044 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                _706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_706] = 30
                mem[_706 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _713 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _713 + 68] = mem[idx + _706 + 32]
                        idx = idx + 32
                        continue 
                    mem[_713 + 68] = mem[_713 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _713 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 118
                if not sub_a8c7a08a[address(msg.sender)]:
                    _783 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_783] = 26
                    mem[_783 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _885 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_885] = 26
                        mem[_885 + 32] = 'SafeMath: division by zero'
                        _897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_897] = 26
                        mem[_897 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _897 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _1017 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _1019 = mem[_1017]
                                t = _1017 + 32
                                u = mem[64]
                                s = mem[_1017]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1017])] = mem[_1017 + floor32(mem[_1017]) + -(mem[_1017] % 32) + 64 len mem[_1017] % 32] or Mask(8 * -(mem[_1017] % 32) + 32, -(8 * -(mem[_1017] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1017])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1019 + _1017 + -mem[64] + 28]
                                if return_data.size:
                                    _1444 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1444] = return_data.size
                                    mem[_1444 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _1012 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _1013 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1013 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1013 + 36 len 28]
                                _1016 = mem[_1013]
                                t = _1013 + 32
                                u = _1012 + 100
                                s = mem[_1013]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1012 + floor32(mem[_1013]) + 100] = mem[_1013 + -(mem[_1013] % 32) + floor32(mem[_1013]) + 64 len mem[_1013] % 32] or Mask(8 * -(mem[_1013] % 32) + 32, -(8 * -(mem[_1013] % 32) + 32) + 256, mem[_1012 + floor32(mem[_1013]) + 100])
                                call sub_8ef4403c[idx].mem[_1012 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1012 + 104 len _1016 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1012 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _1012 + ceil32(return_data.size) + 101
                                    mem[_1012 + 100] = return_data.size
                                    mem[_1012 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1012 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1012 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        _876 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_876] = 26
                        mem[_876 + 32] = 'SafeMath: division by zero'
                        _892 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_892] = 26
                        mem[_892 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _892 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _967 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _969 = mem[_967]
                                t = _967 + 32
                                u = mem[64]
                                s = mem[_967]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_967])] = mem[_967 + floor32(mem[_967]) + -(mem[_967] % 32) + 64 len mem[_967] % 32] or Mask(8 * -(mem[_967] % 32) + 32, -(8 * -(mem[_967] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_967])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _969 + _967 + -mem[64] + 28]
                                if return_data.size:
                                    _1448 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1448] = return_data.size
                                    mem[_1448 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                            else:
                                _962 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _963 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_963 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_963 + 36 len 28]
                                _966 = mem[_963]
                                t = _963 + 32
                                u = mem[64]
                                s = mem[_963]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_963])] = mem[_963 + floor32(mem[_963]) + -(mem[_963] % 32) + 64 len mem[_963] % 32] or Mask(8 * -(mem[_963] % 32) + 32, -(8 * -(mem[_963] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_963])])
                                call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _966 + _962 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                else:
                                    _1447 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1447] = return_data.size
                                    mem[_1447 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1447 + 32]:
                                            revert with 0, '!safeTransfer'
                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                else:
                    if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_795] = 26
                    mem[_795 + 32] = 'SafeMath: division by zero'
                    if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                        _884 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_884] = 26
                        mem[_884 + 32] = 'SafeMath: division by zero'
                        _896 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_896] = 26
                        mem[_896 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _896 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _1009 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _1011 = mem[_1009]
                                t = _1009 + 32
                                u = mem[64]
                                s = mem[_1009]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1009])] = mem[_1009 + floor32(mem[_1009]) + -(mem[_1009] % 32) + 64 len mem[_1009] % 32] or Mask(8 * -(mem[_1009] % 32) + 32, -(8 * -(mem[_1009] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1009])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1011 + _1009 + -mem[64] + 28]
                                if return_data.size:
                                    _1440 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1440] = return_data.size
                                    mem[_1440 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _1004 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _1005 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1005 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1005 + 36 len 28]
                                _1008 = mem[_1005]
                                t = _1005 + 32
                                u = _1004 + 100
                                s = mem[_1005]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1004 + floor32(mem[_1005]) + 100] = mem[_1005 + -(mem[_1005] % 32) + floor32(mem[_1005]) + 64 len mem[_1005] % 32] or Mask(8 * -(mem[_1005] % 32) + 32, -(8 * -(mem[_1005] % 32) + 32) + 256, mem[_1004 + floor32(mem[_1005]) + 100])
                                call sub_8ef4403c[idx].mem[_1004 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1004 + 104 len _1008 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1004 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _1004 + ceil32(return_data.size) + 101
                                    mem[_1004 + 100] = return_data.size
                                    mem[_1004 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1004 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1004 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _887 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_887] = 26
                        mem[_887 + 32] = 'SafeMath: division by zero'
                        _903 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_903] = 26
                        mem[_903 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _903 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _1065 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _1067 = mem[_1065]
                                t = _1065 + 32
                                u = mem[64]
                                s = mem[_1065]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1065])] = mem[_1065 + floor32(mem[_1065]) + -(mem[_1065] % 32) + 64 len mem[_1065] % 32] or Mask(8 * -(mem[_1065] % 32) + 32, -(8 * -(mem[_1065] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1065])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1067 + _1065 + -mem[64] + 28]
                                if return_data.size:
                                    _1436 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1436] = return_data.size
                                    mem[_1436 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _1060 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _1061 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1061 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1061 + 36 len 28]
                                _1064 = mem[_1061]
                                t = _1061 + 32
                                u = _1060 + 100
                                s = mem[_1061]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1060 + floor32(mem[_1061]) + 100] = mem[_1061 + -(mem[_1061] % 32) + floor32(mem[_1061]) + 64 len mem[_1061] % 32] or Mask(8 * -(mem[_1061] % 32) + 32, -(8 * -(mem[_1061] % 32) + 32) + 256, mem[_1060 + floor32(mem[_1061]) + 100])
                                call sub_8ef4403c[idx].mem[_1060 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1060 + 104 len _1064 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1060 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _1060 + ceil32(return_data.size) + 101
                                    mem[_1060 + 100] = return_data.size
                                    mem[_1060 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1060 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_1060 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_8ef4403c.length:
        mem[0] = sub_8ef4403c[idx]
        mem[32] = sha3(address(msg.sender), 111)
        sub_7ec475a8[address(msg.sender)][stor103[idx]] = sub_420480b8[stor103[idx]]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = sub_8ef4403c[idx]
        mem[mem[64] + 64] = sub_420480b8[stor103[idx]]
        emit StakerSnapshotsUpdated(msg.sender, sub_8ef4403c[idx], sub_420480b8[stor103[idx]]);
        idx = idx + 1
        continue 
    if arg1:
        if arg1 < stakes[msg.sender]:
            _1562 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1562] = 30
            mem[_1562 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > stakes[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = msg.sender
            mem[32] = 109
            stakes[msg.sender] -= arg1
            _1722 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1722] = 30
            mem[_1722 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > totalTokenStaked:
                revert with 0, 'SafeMath: subtraction overflow'
            totalTokenStaked -= arg1
            emit totalTokenStakedUpdated((totalTokenStaked - arg1));
            _1742 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1
            _1743 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1743 + 32 len 4] = unknown_0xa9059cbb(?????)
            _1746 = mem[_1743]
            mem[mem[64] len floor32(mem[_1743])] = mem[_1743 + 32 len floor32(mem[_1743])]
            mem[mem[64] + floor32(mem[_1743]) + -(mem[_1743] % 32) + 32 len mem[_1743] % 32] = mem[_1743 + floor32(mem[_1743]) + -(mem[_1743] % 32) + 64 len mem[_1743] % 32]
            call stakeTokenAddress with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1746 + _1742 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, '!safeTransfer'
            else:
                _1820 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1820 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1820 + 32]:
                        revert with 0, '!safeTransfer'
            emit StakeChanged((stakes[msg.sender] - arg1), msg.sender);
        else:
            _1563 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1563] = 30
            mem[_1563 + 32] = 'SafeMath: subtraction overflow'
            if stakes[msg.sender] > stakes[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = msg.sender
            mem[32] = 109
            stakes[msg.sender] = 0
            _1724 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1724] = 30
            mem[_1724 + 32] = 'SafeMath: subtraction overflow'
            if stakes[msg.sender] > totalTokenStaked:
                revert with 0, 'SafeMath: subtraction overflow'
            totalTokenStaked -= stakes[msg.sender]
            emit totalTokenStakedUpdated((totalTokenStaked - stakes[msg.sender]));
            _1748 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = stakes[msg.sender]
            _1749 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1749 + 32 len 4] = unknown_0xa9059cbb(?????)
            _1752 = mem[_1749]
            mem[mem[64] len floor32(mem[_1749])] = mem[_1749 + 32 len floor32(mem[_1749])]
            mem[mem[64] + floor32(mem[_1749]) + -(mem[_1749] % 32) + 32 len mem[_1749] % 32] = mem[_1749 + floor32(mem[_1749]) + -(mem[_1749] % 32) + 64 len mem[_1749] % 32]
            call stakeTokenAddress with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1752 + _1748 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, '!safeTransfer'
            else:
                _1825 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1825 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1825 + 32]:
                        revert with 0, '!safeTransfer'
            emit StakeChanged(0, msg.sender);
    stor112 = 1
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor112 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor112 = 2
    if arg1 <= 0:
        revert with 0, 'amount must be non-zero'
    mem[0] = msg.sender
    mem[32] = 118
    if not sub_a8c7a08a[address(msg.sender)]:
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if sub_443ea0fd[address(msg.sender)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
            idx = 0
            while idx < sub_8ef4403c.length:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                    mem[0] = sub_8ef4403c[idx]
                    mem[32] = 110
                    _1275 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1275] = 30
                    mem[_1275 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                        _1293 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1293 + 68] = mem[idx + _1275 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1293 + 68] = mem[_1293 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1293 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 118
                    if not sub_a8c7a08a[address(msg.sender)]:
                        _1379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1379] = 26
                        mem[_1379 + 32] = 'SafeMath: division by zero'
                        if sub_443ea0fd[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                            _1451 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1451] = 26
                            mem[_1451 + 32] = 'SafeMath: division by zero'
                            _1495 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1495] = 26
                            mem[_1495 + 32] = 'SafeMath: division by zero'
                            mem[mem[64]] = 0
                            emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                        else:
                            if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1467 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1467] = 26
                            mem[_1467 + 32] = 'SafeMath: division by zero'
                            _1499 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1499] = 26
                            mem[_1499 + 32] = 'SafeMath: division by zero'
                            if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                    _1637 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    _1639 = mem[_1637]
                                    t = _1637 + 32
                                    u = _1637 + 32
                                    s = mem[_1637]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1637 + floor32(mem[_1637]) + 32] = mem[_1637 + -(mem[_1637] % 32) + floor32(mem[_1637]) + 64 len mem[_1637] % 32] or Mask(8 * -(mem[_1637] % 32) + 32, -(8 * -(mem[_1637] % 32) + 32) + 256, mem[_1637 + floor32(mem[_1637]) + 32])
                                    call msg.sender.mem[_1637 + 32 len 4] with:
                                       value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[_1637 + 36 len _1639 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[_1637 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        mem[64] = _1637 + ceil32(return_data.size) + 33
                                        mem[_1637 + 32] = return_data.size
                                        mem[_1637 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[_1637 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    _1632 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    _1633 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_1633 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1633 + 36 len 28]
                                    _1636 = mem[_1633]
                                    t = _1633 + 32
                                    u = _1632 + 100
                                    s = mem[_1633]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1632 + floor32(mem[_1633]) + 100] = mem[_1633 + -(mem[_1633] % 32) + floor32(mem[_1633]) + 64 len mem[_1633] % 32] or Mask(8 * -(mem[_1633] % 32) + 32, -(8 * -(mem[_1633] % 32) + 32) + 256, mem[_1632 + floor32(mem[_1633]) + 100])
                                    call sub_8ef4403c[idx].mem[_1632 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1632 + 104 len _1636 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1632 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        mem[64] = _1632 + ceil32(return_data.size) + 101
                                        mem[_1632 + 100] = return_data.size
                                        mem[_1632 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_1632 + 132]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1632 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1389] = 26
                        mem[_1389 + 32] = 'SafeMath: division by zero'
                        if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                            _1466 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1466] = 26
                            mem[_1466 + 32] = 'SafeMath: division by zero'
                            _1498 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1498] = 26
                            mem[_1498 + 32] = 'SafeMath: division by zero'
                            mem[mem[64]] = 0
                            emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                        else:
                            if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1481 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1481] = 26
                            mem[_1481 + 32] = 'SafeMath: division by zero'
                            _1505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1505] = 26
                            mem[_1505 + 32] = 'SafeMath: division by zero'
                            if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                    _1699 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    _1701 = mem[_1699]
                                    t = _1699 + 32
                                    u = mem[64]
                                    s = mem[_1699]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1699])] = mem[_1699 + floor32(mem[_1699]) + -(mem[_1699] % 32) + 64 len mem[_1699] % 32] or Mask(8 * -(mem[_1699] % 32) + 32, -(8 * -(mem[_1699] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1699])])
                                    call msg.sender.mem[mem[64] len 4] with:
                                       value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1701 + _1699 + -mem[64] + 28]
                                    if return_data.size:
                                        _2633 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2633] = return_data.size
                                        mem[_2633 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                else:
                                    _1694 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    _1695 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_1695 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1695 + 36 len 28]
                                    _1698 = mem[_1695]
                                    t = _1695 + 32
                                    u = mem[64]
                                    s = mem[_1695]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1695])] = mem[_1695 + floor32(mem[_1695]) + -(mem[_1695] % 32) + 64 len mem[_1695] % 32] or Mask(8 * -(mem[_1695] % 32) + 32, -(8 * -(mem[_1695] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1695])])
                                    call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1698 + _1694 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, '!safeTransfer'
                                    else:
                                        _2632 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2632] = return_data.size
                                        mem[_2632 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_2632 + 32]:
                                                revert with 0, '!safeTransfer'
                            mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    require ext_code.size(sub_8ef4403c[idx])
                    staticcall sub_8ef4403c[idx].0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = sub_8ef4403c[idx]
                    mem[32] = 110
                    if uint8(ext_call.return_data[0]) >= 18:
                        _1306 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1306] = 30
                        mem[_1306 + 32] = 'SafeMath: subtraction overflow'
                        if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                            _1326 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1326 + 68] = mem[idx + _1306 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1326 + 68] = mem[_1326 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1326 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 118
                        if not sub_a8c7a08a[address(msg.sender)]:
                            _1392 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1392] = 26
                            mem[_1392 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                                _1470 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1470] = 26
                                mem[_1470 + 32] = 'SafeMath: division by zero'
                                _1502 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1502] = 26
                                mem[_1502 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0
                                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1487 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1487] = 26
                                mem[_1487 + 32] = 'SafeMath: division by zero'
                                _1514 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1514] = 26
                                mem[_1514 + 32] = 'SafeMath: division by zero'
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1749 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1751 = mem[_1749]
                                        t = _1749 + 32
                                        u = mem[64]
                                        s = mem[_1749]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1749])] = mem[_1749 + floor32(mem[_1749]) + -(mem[_1749] % 32) + 64 len mem[_1749] % 32] or Mask(8 * -(mem[_1749] % 32) + 32, -(8 * -(mem[_1749] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1749])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1751 + _1749 + -mem[64] + 28]
                                        if return_data.size:
                                            _2611 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2611] = return_data.size
                                            mem[_2611 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1744 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        _1745 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1745 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1745 + 36 len 28]
                                        _1748 = mem[_1745]
                                        t = _1745 + 32
                                        u = mem[64]
                                        s = mem[_1745]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1745])] = mem[_1745 + floor32(mem[_1745]) + -(mem[_1745] % 32) + 64 len mem[_1745] % 32] or Mask(8 * -(mem[_1745] % 32) + 32, -(8 * -(mem[_1745] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1745])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1748 + _1744 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2610 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2610] = return_data.size
                                            mem[_2610 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2610 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                        else:
                            if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1396 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1396] = 26
                            mem[_1396 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                                _1486 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1486] = 26
                                mem[_1486 + 32] = 'SafeMath: division by zero'
                                _1513 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1513] = 26
                                mem[_1513 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0
                                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1493 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1493] = 26
                                mem[_1493 + 32] = 'SafeMath: division by zero'
                                _1532 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1532] = 26
                                mem[_1532 + 32] = 'SafeMath: division by zero'
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1859 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1861 = mem[_1859]
                                        t = _1859 + 32
                                        u = mem[64]
                                        s = mem[_1859]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1859])] = mem[_1859 + floor32(mem[_1859]) + -(mem[_1859] % 32) + 64 len mem[_1859] % 32] or Mask(8 * -(mem[_1859] % 32) + 32, -(8 * -(mem[_1859] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1859])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1861 + _1859 + -mem[64] + 28]
                                        if return_data.size:
                                            _2609 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2609] = return_data.size
                                            mem[_2609 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1854 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        _1855 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1855 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1855 + 36 len 28]
                                        _1858 = mem[_1855]
                                        t = _1855 + 32
                                        u = mem[64]
                                        s = mem[_1855]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1855])] = mem[_1855 + floor32(mem[_1855]) + -(mem[_1855] % 32) + 64 len mem[_1855] % 32] or Mask(8 * -(mem[_1855] % 32) + 32, -(8 * -(mem[_1855] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1855])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1858 + _1854 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2608 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2608] = return_data.size
                                            mem[_2608 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2608 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                    else:
                        _1307 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1307] = 30
                        mem[_1307 + 32] = 'SafeMath: subtraction overflow'
                        if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                            _1329 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1329 + 68] = mem[idx + _1307 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1329 + 68] = mem[_1329 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1329 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 118
                        if not sub_a8c7a08a[address(msg.sender)]:
                            _1393 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1393] = 26
                            mem[_1393 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                                _1471 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1471] = 26
                                mem[_1471 + 32] = 'SafeMath: division by zero'
                                _1503 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1503] = 26
                                mem[_1503 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1503 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1657 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1659 = mem[_1657]
                                        t = _1657 + 32
                                        u = mem[64]
                                        s = mem[_1657]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1657])] = mem[_1657 + floor32(mem[_1657]) + -(mem[_1657] % 32) + 64 len mem[_1657] % 32] or Mask(8 * -(mem[_1657] % 32) + 32, -(8 * -(mem[_1657] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1657])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1659 + _1657 + -mem[64] + 28]
                                        if return_data.size:
                                            _2627 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2627] = return_data.size
                                            mem[_2627 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1652 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1653 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1653 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1653 + 36 len 28]
                                        _1656 = mem[_1653]
                                        t = _1653 + 32
                                        u = mem[64]
                                        s = mem[_1653]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1653])] = mem[_1653 + floor32(mem[_1653]) + -(mem[_1653] % 32) + 64 len mem[_1653] % 32] or Mask(8 * -(mem[_1653] % 32) + 32, -(8 * -(mem[_1653] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1653])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1656 + _1652 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2626 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2626] = return_data.size
                                            mem[_2626 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2626 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1489 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1489] = 26
                                mem[_1489 + 32] = 'SafeMath: division by zero'
                                _1516 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1516] = 26
                                mem[_1516 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1516 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1765 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1767 = mem[_1765]
                                        t = _1765 + 32
                                        u = mem[64]
                                        s = mem[_1765]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1765])] = mem[_1765 + floor32(mem[_1765]) + -(mem[_1765] % 32) + 64 len mem[_1765] % 32] or Mask(8 * -(mem[_1765] % 32) + 32, -(8 * -(mem[_1765] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1765])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1767 + _1765 + -mem[64] + 28]
                                        if return_data.size:
                                            _2623 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2623] = return_data.size
                                            mem[_2623 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1760 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1761 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1761 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1761 + 36 len 28]
                                        _1764 = mem[_1761]
                                        t = _1761 + 32
                                        u = mem[64]
                                        s = mem[_1761]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1761])] = mem[_1761 + floor32(mem[_1761]) + -(mem[_1761] % 32) + 64 len mem[_1761] % 32] or Mask(8 * -(mem[_1761] % 32) + 32, -(8 * -(mem[_1761] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1761])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1764 + _1760 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2622 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2622] = return_data.size
                                            mem[_2622 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2622 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                        else:
                            if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1397 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1397] = 26
                            mem[_1397 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                                _1488 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1488] = 26
                                mem[_1488 + 32] = 'SafeMath: division by zero'
                                _1515 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1515] = 26
                                mem[_1515 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1515 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1757 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1759 = mem[_1757]
                                        t = _1757 + 32
                                        u = _1757 + 32
                                        s = mem[_1757]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1757 + floor32(mem[_1757]) + 32] = mem[_1757 + -(mem[_1757] % 32) + floor32(mem[_1757]) + 64 len mem[_1757] % 32] or Mask(8 * -(mem[_1757] % 32) + 32, -(8 * -(mem[_1757] % 32) + 32) + 256, mem[_1757 + floor32(mem[_1757]) + 32])
                                        call msg.sender.mem[_1757 + 32 len 4] with:
                                           value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[_1757 + 36 len _1759 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1757 + 32] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        else:
                                            mem[64] = _1757 + ceil32(return_data.size) + 33
                                            mem[_1757 + 32] = return_data.size
                                            mem[_1757 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1757 + ceil32(return_data.size) + 33] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                    else:
                                        _1752 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1753 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1753 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1753 + 36 len 28]
                                        _1756 = mem[_1753]
                                        t = _1753 + 32
                                        u = mem[64]
                                        s = mem[_1753]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1753])] = mem[_1753 + floor32(mem[_1753]) + -(mem[_1753] % 32) + 64 len mem[_1753] % 32] or Mask(8 * -(mem[_1753] % 32) + 32, -(8 * -(mem[_1753] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1753])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1756 + _1752 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2618 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2618] = return_data.size
                                            mem[_2618 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2618 + 32]:
                                                    revert with 0, '!safeTransfer'
                                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1494 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1494] = 26
                                mem[_1494 + 32] = 'SafeMath: division by zero'
                                _1533 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1533] = 26
                                mem[_1533 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1533 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1875 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1877 = mem[_1875]
                                        t = _1875 + 32
                                        u = mem[64]
                                        s = mem[_1875]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1875])] = mem[_1875 + floor32(mem[_1875]) + -(mem[_1875] % 32) + 64 len mem[_1875] % 32] or Mask(8 * -(mem[_1875] % 32) + 32, -(8 * -(mem[_1875] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1875])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1877 + _1875 + -mem[64] + 28]
                                        if return_data.size:
                                            _2615 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2615] = return_data.size
                                            mem[_2615 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1870 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1871 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1871 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1871 + 36 len 28]
                                        _1874 = mem[_1871]
                                        t = _1871 + 32
                                        u = mem[64]
                                        s = mem[_1871]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1871])] = mem[_1871 + floor32(mem[_1871]) + -(mem[_1871] % 32) + 64 len mem[_1871] % 32] or Mask(8 * -(mem[_1871] % 32) + 32, -(8 * -(mem[_1871] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1871])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1874 + _1870 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2614 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2614] = return_data.size
                                            mem[_2614 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2614 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                idx = idx + 1
                continue 
    else:
        if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(msg.sender)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
            idx = 0
            while idx < sub_8ef4403c.length:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                    mem[0] = sub_8ef4403c[idx]
                    mem[32] = 110
                    _1274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1274] = 30
                    mem[_1274 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                        _1288 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1288 + 68] = mem[idx + _1274 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1288 + 68] = mem[_1288 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1288 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 118
                    if not sub_a8c7a08a[address(msg.sender)]:
                        _1378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1378] = 26
                        mem[_1378 + 32] = 'SafeMath: division by zero'
                        if sub_443ea0fd[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                            _1450 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1450] = 26
                            mem[_1450 + 32] = 'SafeMath: division by zero'
                            _1492 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1492] = 26
                            mem[_1492 + 32] = 'SafeMath: division by zero'
                            mem[mem[64]] = 0
                            emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                        else:
                            if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1461 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1461] = 26
                            mem[_1461 + 32] = 'SafeMath: division by zero'
                            _1497 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1497] = 26
                            mem[_1497 + 32] = 'SafeMath: division by zero'
                            if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                    _1623 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    _1625 = mem[_1623]
                                    t = _1623 + 32
                                    u = mem[64]
                                    s = mem[_1623]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1623])] = mem[_1623 + floor32(mem[_1623]) + -(mem[_1623] % 32) + 64 len mem[_1623] % 32] or Mask(8 * -(mem[_1623] % 32) + 32, -(8 * -(mem[_1623] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1623])])
                                    call msg.sender.mem[mem[64] len 4] with:
                                       value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1625 + _1623 + -mem[64] + 28]
                                    if return_data.size:
                                        _2598 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2598] = return_data.size
                                        mem[_2598 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    _1618 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    _1619 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_1619 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1619 + 36 len 28]
                                    _1622 = mem[_1619]
                                    t = _1619 + 32
                                    u = _1618 + 100
                                    s = mem[_1619]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1618 + floor32(mem[_1619]) + 100] = mem[_1619 + -(mem[_1619] % 32) + floor32(mem[_1619]) + 64 len mem[_1619] % 32] or Mask(8 * -(mem[_1619] % 32) + 32, -(8 * -(mem[_1619] % 32) + 32) + 256, mem[_1618 + floor32(mem[_1619]) + 100])
                                    call sub_8ef4403c[idx].mem[_1618 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1618 + 104 len _1622 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1618 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        mem[64] = _1618 + ceil32(return_data.size) + 101
                                        mem[_1618 + 100] = return_data.size
                                        mem[_1618 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_1618 + 132]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1618 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1384] = 26
                        mem[_1384 + 32] = 'SafeMath: division by zero'
                        if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                            _1460 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1460] = 26
                            mem[_1460 + 32] = 'SafeMath: division by zero'
                            _1496 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1496] = 26
                            mem[_1496 + 32] = 'SafeMath: division by zero'
                            mem[mem[64]] = 0
                            emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                        else:
                            if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1476 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1476] = 26
                            mem[_1476 + 32] = 'SafeMath: division by zero'
                            _1504 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1504] = 26
                            mem[_1504 + 32] = 'SafeMath: division by zero'
                            if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                    _1675 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    _1677 = mem[_1675]
                                    t = _1675 + 32
                                    u = mem[64]
                                    s = mem[_1675]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1675])] = mem[_1675 + floor32(mem[_1675]) + -(mem[_1675] % 32) + 64 len mem[_1675] % 32] or Mask(8 * -(mem[_1675] % 32) + 32, -(8 * -(mem[_1675] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1675])])
                                    call msg.sender.mem[mem[64] len 4] with:
                                       value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1677 + _1675 + -mem[64] + 28]
                                    if return_data.size:
                                        _2596 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2596] = return_data.size
                                        mem[_2596 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    _1670 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    _1671 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_1671 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1671 + 36 len 28]
                                    _1674 = mem[_1671]
                                    t = _1671 + 32
                                    u = _1670 + 100
                                    s = mem[_1671]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1670 + floor32(mem[_1671]) + 100] = mem[_1671 + -(mem[_1671] % 32) + floor32(mem[_1671]) + 64 len mem[_1671] % 32] or Mask(8 * -(mem[_1671] % 32) + 32, -(8 * -(mem[_1671] % 32) + 32) + 256, mem[_1670 + floor32(mem[_1671]) + 100])
                                    call sub_8ef4403c[idx].mem[_1670 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1670 + 104 len _1674 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1670 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        mem[64] = _1670 + ceil32(return_data.size) + 101
                                        mem[_1670 + 100] = return_data.size
                                        mem[_1670 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_1670 + 132]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1670 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    require ext_code.size(sub_8ef4403c[idx])
                    staticcall sub_8ef4403c[idx].0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = sub_8ef4403c[idx]
                    mem[32] = 110
                    if uint8(ext_call.return_data[0]) >= 18:
                        _1300 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1300] = 30
                        mem[_1300 + 32] = 'SafeMath: subtraction overflow'
                        if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                            _1314 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1314 + 68] = mem[idx + _1300 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1314 + 68] = mem[_1314 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1314 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 118
                        if not sub_a8c7a08a[address(msg.sender)]:
                            _1390 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1390] = 26
                            mem[_1390 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                                _1468 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1468] = 26
                                mem[_1468 + 32] = 'SafeMath: division by zero'
                                _1500 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1500] = 26
                                mem[_1500 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0
                                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1483 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1483] = 26
                                mem[_1483 + 32] = 'SafeMath: division by zero'
                                _1507 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1507] = 26
                                mem[_1507 + 32] = 'SafeMath: division by zero'
                                if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1715 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1717 = mem[_1715]
                                        t = _1715 + 32
                                        u = _1715 + 32
                                        s = mem[_1715]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1715 + floor32(mem[_1715]) + 32] = mem[_1715 + -(mem[_1715] % 32) + floor32(mem[_1715]) + 64 len mem[_1715] % 32] or Mask(8 * -(mem[_1715] % 32) + 32, -(8 * -(mem[_1715] % 32) + 32) + 256, mem[_1715 + floor32(mem[_1715]) + 32])
                                        call msg.sender.mem[_1715 + 32 len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                             gas gas_remaining wei
                                            args mem[_1715 + 36 len _1717 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1715 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        else:
                                            mem[64] = _1715 + ceil32(return_data.size) + 33
                                            mem[_1715 + 32] = return_data.size
                                            mem[_1715 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1715 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        _1710 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        _1711 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1711 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1711 + 36 len 28]
                                        _1714 = mem[_1711]
                                        t = _1711 + 32
                                        u = mem[64]
                                        s = mem[_1711]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1711])] = mem[_1711 + floor32(mem[_1711]) + -(mem[_1711] % 32) + 64 len mem[_1711] % 32] or Mask(8 * -(mem[_1711] % 32) + 32, -(8 * -(mem[_1711] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1711])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1714 + _1710 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2573 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2573] = return_data.size
                                            mem[_2573 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2573 + 32]:
                                                    revert with 0, '!safeTransfer'
                                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                        else:
                            if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1394 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1394] = 26
                            mem[_1394 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                                _1482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1482] = 26
                                mem[_1482 + 32] = 'SafeMath: division by zero'
                                _1506 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1506] = 26
                                mem[_1506 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0
                                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1490 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1490] = 26
                                mem[_1490 + 32] = 'SafeMath: division by zero'
                                _1522 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1522] = 26
                                mem[_1522 + 32] = 'SafeMath: division by zero'
                                if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1811 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1813 = mem[_1811]
                                        t = _1811 + 32
                                        u = _1811 + 32
                                        s = mem[_1811]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1811 + floor32(mem[_1811]) + 32] = mem[_1811 + -(mem[_1811] % 32) + floor32(mem[_1811]) + 64 len mem[_1811] % 32] or Mask(8 * -(mem[_1811] % 32) + 32, -(8 * -(mem[_1811] % 32) + 32) + 256, mem[_1811 + floor32(mem[_1811]) + 32])
                                        call msg.sender.mem[_1811 + 32 len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                             gas gas_remaining wei
                                            args mem[_1811 + 36 len _1813 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1811 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        else:
                                            mem[64] = _1811 + ceil32(return_data.size) + 33
                                            mem[_1811 + 32] = return_data.size
                                            mem[_1811 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1811 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        _1806 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        _1807 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1807 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1807 + 36 len 28]
                                        _1810 = mem[_1807]
                                        t = _1807 + 32
                                        u = mem[64]
                                        s = mem[_1807]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1807])] = mem[_1807 + floor32(mem[_1807]) + -(mem[_1807] % 32) + 64 len mem[_1807] % 32] or Mask(8 * -(mem[_1807] % 32) + 32, -(8 * -(mem[_1807] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1807])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1810 + _1806 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2571 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2571] = return_data.size
                                            mem[_2571 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2571 + 32]:
                                                    revert with 0, '!safeTransfer'
                                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                    else:
                        _1301 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1301] = 30
                        mem[_1301 + 32] = 'SafeMath: subtraction overflow'
                        if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                            _1317 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1317 + 68] = mem[idx + _1301 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1317 + 68] = mem[_1317 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1317 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 118
                        if not sub_a8c7a08a[address(msg.sender)]:
                            _1391 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1391] = 26
                            mem[_1391 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                                _1469 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1469] = 26
                                mem[_1469 + 32] = 'SafeMath: division by zero'
                                _1501 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1501] = 26
                                mem[_1501 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1501 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1646 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1648 = mem[_1646]
                                        t = _1646 + 32
                                        u = mem[64]
                                        s = mem[_1646]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1646])] = mem[_1646 + floor32(mem[_1646]) + -(mem[_1646] % 32) + 64 len mem[_1646] % 32] or Mask(8 * -(mem[_1646] % 32) + 32, -(8 * -(mem[_1646] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1646])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1648 + _1646 + -mem[64] + 28]
                                        if return_data.size:
                                            _2590 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2590] = return_data.size
                                            mem[_2590 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1641 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1642 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1642 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1642 + 36 len 28]
                                        _1645 = mem[_1642]
                                        t = _1642 + 32
                                        u = mem[64]
                                        s = mem[_1642]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1642])] = mem[_1642 + floor32(mem[_1642]) + -(mem[_1642] % 32) + 64 len mem[_1642] % 32] or Mask(8 * -(mem[_1642] % 32) + 32, -(8 * -(mem[_1642] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1642])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1645 + _1641 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2589 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2589] = return_data.size
                                            mem[_2589 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2589 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1485 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1485] = 26
                                mem[_1485 + 32] = 'SafeMath: division by zero'
                                _1509 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1509] = 26
                                mem[_1509 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1509 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1731 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1733 = mem[_1731]
                                        t = _1731 + 32
                                        u = _1731 + 32
                                        s = mem[_1731]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1731 + floor32(mem[_1731]) + 32] = mem[_1731 + -(mem[_1731] % 32) + floor32(mem[_1731]) + 64 len mem[_1731] % 32] or Mask(8 * -(mem[_1731] % 32) + 32, -(8 * -(mem[_1731] % 32) + 32) + 256, mem[_1731 + floor32(mem[_1731]) + 32])
                                        call msg.sender.mem[_1731 + 32 len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[_1731 + 36 len _1733 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1731 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        else:
                                            mem[64] = _1731 + ceil32(return_data.size) + 33
                                            mem[_1731 + 32] = return_data.size
                                            mem[_1731 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1731 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                    else:
                                        _1726 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1727 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1727 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1727 + 36 len 28]
                                        _1730 = mem[_1727]
                                        t = _1727 + 32
                                        u = mem[64]
                                        s = mem[_1727]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1727])] = mem[_1727 + floor32(mem[_1727]) + -(mem[_1727] % 32) + 64 len mem[_1727] % 32] or Mask(8 * -(mem[_1727] % 32) + 32, -(8 * -(mem[_1727] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1727])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1730 + _1726 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2585 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2585] = return_data.size
                                            mem[_2585 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2585 + 32]:
                                                    revert with 0, '!safeTransfer'
                                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                        else:
                            if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1395 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1395] = 26
                            mem[_1395 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                                _1484 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1484] = 26
                                mem[_1484 + 32] = 'SafeMath: division by zero'
                                _1508 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1508] = 26
                                mem[_1508 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1508 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1723 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1725 = mem[_1723]
                                        t = _1723 + 32
                                        u = mem[64]
                                        s = mem[_1723]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1723])] = mem[_1723 + floor32(mem[_1723]) + -(mem[_1723] % 32) + 64 len mem[_1723] % 32] or Mask(8 * -(mem[_1723] % 32) + 32, -(8 * -(mem[_1723] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1723])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1725 + _1723 + -mem[64] + 28]
                                        if return_data.size:
                                            _2582 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2582] = return_data.size
                                            mem[_2582 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                    else:
                                        _1718 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1719 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1719 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1719 + 36 len 28]
                                        _1722 = mem[_1719]
                                        t = _1719 + 32
                                        u = _1718 + 100
                                        s = mem[_1719]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1718 + floor32(mem[_1719]) + 100] = mem[_1719 + -(mem[_1719] % 32) + floor32(mem[_1719]) + 64 len mem[_1719] % 32] or Mask(8 * -(mem[_1719] % 32) + 32, -(8 * -(mem[_1719] % 32) + 32) + 256, mem[_1718 + floor32(mem[_1719]) + 100])
                                        call sub_8ef4403c[idx].mem[_1718 + 100 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1718 + 104 len _1722 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1718 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        else:
                                            mem[64] = _1718 + ceil32(return_data.size) + 101
                                            mem[_1718 + 100] = return_data.size
                                            mem[_1718 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_1718 + 132]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1718 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1491 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1491] = 26
                                mem[_1491 + 32] = 'SafeMath: division by zero'
                                _1523 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1523] = 26
                                mem[_1523 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1523 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1827 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1829 = mem[_1827]
                                        t = _1827 + 32
                                        u = _1827 + 32
                                        s = mem[_1827]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1827 + floor32(mem[_1827]) + 32] = mem[_1827 + -(mem[_1827] % 32) + floor32(mem[_1827]) + 64 len mem[_1827] % 32] or Mask(8 * -(mem[_1827] % 32) + 32, -(8 * -(mem[_1827] % 32) + 32) + 256, mem[_1827 + floor32(mem[_1827]) + 32])
                                        call msg.sender.mem[_1827 + 32 len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[_1827 + 36 len _1829 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1827 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        else:
                                            mem[64] = _1827 + ceil32(return_data.size) + 33
                                            mem[_1827 + 32] = return_data.size
                                            mem[_1827 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1827 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                    else:
                                        _1822 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1823 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1823 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1823 + 36 len 28]
                                        _1826 = mem[_1823]
                                        t = _1823 + 32
                                        u = mem[64]
                                        s = mem[_1823]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1823])] = mem[_1823 + floor32(mem[_1823]) + -(mem[_1823] % 32) + 64 len mem[_1823] % 32] or Mask(8 * -(mem[_1823] % 32) + 32, -(8 * -(mem[_1823] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1823])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1826 + _1822 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2577 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2577] = return_data.size
                                            mem[_2577 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2577 + 32]:
                                                    revert with 0, '!safeTransfer'
                                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                idx = idx + 1
                continue 
    idx = 0
    while idx < sub_8ef4403c.length:
        mem[0] = sub_8ef4403c[idx]
        mem[32] = sha3(address(msg.sender), 111)
        sub_7ec475a8[address(msg.sender)][stor103[idx]] = sub_420480b8[stor103[idx]]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = sub_8ef4403c[idx]
        mem[mem[64] + 64] = sub_420480b8[stor103[idx]]
        emit StakerSnapshotsUpdated(msg.sender, sub_8ef4403c[idx], sub_420480b8[stor103[idx]]);
        idx = idx + 1
        continue 
    if arg1 + stakes[msg.sender] < stakes[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    stakes[msg.sender] += arg1
    if arg1 + totalTokenStaked < totalTokenStaked:
        revert with 0, 'SafeMath: addition overflow'
    totalTokenStaked += arg1
    emit totalTokenStakedUpdated((arg1 + totalTokenStaked));
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0x634cffeb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit StakeChanged((arg1 + stakes[msg.sender]), msg.sender);
    stor112 = 1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor112 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor112 = 2
    if arg1 <= 0:
        revert with 0, 'amount must be non-zero'
    mem[0] = msg.sender
    mem[32] = 118
    if not sub_a8c7a08a[address(msg.sender)]:
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if sub_443ea0fd[address(msg.sender)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
            idx = 0
            while idx < sub_8ef4403c.length:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                    mem[0] = sub_8ef4403c[idx]
                    mem[32] = 110
                    _1307 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1307] = 30
                    mem[_1307 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                        _1337 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1337 + 68] = mem[idx + _1307 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1337 + 68] = mem[_1337 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1337 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 118
                    if not sub_a8c7a08a[address(msg.sender)]:
                        _1427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1427] = 26
                        mem[_1427 + 32] = 'SafeMath: division by zero'
                        if sub_443ea0fd[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                            _1499 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1499] = 26
                            mem[_1499 + 32] = 'SafeMath: division by zero'
                            _1543 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1543] = 26
                            mem[_1543 + 32] = 'SafeMath: division by zero'
                            mem[mem[64]] = 0
                            emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                        else:
                            if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1515 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1515] = 26
                            mem[_1515 + 32] = 'SafeMath: division by zero'
                            _1547 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1547] = 26
                            mem[_1547 + 32] = 'SafeMath: division by zero'
                            if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                    _1685 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    _1687 = mem[_1685]
                                    t = _1685 + 32
                                    u = mem[64]
                                    s = mem[_1685]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1685])] = mem[_1685 + floor32(mem[_1685]) + -(mem[_1685] % 32) + 64 len mem[_1685] % 32] or Mask(8 * -(mem[_1685] % 32) + 32, -(8 * -(mem[_1685] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1685])])
                                    call msg.sender.mem[mem[64] len 4] with:
                                       value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1687 + _1685 + -mem[64] + 28]
                                    if return_data.size:
                                        _2683 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2683] = return_data.size
                                        mem[_2683 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    _1680 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    _1681 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_1681 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1681 + 36 len 28]
                                    _1684 = mem[_1681]
                                    t = _1681 + 32
                                    u = _1680 + 100
                                    s = mem[_1681]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1680 + floor32(mem[_1681]) + 100] = mem[_1681 + -(mem[_1681] % 32) + floor32(mem[_1681]) + 64 len mem[_1681] % 32] or Mask(8 * -(mem[_1681] % 32) + 32, -(8 * -(mem[_1681] % 32) + 32) + 256, mem[_1680 + floor32(mem[_1681]) + 100])
                                    call sub_8ef4403c[idx].mem[_1680 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1680 + 104 len _1684 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1680 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        mem[64] = _1680 + ceil32(return_data.size) + 101
                                        mem[_1680 + 100] = return_data.size
                                        mem[_1680 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_1680 + 132]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1680 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1437] = 26
                        mem[_1437 + 32] = 'SafeMath: division by zero'
                        if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                            _1514 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1514] = 26
                            mem[_1514 + 32] = 'SafeMath: division by zero'
                            _1546 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1546] = 26
                            mem[_1546 + 32] = 'SafeMath: division by zero'
                            mem[mem[64]] = 0
                            emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                        else:
                            if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1529 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1529] = 26
                            mem[_1529 + 32] = 'SafeMath: division by zero'
                            _1553 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1553] = 26
                            mem[_1553 + 32] = 'SafeMath: division by zero'
                            if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                    _1747 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    _1749 = mem[_1747]
                                    t = _1747 + 32
                                    u = _1747 + 32
                                    s = mem[_1747]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1747 + floor32(mem[_1747]) + 32] = mem[_1747 + -(mem[_1747] % 32) + floor32(mem[_1747]) + 64 len mem[_1747] % 32] or Mask(8 * -(mem[_1747] % 32) + 32, -(8 * -(mem[_1747] % 32) + 32) + 256, mem[_1747 + floor32(mem[_1747]) + 32])
                                    call msg.sender.mem[_1747 + 32 len 4] with:
                                       value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[_1747 + 36 len _1749 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[_1747 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        mem[64] = _1747 + ceil32(return_data.size) + 33
                                        mem[_1747 + 32] = return_data.size
                                        mem[_1747 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[_1747 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    _1742 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    _1743 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_1743 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1743 + 36 len 28]
                                    _1746 = mem[_1743]
                                    t = _1743 + 32
                                    u = mem[64]
                                    s = mem[_1743]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1743])] = mem[_1743 + floor32(mem[_1743]) + -(mem[_1743] % 32) + 64 len mem[_1743] % 32] or Mask(8 * -(mem[_1743] % 32) + 32, -(8 * -(mem[_1743] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1743])])
                                    call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1746 + _1742 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, '!safeTransfer'
                                    else:
                                        _2680 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2680] = return_data.size
                                        mem[_2680 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_2680 + 32]:
                                                revert with 0, '!safeTransfer'
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    require ext_code.size(sub_8ef4403c[idx])
                    staticcall sub_8ef4403c[idx].0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = sub_8ef4403c[idx]
                    mem[32] = 110
                    if uint8(ext_call.return_data[0]) >= 18:
                        _1350 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1350] = 30
                        mem[_1350 + 32] = 'SafeMath: subtraction overflow'
                        if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                            _1374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1374 + 68] = mem[idx + _1350 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1374 + 68] = mem[_1374 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1374 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 118
                        if not sub_a8c7a08a[address(msg.sender)]:
                            _1440 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1440] = 26
                            mem[_1440 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                                _1518 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1518] = 26
                                mem[_1518 + 32] = 'SafeMath: division by zero'
                                _1550 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1550] = 26
                                mem[_1550 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0
                                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1535 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1535] = 26
                                mem[_1535 + 32] = 'SafeMath: division by zero'
                                _1562 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1562] = 26
                                mem[_1562 + 32] = 'SafeMath: division by zero'
                                if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1797 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1799 = mem[_1797]
                                        t = _1797 + 32
                                        u = mem[64]
                                        s = mem[_1797]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1797])] = mem[_1797 + floor32(mem[_1797]) + -(mem[_1797] % 32) + 64 len mem[_1797] % 32] or Mask(8 * -(mem[_1797] % 32) + 32, -(8 * -(mem[_1797] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1797])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1799 + _1797 + -mem[64] + 28]
                                        if return_data.size:
                                            _2659 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2659] = return_data.size
                                            mem[_2659 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        _1792 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        _1793 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1793 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1793 + 36 len 28]
                                        _1796 = mem[_1793]
                                        t = _1793 + 32
                                        u = _1792 + 100
                                        s = mem[_1793]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1792 + floor32(mem[_1793]) + 100] = mem[_1793 + -(mem[_1793] % 32) + floor32(mem[_1793]) + 64 len mem[_1793] % 32] or Mask(8 * -(mem[_1793] % 32) + 32, -(8 * -(mem[_1793] % 32) + 32) + 256, mem[_1792 + floor32(mem[_1793]) + 100])
                                        call sub_8ef4403c[idx].mem[_1792 + 100 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1792 + 104 len _1796 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1792 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        else:
                                            mem[64] = _1792 + ceil32(return_data.size) + 101
                                            mem[_1792 + 100] = return_data.size
                                            mem[_1792 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_1792 + 132]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1792 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                        else:
                            if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1444 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1444] = 26
                            mem[_1444 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                                _1534 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1534] = 26
                                mem[_1534 + 32] = 'SafeMath: division by zero'
                                _1561 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1561] = 26
                                mem[_1561 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0
                                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1541 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1541] = 26
                                mem[_1541 + 32] = 'SafeMath: division by zero'
                                _1580 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1580] = 26
                                mem[_1580 + 32] = 'SafeMath: division by zero'
                                if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1907 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1909 = mem[_1907]
                                        t = _1907 + 32
                                        u = mem[64]
                                        s = mem[_1907]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1907])] = mem[_1907 + floor32(mem[_1907]) + -(mem[_1907] % 32) + 64 len mem[_1907] % 32] or Mask(8 * -(mem[_1907] % 32) + 32, -(8 * -(mem[_1907] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1907])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1909 + _1907 + -mem[64] + 28]
                                        if return_data.size:
                                            _2657 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2657] = return_data.size
                                            mem[_2657 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        _1902 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        _1903 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1903 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1903 + 36 len 28]
                                        _1906 = mem[_1903]
                                        t = _1903 + 32
                                        u = _1902 + 100
                                        s = mem[_1903]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1902 + floor32(mem[_1903]) + 100] = mem[_1903 + -(mem[_1903] % 32) + floor32(mem[_1903]) + 64 len mem[_1903] % 32] or Mask(8 * -(mem[_1903] % 32) + 32, -(8 * -(mem[_1903] % 32) + 32) + 256, mem[_1902 + floor32(mem[_1903]) + 100])
                                        call sub_8ef4403c[idx].mem[_1902 + 100 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1902 + 104 len _1906 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1902 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        else:
                                            mem[64] = _1902 + ceil32(return_data.size) + 101
                                            mem[_1902 + 100] = return_data.size
                                            mem[_1902 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_1902 + 132]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1902 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                    else:
                        _1351 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1351] = 30
                        mem[_1351 + 32] = 'SafeMath: subtraction overflow'
                        if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                            _1377 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1377 + 68] = mem[idx + _1351 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1377 + 68] = mem[_1377 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1377 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 118
                        if not sub_a8c7a08a[address(msg.sender)]:
                            _1441 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1441] = 26
                            mem[_1441 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                                _1519 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1519] = 26
                                mem[_1519 + 32] = 'SafeMath: division by zero'
                                _1551 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1551] = 26
                                mem[_1551 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1551 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1705 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1707 = mem[_1705]
                                        t = _1705 + 32
                                        u = _1705 + 32
                                        s = mem[_1705]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1705 + floor32(mem[_1705]) + 32] = mem[_1705 + -(mem[_1705] % 32) + floor32(mem[_1705]) + 64 len mem[_1705] % 32] or Mask(8 * -(mem[_1705] % 32) + 32, -(8 * -(mem[_1705] % 32) + 32) + 256, mem[_1705 + floor32(mem[_1705]) + 32])
                                        call msg.sender.mem[_1705 + 32 len 4] with:
                                           value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[_1705 + 36 len _1707 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1705 + 32] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        else:
                                            mem[64] = _1705 + ceil32(return_data.size) + 33
                                            mem[_1705 + 32] = return_data.size
                                            mem[_1705 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1705 + ceil32(return_data.size) + 33] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                    else:
                                        _1700 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1701 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1701 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1701 + 36 len 28]
                                        _1704 = mem[_1701]
                                        t = _1701 + 32
                                        u = mem[64]
                                        s = mem[_1701]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1701])] = mem[_1701 + floor32(mem[_1701]) + -(mem[_1701] % 32) + 64 len mem[_1701] % 32] or Mask(8 * -(mem[_1701] % 32) + 32, -(8 * -(mem[_1701] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1701])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1704 + _1700 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2674 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2674] = return_data.size
                                            mem[_2674 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2674 + 32]:
                                                    revert with 0, '!safeTransfer'
                                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1537 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1537] = 26
                                mem[_1537 + 32] = 'SafeMath: division by zero'
                                _1564 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1564] = 26
                                mem[_1564 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1564 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1813 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1815 = mem[_1813]
                                        t = _1813 + 32
                                        u = mem[64]
                                        s = mem[_1813]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1813])] = mem[_1813 + floor32(mem[_1813]) + -(mem[_1813] % 32) + 64 len mem[_1813] % 32] or Mask(8 * -(mem[_1813] % 32) + 32, -(8 * -(mem[_1813] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1813])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1815 + _1813 + -mem[64] + 28]
                                        if return_data.size:
                                            _2671 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2671] = return_data.size
                                            mem[_2671 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1808 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1809 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1809 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1809 + 36 len 28]
                                        _1812 = mem[_1809]
                                        t = _1809 + 32
                                        u = mem[64]
                                        s = mem[_1809]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1809])] = mem[_1809 + floor32(mem[_1809]) + -(mem[_1809] % 32) + 64 len mem[_1809] % 32] or Mask(8 * -(mem[_1809] % 32) + 32, -(8 * -(mem[_1809] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1809])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1812 + _1808 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2670 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2670] = return_data.size
                                            mem[_2670 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2670 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                        else:
                            if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1445 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1445] = 26
                            mem[_1445 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                                _1536 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1536] = 26
                                mem[_1536 + 32] = 'SafeMath: division by zero'
                                _1563 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1563] = 26
                                mem[_1563 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1563 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1805 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1807 = mem[_1805]
                                        t = _1805 + 32
                                        u = mem[64]
                                        s = mem[_1805]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1805])] = mem[_1805 + floor32(mem[_1805]) + -(mem[_1805] % 32) + 64 len mem[_1805] % 32] or Mask(8 * -(mem[_1805] % 32) + 32, -(8 * -(mem[_1805] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1805])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1807 + _1805 + -mem[64] + 28]
                                        if return_data.size:
                                            _2667 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2667] = return_data.size
                                            mem[_2667 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                    else:
                                        _1800 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1801 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1801 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1801 + 36 len 28]
                                        _1804 = mem[_1801]
                                        t = _1801 + 32
                                        u = _1800 + 100
                                        s = mem[_1801]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1800 + floor32(mem[_1801]) + 100] = mem[_1801 + -(mem[_1801] % 32) + floor32(mem[_1801]) + 64 len mem[_1801] % 32] or Mask(8 * -(mem[_1801] % 32) + 32, -(8 * -(mem[_1801] % 32) + 32) + 256, mem[_1800 + floor32(mem[_1801]) + 100])
                                        call sub_8ef4403c[idx].mem[_1800 + 100 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1800 + 104 len _1804 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1800 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        else:
                                            mem[64] = _1800 + ceil32(return_data.size) + 101
                                            mem[_1800 + 100] = return_data.size
                                            mem[_1800 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_1800 + 132]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1800 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1542 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1542] = 26
                                mem[_1542 + 32] = 'SafeMath: division by zero'
                                _1581 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1581] = 26
                                mem[_1581 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1581 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1923 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1925 = mem[_1923]
                                        t = _1923 + 32
                                        u = mem[64]
                                        s = mem[_1923]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1923])] = mem[_1923 + floor32(mem[_1923]) + -(mem[_1923] % 32) + 64 len mem[_1923] % 32] or Mask(8 * -(mem[_1923] % 32) + 32, -(8 * -(mem[_1923] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1923])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1925 + _1923 + -mem[64] + 28]
                                        if return_data.size:
                                            _2663 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2663] = return_data.size
                                            mem[_2663 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1918 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1919 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1919 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1919 + 36 len 28]
                                        _1922 = mem[_1919]
                                        t = _1919 + 32
                                        u = mem[64]
                                        s = mem[_1919]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1919])] = mem[_1919 + floor32(mem[_1919]) + -(mem[_1919] % 32) + 64 len mem[_1919] % 32] or Mask(8 * -(mem[_1919] % 32) + 32, -(8 * -(mem[_1919] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1919])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1922 + _1918 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2662 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2662] = return_data.size
                                            mem[_2662 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2662 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                idx = idx + 1
                continue 
    else:
        if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(msg.sender)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
            idx = 0
            while idx < sub_8ef4403c.length:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                    mem[0] = sub_8ef4403c[idx]
                    mem[32] = 110
                    _1306 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1306] = 30
                    mem[_1306 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                        _1332 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1332 + 68] = mem[idx + _1306 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1332 + 68] = mem[_1332 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1332 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 118
                    if sub_a8c7a08a[address(msg.sender)]:
                        if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1432] = 26
                        mem[_1432 + 32] = 'SafeMath: division by zero'
                        if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                            _1508 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1508] = 26
                            mem[_1508 + 32] = 'SafeMath: division by zero'
                            _1544 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1544] = 26
                            mem[_1544 + 32] = 'SafeMath: division by zero'
                            mem[mem[64]] = 0
                            emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                        else:
                            if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1524 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1524] = 26
                            mem[_1524 + 32] = 'SafeMath: division by zero'
                            _1552 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1552] = 26
                            mem[_1552 + 32] = 'SafeMath: division by zero'
                            if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                    _1723 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    _1725 = mem[_1723]
                                    t = _1723 + 32
                                    u = mem[64]
                                    s = mem[_1723]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1723])] = mem[_1723 + floor32(mem[_1723]) + -(mem[_1723] % 32) + 64 len mem[_1723] % 32] or Mask(8 * -(mem[_1723] % 32) + 32, -(8 * -(mem[_1723] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1723])])
                                    call msg.sender.mem[mem[64] len 4] with:
                                       value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1725 + _1723 + -mem[64] + 28]
                                    if return_data.size:
                                        _2644 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2644] = return_data.size
                                        mem[_2644 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    _1718 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    _1719 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_1719 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1719 + 36 len 28]
                                    _1722 = mem[_1719]
                                    t = _1719 + 32
                                    u = _1718 + 100
                                    s = mem[_1719]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1718 + floor32(mem[_1719]) + 100] = mem[_1719 + -(mem[_1719] % 32) + floor32(mem[_1719]) + 64 len mem[_1719] % 32] or Mask(8 * -(mem[_1719] % 32) + 32, -(8 * -(mem[_1719] % 32) + 32) + 256, mem[_1718 + floor32(mem[_1719]) + 100])
                                    call sub_8ef4403c[idx].mem[_1718 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1718 + 104 len _1722 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1718 + 100] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        mem[64] = _1718 + ceil32(return_data.size) + 101
                                        mem[_1718 + 100] = return_data.size
                                        mem[_1718 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_1718 + 132]:
                                                revert with 0, '!safeTransfer'
                                        mem[_1718 + ceil32(return_data.size) + 101] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                    else:
                        _1426 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1426] = 26
                        mem[_1426 + 32] = 'SafeMath: division by zero'
                        if sub_443ea0fd[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                            _1498 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1498] = 26
                            mem[_1498 + 32] = 'SafeMath: division by zero'
                            _1540 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1540] = 26
                            mem[_1540 + 32] = 'SafeMath: division by zero'
                            mem[mem[64]] = 0
                            emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                        else:
                            if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1509] = 26
                            mem[_1509 + 32] = 'SafeMath: division by zero'
                            _1545 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1545] = 26
                            mem[_1545 + 32] = 'SafeMath: division by zero'
                            if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            else:
                                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                    _1671 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    _1673 = mem[_1671]
                                    t = _1671 + 32
                                    u = _1671 + 32
                                    s = mem[_1671]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1671 + floor32(mem[_1671]) + 32] = mem[_1671 + -(mem[_1671] % 32) + floor32(mem[_1671]) + 64 len mem[_1671] % 32] or Mask(8 * -(mem[_1671] % 32) + 32, -(8 * -(mem[_1671] % 32) + 32) + 256, mem[_1671 + floor32(mem[_1671]) + 32])
                                    call msg.sender.mem[_1671 + 32 len 4] with:
                                       value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                         gas gas_remaining wei
                                        args mem[_1671 + 36 len _1673 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[_1671 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        mem[64] = _1671 + ceil32(return_data.size) + 33
                                        mem[_1671 + 32] = return_data.size
                                        mem[_1671 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[_1671 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    _1666 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    _1667 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_1667 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1667 + 36 len 28]
                                    _1670 = mem[_1667]
                                    t = _1667 + 32
                                    u = mem[64]
                                    s = mem[_1667]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1667])] = mem[_1667 + floor32(mem[_1667]) + -(mem[_1667] % 32) + 64 len mem[_1667] % 32] or Mask(8 * -(mem[_1667] % 32) + 32, -(8 * -(mem[_1667] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1667])])
                                    call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1670 + _1666 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, '!safeTransfer'
                                    else:
                                        _2645 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2645] = return_data.size
                                        mem[_2645 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransfer'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_2645 + 32]:
                                                revert with 0, '!safeTransfer'
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                            emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    require ext_code.size(sub_8ef4403c[idx])
                    staticcall sub_8ef4403c[idx].0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = sub_8ef4403c[idx]
                    mem[32] = 110
                    if uint8(ext_call.return_data[0]) >= 18:
                        _1344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1344] = 30
                        mem[_1344 + 32] = 'SafeMath: subtraction overflow'
                        if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                            _1360 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1360 + 68] = mem[idx + _1344 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1360 + 68] = mem[_1360 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1360 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 118
                        if not sub_a8c7a08a[address(msg.sender)]:
                            _1438 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1438] = 26
                            mem[_1438 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                                _1516 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1516] = 26
                                mem[_1516 + 32] = 'SafeMath: division by zero'
                                _1548 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1548] = 26
                                mem[_1548 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0
                                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1531 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1531] = 26
                                mem[_1531 + 32] = 'SafeMath: division by zero'
                                _1555 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1555] = 26
                                mem[_1555 + 32] = 'SafeMath: division by zero'
                                if not (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                    mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1763 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1765 = mem[_1763]
                                        t = _1763 + 32
                                        u = _1763 + 32
                                        s = mem[_1763]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1763 + floor32(mem[_1763]) + 32] = mem[_1763 + -(mem[_1763] % 32) + floor32(mem[_1763]) + 64 len mem[_1763] % 32] or Mask(8 * -(mem[_1763] % 32) + 32, -(8 * -(mem[_1763] % 32) + 32) + 256, mem[_1763 + floor32(mem[_1763]) + 32])
                                        call msg.sender.mem[_1763 + 32 len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                             gas gas_remaining wei
                                            args mem[_1763 + 36 len _1765 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1763 + 32] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        else:
                                            mem[64] = _1763 + ceil32(return_data.size) + 33
                                            mem[_1763 + 32] = return_data.size
                                            mem[_1763 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1763 + ceil32(return_data.size) + 33] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                    else:
                                        _1758 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        _1759 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1759 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1759 + 36 len 28]
                                        _1762 = mem[_1759]
                                        t = _1759 + 32
                                        u = mem[64]
                                        s = mem[_1759]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1759])] = mem[_1759 + floor32(mem[_1759]) + -(mem[_1759] % 32) + 64 len mem[_1759] % 32] or Mask(8 * -(mem[_1759] % 32) + 32, -(8 * -(mem[_1759] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1759])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1762 + _1758 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2621 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2621] = return_data.size
                                            mem[_2621 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2621 + 32]:
                                                    revert with 0, '!safeTransfer'
                                        mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                        else:
                            if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1442 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1442] = 26
                            mem[_1442 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                                _1530 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1530] = 26
                                mem[_1530 + 32] = 'SafeMath: division by zero'
                                _1554 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1554] = 26
                                mem[_1554 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0
                                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1538 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1538] = 26
                                mem[_1538 + 32] = 'SafeMath: division by zero'
                                _1570 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1570] = 26
                                mem[_1570 + 32] = 'SafeMath: division by zero'
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1859 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1861 = mem[_1859]
                                        t = _1859 + 32
                                        u = mem[64]
                                        s = mem[_1859]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1859])] = mem[_1859 + floor32(mem[_1859]) + -(mem[_1859] % 32) + 64 len mem[_1859] % 32] or Mask(8 * -(mem[_1859] % 32) + 32, -(8 * -(mem[_1859] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1859])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1861 + _1859 + -mem[64] + 28]
                                        if return_data.size:
                                            _2620 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2620] = return_data.size
                                            mem[_2620 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1854 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                        _1855 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1855 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1855 + 36 len 28]
                                        _1858 = mem[_1855]
                                        t = _1855 + 32
                                        u = mem[64]
                                        s = mem[_1855]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1855])] = mem[_1855 + floor32(mem[_1855]) + -(mem[_1855] % 32) + 64 len mem[_1855] % 32] or Mask(8 * -(mem[_1855] % 32) + 32, -(8 * -(mem[_1855] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1855])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1858 + _1854 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2619 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2619] = return_data.size
                                            mem[_2619 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2619 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                    else:
                        _1345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1345] = 30
                        mem[_1345 + 32] = 'SafeMath: subtraction overflow'
                        if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                            _1363 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1363 + 68] = mem[idx + _1345 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1363 + 68] = mem[_1363 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1363 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 118
                        if not sub_a8c7a08a[address(msg.sender)]:
                            _1439 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1439] = 26
                            mem[_1439 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] < sub_443ea0fd[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)]:
                                _1517 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1517] = 26
                                mem[_1517 + 32] = 'SafeMath: division by zero'
                                _1549 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1549] = 26
                                mem[_1549 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1549 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1694 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1696 = mem[_1694]
                                        t = _1694 + 32
                                        u = mem[64]
                                        s = mem[_1694]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1694])] = mem[_1694 + floor32(mem[_1694]) + -(mem[_1694] % 32) + 64 len mem[_1694] % 32] or Mask(8 * -(mem[_1694] % 32) + 32, -(8 * -(mem[_1694] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1694])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1696 + _1694 + -mem[64] + 28]
                                        if return_data.size:
                                            _2638 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2638] = return_data.size
                                            mem[_2638 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                    else:
                                        _1689 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1690 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1690 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1690 + 36 len 28]
                                        _1693 = mem[_1690]
                                        t = _1690 + 32
                                        u = _1689 + 100
                                        s = mem[_1690]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1689 + floor32(mem[_1690]) + 100] = mem[_1690 + -(mem[_1690] % 32) + floor32(mem[_1690]) + 64 len mem[_1690] % 32] or Mask(8 * -(mem[_1690] % 32) + 32, -(8 * -(mem[_1690] % 32) + 32) + 256, mem[_1689 + floor32(mem[_1690]) + 100])
                                        call sub_8ef4403c[idx].mem[_1689 + 100 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1689 + 104 len _1693 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1689 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        else:
                                            mem[64] = _1689 + ceil32(return_data.size) + 101
                                            mem[_1689 + 100] = return_data.size
                                            mem[_1689 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_1689 + 132]:
                                                    revert with 0, '!safeTransfer'
                                            mem[_1689 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1533 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1533] = 26
                                mem[_1533 + 32] = 'SafeMath: division by zero'
                                _1557 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1557] = 26
                                mem[_1557 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1557 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1779 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1781 = mem[_1779]
                                        t = _1779 + 32
                                        u = mem[64]
                                        s = mem[_1779]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1779])] = mem[_1779 + floor32(mem[_1779]) + -(mem[_1779] % 32) + 64 len mem[_1779] % 32] or Mask(8 * -(mem[_1779] % 32) + 32, -(8 * -(mem[_1779] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1779])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1781 + _1779 + -mem[64] + 28]
                                        if return_data.size:
                                            _2634 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2634] = return_data.size
                                            mem[_2634 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1774 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1775 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1775 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1775 + 36 len 28]
                                        _1778 = mem[_1775]
                                        t = _1775 + 32
                                        u = mem[64]
                                        s = mem[_1775]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1775])] = mem[_1775 + floor32(mem[_1775]) + -(mem[_1775] % 32) + 64 len mem[_1775] % 32] or Mask(8 * -(mem[_1775] % 32) + 32, -(8 * -(mem[_1775] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1775])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1778 + _1774 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2633 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2633] = return_data.size
                                            mem[_2633 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2633 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                        else:
                            if bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / sub_a8c7a08a[address(msg.sender)] != bonusMultiplier:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1443 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1443] = 26
                            mem[_1443 + 32] = 'SafeMath: division by zero'
                            if sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) < bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakes[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100):
                                _1532 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1532] = 26
                                mem[_1532 + 32] = 'SafeMath: division by zero'
                                _1556 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1556] = 26
                                mem[_1556 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1556 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1771 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1773 = mem[_1771]
                                        t = _1771 + 32
                                        u = _1771 + 32
                                        s = mem[_1771]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1771 + floor32(mem[_1771]) + 32] = mem[_1771 + -(mem[_1771] % 32) + floor32(mem[_1771]) + 64 len mem[_1771] % 32] or Mask(8 * -(mem[_1771] % 32) + 32, -(8 * -(mem[_1771] % 32) + 32) + 256, mem[_1771 + floor32(mem[_1771]) + 32])
                                        call msg.sender.mem[_1771 + 32 len 4] with:
                                           value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[_1771 + 36 len _1773 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1771 + 32] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        else:
                                            mem[64] = _1771 + ceil32(return_data.size) + 33
                                            mem[_1771 + 32] = return_data.size
                                            mem[_1771 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransferETH'
                                            mem[_1771 + ceil32(return_data.size) + 33] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                    else:
                                        _1766 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1767 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1767 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1767 + 36 len 28]
                                        _1770 = mem[_1767]
                                        t = _1767 + 32
                                        u = mem[64]
                                        s = mem[_1767]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1767])] = mem[_1767 + floor32(mem[_1767]) + -(mem[_1767] % 32) + 64 len mem[_1767] % 32] or Mask(8 * -(mem[_1767] % 32) + 32, -(8 * -(mem[_1767] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1767])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1770 + _1766 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2629 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2629] = return_data.size
                                            mem[_2629 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2629 + 32]:
                                                    revert with 0, '!safeTransfer'
                                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                            else:
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / stakes[address(msg.sender)] + sub_443ea0fd[address(msg.sender)] + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100) != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1539 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1539] = 26
                                mem[_1539 + 32] = 'SafeMath: division by zero'
                                _1571 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1571] = 26
                                mem[_1571 + 32] = 'SafeMath: division by zero'
                                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1571 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                        _1875 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        _1877 = mem[_1875]
                                        t = _1875 + 32
                                        u = mem[64]
                                        s = mem[_1875]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1875])] = mem[_1875 + floor32(mem[_1875]) + -(mem[_1875] % 32) + 64 len mem[_1875] % 32] or Mask(8 * -(mem[_1875] % 32) + 32, -(8 * -(mem[_1875] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1875])])
                                        call msg.sender.mem[mem[64] len 4] with:
                                           value (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1877 + _1875 + -mem[64] + 28]
                                        if return_data.size:
                                            _2626 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2626] = return_data.size
                                            mem[_2626 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, '!safeTransferETH'
                                    else:
                                        _1870 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                        _1871 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1871 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1871 + 36 len 28]
                                        _1874 = mem[_1871]
                                        t = _1871 + 32
                                        u = mem[64]
                                        s = mem[_1871]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1871])] = mem[_1871 + floor32(mem[_1871]) + -(mem[_1871] % 32) + 64 len mem[_1871] % 32] or Mask(8 * -(mem[_1871] % 32) + 32, -(8 * -(mem[_1871] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1871])])
                                        call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1874 + _1870 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, '!safeTransfer'
                                        else:
                                            _2625 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2625] = return_data.size
                                            mem[_2625 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, '!safeTransfer'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[_2625 + 32]:
                                                    revert with 0, '!safeTransfer'
                                mem[mem[64]] = (stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                emit StakingGainsWithdrawn(((stakes[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (sub_443ea0fd[address(msg.sender)] * sub_420480b8[stor103[idx]]) + (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_420480b8[stor103[idx]]) - (stakes[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (sub_443ea0fd[address(msg.sender)] * sub_7ec475a8[address(msg.sender)][stor103[idx]]) - (bonusMultiplier * sub_a8c7a08a[address(msg.sender)] / 100 * sub_7ec475a8[address(msg.sender)][stor103[idx]]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                idx = idx + 1
                continue 
    idx = 0
    while idx < sub_8ef4403c.length:
        mem[0] = sub_8ef4403c[idx]
        mem[32] = sha3(address(msg.sender), 111)
        sub_7ec475a8[address(msg.sender)][stor103[idx]] = sub_420480b8[stor103[idx]]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = sub_8ef4403c[idx]
        mem[mem[64] + 64] = sub_420480b8[stor103[idx]]
        emit StakerSnapshotsUpdated(msg.sender, sub_8ef4403c[idx], sub_420480b8[stor103[idx]]);
        idx = idx + 1
        continue 
    if arg1 + sub_a8c7a08a[msg.sender] < sub_a8c7a08a[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    sub_a8c7a08a[msg.sender] += arg1
    emit 0x7257c0a3: (arg1 + sub_a8c7a08a[msg.sender]), msg.sender
    if arg1 + sub_c00c4da1 < sub_c00c4da1:
        revert with 0, 'SafeMath: addition overflow'
    sub_c00c4da1 += arg1
    emit 0xa777ef2b: (arg1 + sub_c00c4da1)
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0x634cffeb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vETokenAddress)
    call vETokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor112 = 1
}



}
