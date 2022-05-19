contract main {




// =====================  Runtime code  =====================


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

function stakeToken() {
    return stakeTokenAddress
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

function sub_eeccde93(?) {
    require calldata.size - 4 >= 32
    return bool(stor107[arg1])
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

function transferOwnership(address arg1) {
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

function getPendingGain(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if sub_7ec475a8[address(arg2)][address(arg1)] > sub_420480b8[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakes[address(arg2)]:
            return 0
        if (sub_420480b8[address(arg1)] * stakes[address(arg2)]) - (sub_7ec475a8[address(arg2)][address(arg1)] * stakes[address(arg2)]) / stakes[address(arg2)] != sub_420480b8[address(arg1)] - sub_7ec475a8[address(arg2)][address(arg1)]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((sub_420480b8[address(arg1)] * stakes[address(arg2)]) - (sub_7ec475a8[address(arg2)][address(arg1)] * stakes[address(arg2)]) / 10^18)
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_7ec475a8[address(arg2)][address(arg1)] > sub_420480b8[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[31 len 1] >= 18:
        if not stakes[address(arg2)]:
            return 0
        if (sub_420480b8[address(arg1)] * stakes[address(arg2)]) - (sub_7ec475a8[address(arg2)][address(arg1)] * stakes[address(arg2)]) / stakes[address(arg2)] != sub_420480b8[address(arg1)] - sub_7ec475a8[address(arg2)][address(arg1)]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((sub_420480b8[address(arg1)] * stakes[address(arg2)]) - (sub_7ec475a8[address(arg2)][address(arg1)] * stakes[address(arg2)]) / 10^18)
    if not stakes[address(arg2)]:
        if not 10^(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^(-uint8(ext_call.return_data[0]) + 18))
    if (sub_420480b8[address(arg1)] * stakes[address(arg2)]) - (sub_7ec475a8[address(arg2)][address(arg1)] * stakes[address(arg2)]) / stakes[address(arg2)] != sub_420480b8[address(arg1)] - sub_7ec475a8[address(arg2)][address(arg1)]:
        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^(-uint8(ext_call.return_data[0]) + 18):
        revert with 0, 'SafeMath: division by zero'
    return ((sub_420480b8[address(arg1)] * stakes[address(arg2)]) - (sub_7ec475a8[address(arg2)][address(arg1)] * stakes[address(arg2)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18))
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
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
            if not arg1:
                if not totalTokenStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if arg1 / arg1 != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg1:
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
        else:
            require ext_code.size(sub_433f4660[msg.sender])
            staticcall sub_433f4660[msg.sender].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] >= 18:
                if not arg1:
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if arg1 / arg1 != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not arg1:
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if not arg1:
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if 10^(-ext_call.return_data[31 len 1] + 18) * arg1 / arg1 != 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 10^(-ext_call.return_data[31 len 1] + 18) * arg1:
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * 10^(-ext_call.return_data[31 len 1] + 18) * arg1 / 10^(-ext_call.return_data[31 len 1] + 18) * arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
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
            if not arg1:
                if not totalTokenStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if arg1 / arg1 != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg1:
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
        else:
            require ext_code.size(sub_433f4660[msg.sender])
            staticcall sub_433f4660[msg.sender].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] >= 18:
                if not arg1:
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if arg1 / arg1 != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not arg1:
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if not arg1:
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if 10^(-ext_call.return_data[31 len 1] + 18) * arg1 / arg1 != 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 10^(-ext_call.return_data[31 len 1] + 18) * arg1:
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * 10^(-ext_call.return_data[31 len 1] + 18) * arg1 / 10^(-ext_call.return_data[31 len 1] + 18) * arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
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
            if not arg1:
                if not totalTokenStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if arg1 / arg1 != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg1:
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
        else:
            require ext_code.size(sub_433f4660[msg.sender])
            staticcall sub_433f4660[msg.sender].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] >= 18:
                if not arg1:
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if arg1 / arg1 != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not arg1:
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * arg1 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (10^18 * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
            else:
                if not arg1:
                    if not totalTokenStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                    emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                else:
                    if 10^(-ext_call.return_data[31 len 1] + 18) * arg1 / arg1 != 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 10^(-ext_call.return_data[31 len 1] + 18) * arg1:
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 0 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (0 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
                    else:
                        if 10^18 * 10^(-ext_call.return_data[31 len 1] + 18) * arg1 / 10^(-ext_call.return_data[31 len 1] + 18) * arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not totalTokenStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]] < sub_420480b8[stor105[msg.sender]]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_420480b8[stor105[msg.sender]] += 10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / totalTokenStaked
                        emit TokenFeeUpdated(arg1, (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * arg1 / totalTokenStaked) + sub_420480b8[stor105[msg.sender]], sub_433f4660[msg.sender]);
}

function stake(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor112 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor112 = 2
    if arg1 <= 0:
        revert with 0, 'amount must be non-zero'
    mem[0] = msg.sender
    mem[32] = 109
    if stakes[msg.sender]:
        idx = 0
        while idx < sub_8ef4403c.length:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                mem[0] = sub_8ef4403c[idx]
                mem[32] = 110
                _342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_342] = 30
                mem[_342 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _349 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _349 + 68] = mem[idx + _342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_349 + 68] = mem[_349 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _349 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 109
                if not stakes[address(msg.sender)]:
                    _388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_388] = 26
                    mem[_388 + 32] = 'SafeMath: division by zero'
                    _398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_398] = 26
                    mem[_398 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _391 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_391] = 26
                    mem[_391 + 32] = 'SafeMath: division by zero'
                    _399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_399] = 26
                    mem[_399 + 32] = 'SafeMath: division by zero'
                    if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18:
                        mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _437 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _439 = mem[_437]
                            t = _437 + 32
                            u = _437 + 32
                            s = mem[_437]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_437 + floor32(mem[_437]) + 32] = mem[_437 + -(mem[_437] % 32) + floor32(mem[_437]) + 64 len mem[_437] % 32] or Mask(8 * -(mem[_437] % 32) + 32, -(8 * -(mem[_437] % 32) + 32) + 256, mem[_437 + floor32(mem[_437]) + 32])
                            call msg.sender.mem[_437 + 32 len 4] with:
                               value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[_437 + 36 len _439 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_437 + 32] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            else:
                                mem[64] = _437 + ceil32(return_data.size) + 33
                                mem[_437 + 32] = return_data.size
                                mem[_437 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_437 + ceil32(return_data.size) + 33] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        else:
                            _432 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            _433 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_433 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_433 + 36 len 28]
                            _436 = mem[_433]
                            t = _433 + 32
                            u = _432 + 100
                            s = mem[_433]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_432 + floor32(mem[_433]) + 100] = mem[_433 + -(mem[_433] % 32) + floor32(mem[_433]) + 64 len mem[_433] % 32] or Mask(8 * -(mem[_433] % 32) + 32, -(8 * -(mem[_433] % 32) + 32) + 256, mem[_432 + floor32(mem[_433]) + 100])
                            call sub_8ef4403c[idx].mem[_432 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_432 + 104 len _436 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_432 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            else:
                                mem[64] = _432 + ceil32(return_data.size) + 101
                                mem[_432 + 100] = return_data.size
                                mem[_432 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_432 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_432 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                    emit StakingGainsWithdrawn(((sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18), msg.sender, sub_8ef4403c[idx]);
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
                    _356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_356] = 30
                    mem[_356 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                        _364 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _364 + 68] = mem[idx + _356 + 32]
                            idx = idx + 32
                            continue 
                        mem[_364 + 68] = mem[_364 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _364 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 109
                    if not stakes[address(msg.sender)]:
                        _392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_392] = 26
                        mem[_392 + 32] = 'SafeMath: division by zero'
                        _400 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_400] = 26
                        mem[_400 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _396 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_396] = 26
                        mem[_396 + 32] = 'SafeMath: division by zero'
                        _402 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_402] = 26
                        mem[_402 + 32] = 'SafeMath: division by zero'
                        if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18:
                            mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _465 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _467 = mem[_465]
                                t = _465 + 32
                                u = _465 + 32
                                s = mem[_465]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_465 + floor32(mem[_465]) + 32] = mem[_465 + -(mem[_465] % 32) + floor32(mem[_465]) + 64 len mem[_465] % 32] or Mask(8 * -(mem[_465] % 32) + 32, -(8 * -(mem[_465] % 32) + 32) + 256, mem[_465 + floor32(mem[_465]) + 32])
                                call msg.sender.mem[_465 + 32 len 4] with:
                                   value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[_465 + 36 len _467 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_465 + 32] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                                else:
                                    mem[64] = _465 + ceil32(return_data.size) + 33
                                    mem[_465 + 32] = return_data.size
                                    mem[_465 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_465 + ceil32(return_data.size) + 33] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            else:
                                _460 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                                _461 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_461 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_461 + 36 len 28]
                                _464 = mem[_461]
                                t = _461 + 32
                                u = _460 + 100
                                s = mem[_461]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_460 + floor32(mem[_461]) + 100] = mem[_461 + -(mem[_461] % 32) + floor32(mem[_461]) + 64 len mem[_461] % 32] or Mask(8 * -(mem[_461] % 32) + 32, -(8 * -(mem[_461] % 32) + 32) + 256, mem[_460 + floor32(mem[_461]) + 100])
                                call sub_8ef4403c[idx].mem[_460 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_460 + 104 len _464 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_460 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                                else:
                                    mem[64] = _460 + ceil32(return_data.size) + 101
                                    mem[_460 + 100] = return_data.size
                                    mem[_460 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_460 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_460 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        emit StakingGainsWithdrawn(((sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    _358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_358] = 30
                    mem[_358 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                        _370 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _370 + 68] = mem[idx + _358 + 32]
                            idx = idx + 32
                            continue 
                        mem[_370 + 68] = mem[_370 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _370 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 109
                    if not stakes[address(msg.sender)]:
                        _395 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_395] = 26
                        mem[_395 + 32] = 'SafeMath: division by zero'
                        _401 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_401] = 26
                        mem[_401 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            s = 32
                            while s < 26:
                                mem[s + mem[64] + 68] = mem[s + _401 + 32]
                                s = s + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _449 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _451 = mem[_449]
                                t = _449 + 32
                                u = _449 + 32
                                s = mem[_449]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_449 + floor32(mem[_449]) + 32] = mem[_449 + -(mem[_449] % 32) + floor32(mem[_449]) + 64 len mem[_449] % 32] or Mask(8 * -(mem[_449] % 32) + 32, -(8 * -(mem[_449] % 32) + 32) + 256, mem[_449 + floor32(mem[_449]) + 32])
                                call msg.sender.mem[_449 + 32 len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[_449 + 36 len _451 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_449 + 32] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _449 + ceil32(return_data.size) + 33
                                    mem[_449 + 32] = return_data.size
                                    mem[_449 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_449 + ceil32(return_data.size) + 33] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _444 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _445 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_445 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_445 + 36 len 28]
                                _448 = mem[_445]
                                t = _445 + 32
                                u = _444 + 100
                                s = mem[_445]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_444 + floor32(mem[_445]) + 100] = mem[_445 + -(mem[_445] % 32) + floor32(mem[_445]) + 64 len mem[_445] % 32] or Mask(8 * -(mem[_445] % 32) + 32, -(8 * -(mem[_445] % 32) + 32) + 256, mem[_444 + floor32(mem[_445]) + 100])
                                call sub_8ef4403c[idx].mem[_444 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_444 + 104 len _448 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_444 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _444 + ceil32(return_data.size) + 101
                                    mem[_444 + 100] = return_data.size
                                    mem[_444 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_444 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_444 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _397 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_397] = 26
                        mem[_397 + 32] = 'SafeMath: division by zero'
                        _403 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_403] = 26
                        mem[_403 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _403 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _477 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _479 = mem[_477]
                                t = _477 + 32
                                u = _477 + 32
                                s = mem[_477]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_477 + floor32(mem[_477]) + 32] = mem[_477 + -(mem[_477] % 32) + floor32(mem[_477]) + 64 len mem[_477] % 32] or Mask(8 * -(mem[_477] % 32) + 32, -(8 * -(mem[_477] % 32) + 32) + 256, mem[_477 + floor32(mem[_477]) + 32])
                                call msg.sender.mem[_477 + 32 len 4] with:
                                   value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[_477 + 36 len _479 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_477 + 32] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _477 + ceil32(return_data.size) + 33
                                    mem[_477 + 32] = return_data.size
                                    mem[_477 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_477 + ceil32(return_data.size) + 33] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _472 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _473 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_473 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_473 + 36 len 28]
                                _476 = mem[_473]
                                t = _473 + 32
                                u = _472 + 100
                                s = mem[_473]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_472 + floor32(mem[_473]) + 100] = mem[_473 + -(mem[_473] % 32) + floor32(mem[_473]) + 64 len mem[_473] % 32] or Mask(8 * -(mem[_473] % 32) + 32, -(8 * -(mem[_473] % 32) + 32) + 256, mem[_472 + floor32(mem[_473]) + 100])
                                call sub_8ef4403c[idx].mem[_472 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_472 + 104 len _476 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_472 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _472 + ceil32(return_data.size) + 101
                                    mem[_472 + 100] = return_data.size
                                    mem[_472 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_472 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_472 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn(((sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
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

function unstake(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor112 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
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
            _403 = mem[64]
            mem[64] = mem[64] + 64
            mem[_403] = 30
            mem[_403 + 32] = 'SafeMath: subtraction overflow'
            if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                _407 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _407 + 68] = mem[idx + _403 + 32]
                    idx = idx + 32
                    continue 
                mem[_407 + 68] = mem[_407 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _407 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 109
            if not stakes[address(msg.sender)]:
                _460 = mem[64]
                mem[64] = mem[64] + 64
                mem[_460] = 26
                mem[_460 + 32] = 'SafeMath: division by zero'
                _502 = mem[64]
                mem[64] = mem[64] + 64
                mem[_502] = 26
                mem[_502 + 32] = 'SafeMath: division by zero'
                mem[mem[64]] = 0
                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
            else:
                if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _473 = mem[64]
                mem[64] = mem[64] + 64
                mem[_473] = 26
                mem[_473 + 32] = 'SafeMath: division by zero'
                _519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_519] = 26
                mem[_519 + 32] = 'SafeMath: division by zero'
                if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18:
                    mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                else:
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                        _585 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        _587 = mem[_585]
                        t = _585 + 32
                        u = _585 + 32
                        s = mem[_585]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_585 + floor32(mem[_585]) + 32] = mem[_585 + -(mem[_585] % 32) + floor32(mem[_585]) + 64 len mem[_585] % 32] or Mask(8 * -(mem[_585] % 32) + 32, -(8 * -(mem[_585] % 32) + 32) + 256, mem[_585 + floor32(mem[_585]) + 32])
                        call msg.sender.mem[_585 + 32 len 4] with:
                           value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 wei
                             gas gas_remaining wei
                            args mem[_585 + 36 len _587 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                            mem[_585 + 32] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        else:
                            mem[64] = _585 + ceil32(return_data.size) + 33
                            mem[_585 + 32] = return_data.size
                            mem[_585 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                            mem[_585 + ceil32(return_data.size) + 33] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                    else:
                        _580 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        _581 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_581 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_581 + 36 len 28]
                        _584 = mem[_581]
                        t = _581 + 32
                        u = _580 + 100
                        s = mem[_581]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_580 + floor32(mem[_581]) + 100] = mem[_581 + -(mem[_581] % 32) + floor32(mem[_581]) + 64 len mem[_581] % 32] or Mask(8 * -(mem[_581] % 32) + 32, -(8 * -(mem[_581] % 32) + 32) + 256, mem[_580 + floor32(mem[_581]) + 100])
                        call sub_8ef4403c[idx].mem[_580 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_580 + 104 len _584 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeTransfer'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeTransfer'
                            mem[_580 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        else:
                            mem[64] = _580 + ceil32(return_data.size) + 101
                            mem[_580 + 100] = return_data.size
                            mem[_580 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransfer'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_580 + 132]:
                                    revert with 0, '!safeTransfer'
                            mem[_580 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                emit StakingGainsWithdrawn(((sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18), msg.sender, sub_8ef4403c[idx]);
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
                _416 = mem[64]
                mem[64] = mem[64] + 64
                mem[_416] = 30
                mem[_416 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _422 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _422 + 68] = mem[idx + _416 + 32]
                        idx = idx + 32
                        continue 
                    mem[_422 + 68] = mem[_422 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _422 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 109
                if not stakes[address(msg.sender)]:
                    _486 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_486] = 26
                    mem[_486 + 32] = 'SafeMath: division by zero'
                    _524 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_524] = 26
                    mem[_524 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _498 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_498] = 26
                    mem[_498 + 32] = 'SafeMath: division by zero'
                    _542 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_542] = 26
                    mem[_542 + 32] = 'SafeMath: division by zero'
                    if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18:
                        mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _613 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _615 = mem[_613]
                            t = _613 + 32
                            u = _613 + 32
                            s = mem[_613]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_613 + floor32(mem[_613]) + 32] = mem[_613 + -(mem[_613] % 32) + floor32(mem[_613]) + 64 len mem[_613] % 32] or Mask(8 * -(mem[_613] % 32) + 32, -(8 * -(mem[_613] % 32) + 32) + 256, mem[_613 + floor32(mem[_613]) + 32])
                            call msg.sender.mem[_613 + 32 len 4] with:
                               value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[_613 + 36 len _615 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_613 + 32] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            else:
                                mem[64] = _613 + ceil32(return_data.size) + 33
                                mem[_613 + 32] = return_data.size
                                mem[_613 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_613 + ceil32(return_data.size) + 33] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        else:
                            _608 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            _609 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_609 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_609 + 36 len 28]
                            _612 = mem[_609]
                            t = _609 + 32
                            u = _608 + 100
                            s = mem[_609]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_608 + floor32(mem[_609]) + 100] = mem[_609 + -(mem[_609] % 32) + floor32(mem[_609]) + 64 len mem[_609] % 32] or Mask(8 * -(mem[_609] % 32) + 32, -(8 * -(mem[_609] % 32) + 32) + 256, mem[_608 + floor32(mem[_609]) + 100])
                            call sub_8ef4403c[idx].mem[_608 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_608 + 104 len _612 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_608 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            else:
                                mem[64] = _608 + ceil32(return_data.size) + 101
                                mem[_608 + 100] = return_data.size
                                mem[_608 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_608 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_608 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                    emit StakingGainsWithdrawn(((sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                _418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_418] = 30
                mem[_418 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _434 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _434 + 68] = mem[idx + _418 + 32]
                        idx = idx + 32
                        continue 
                    mem[_434 + 68] = mem[_434 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _434 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 109
                if not stakes[address(msg.sender)]:
                    _489 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_489] = 26
                    mem[_489 + 32] = 'SafeMath: division by zero'
                    _533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_533] = 26
                    mem[_533 + 32] = 'SafeMath: division by zero'
                    if not 10^(-uint8(ext_call.return_data[0]) + 18):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        s = 32
                        while s < 26:
                            mem[s + mem[64] + 68] = mem[s + _533 + 32]
                            s = s + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _597 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _599 = mem[_597]
                            t = _597 + 32
                            u = _597 + 32
                            s = mem[_597]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_597 + floor32(mem[_597]) + 32] = mem[_597 + -(mem[_597] % 32) + floor32(mem[_597]) + 64 len mem[_597] % 32] or Mask(8 * -(mem[_597] % 32) + 32, -(8 * -(mem[_597] % 32) + 32) + 256, mem[_597 + floor32(mem[_597]) + 32])
                            call msg.sender.mem[_597 + 32 len 4] with:
                               value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                 gas gas_remaining wei
                                args mem[_597 + 36 len _599 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_597 + 32] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                mem[64] = _597 + ceil32(return_data.size) + 33
                                mem[_597 + 32] = return_data.size
                                mem[_597 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_597 + ceil32(return_data.size) + 33] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            _592 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            _593 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_593 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_593 + 36 len 28]
                            _596 = mem[_593]
                            t = _593 + 32
                            u = _592 + 100
                            s = mem[_593]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_592 + floor32(mem[_593]) + 100] = mem[_593 + -(mem[_593] % 32) + floor32(mem[_593]) + 64 len mem[_593] % 32] or Mask(8 * -(mem[_593] % 32) + 32, -(8 * -(mem[_593] % 32) + 32) + 256, mem[_592 + floor32(mem[_593]) + 100])
                            call sub_8ef4403c[idx].mem[_592 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_592 + 104 len _596 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_592 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                mem[64] = _592 + ceil32(return_data.size) + 101
                                mem[_592 + 100] = return_data.size
                                mem[_592 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_592 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_592 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                    emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                else:
                    if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_501] = 26
                    mem[_501 + 32] = 'SafeMath: division by zero'
                    _551 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_551] = 26
                    mem[_551 + 32] = 'SafeMath: division by zero'
                    if not 10^(-uint8(ext_call.return_data[0]) + 18):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _551 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                        mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _625 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _627 = mem[_625]
                            t = _625 + 32
                            u = mem[64]
                            s = mem[_625]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_625])] = mem[_625 + floor32(mem[_625]) + -(mem[_625] % 32) + 64 len mem[_625] % 32] or Mask(8 * -(mem[_625] % 32) + 32, -(8 * -(mem[_625] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_625])])
                            call msg.sender.mem[mem[64] len 4] with:
                               value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _627 + _625 + -mem[64] + 28]
                            if return_data.size:
                                _826 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_826] = return_data.size
                                mem[_826 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                            mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            _620 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            _621 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_621 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_621 + 36 len 28]
                            _624 = mem[_621]
                            t = _621 + 32
                            u = _620 + 100
                            s = mem[_621]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_620 + floor32(mem[_621]) + 100] = mem[_621 + -(mem[_621] % 32) + floor32(mem[_621]) + 64 len mem[_621] % 32] or Mask(8 * -(mem[_621] % 32) + 32, -(8 * -(mem[_621] % 32) + 32) + 256, mem[_620 + floor32(mem[_621]) + 100])
                            call sub_8ef4403c[idx].mem[_620 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_620 + 104 len _624 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_620 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                mem[64] = _620 + ceil32(return_data.size) + 101
                                mem[_620 + 100] = return_data.size
                                mem[_620 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_620 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_620 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                    emit StakingGainsWithdrawn(((sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
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
            _892 = mem[64]
            mem[64] = mem[64] + 64
            mem[_892] = 30
            mem[_892 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > stakes[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = msg.sender
            mem[32] = 109
            stakes[msg.sender] -= arg1
            _980 = mem[64]
            mem[64] = mem[64] + 64
            mem[_980] = 30
            mem[_980 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > totalTokenStaked:
                revert with 0, 'SafeMath: subtraction overflow'
            totalTokenStaked -= arg1
            emit totalTokenStakedUpdated((totalTokenStaked - arg1));
            _1000 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1
            _1001 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1001 + 32 len 4] = unknown_0xa9059cbb(?????)
            _1004 = mem[_1001]
            mem[_1000 + 100 len floor32(mem[_1001])] = mem[_1001 + 32 len floor32(mem[_1001])]
            mem[_1000 + floor32(mem[_1001]) + -(mem[_1001] % 32) + 132 len mem[_1001] % 32] = mem[_1001 + -(mem[_1001] % 32) + floor32(mem[_1001]) + 64 len mem[_1001] % 32]
            call stakeTokenAddress.mem[_1000 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_1000 + 104 len _1004 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, '!safeTransfer'
            else:
                mem[_1000 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1000 + 132]:
                        revert with 0, '!safeTransfer'
            emit StakeChanged((stakes[msg.sender] - arg1), msg.sender);
        else:
            _893 = mem[64]
            mem[64] = mem[64] + 64
            mem[_893] = 30
            mem[_893 + 32] = 'SafeMath: subtraction overflow'
            if stakes[msg.sender] > stakes[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = msg.sender
            mem[32] = 109
            stakes[msg.sender] = 0
            _982 = mem[64]
            mem[64] = mem[64] + 64
            mem[_982] = 30
            mem[_982 + 32] = 'SafeMath: subtraction overflow'
            if stakes[msg.sender] > totalTokenStaked:
                revert with 0, 'SafeMath: subtraction overflow'
            totalTokenStaked -= stakes[msg.sender]
            emit totalTokenStakedUpdated((totalTokenStaked - stakes[msg.sender]));
            _1006 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = stakes[msg.sender]
            _1007 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1007 + 32 len 4] = unknown_0xa9059cbb(?????)
            _1010 = mem[_1007]
            mem[_1006 + 100 len floor32(mem[_1007])] = mem[_1007 + 32 len floor32(mem[_1007])]
            mem[_1006 + floor32(mem[_1007]) + -(mem[_1007] % 32) + 132 len mem[_1007] % 32] = mem[_1007 + -(mem[_1007] % 32) + floor32(mem[_1007]) + 64 len mem[_1007] % 32]
            call stakeTokenAddress.mem[_1006 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_1006 + 104 len _1010 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, '!safeTransfer'
            else:
                mem[_1006 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1006 + 132]:
                        revert with 0, '!safeTransfer'
            emit StakeChanged(0, msg.sender);
    stor112 = 1
}



}
