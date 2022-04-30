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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function addNewAsset(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
                _340 = mem[64]
                mem[64] = mem[64] + 64
                mem[_340] = 30
                mem[_340 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _347 + 68] = mem[idx + _340 + 32]
                        idx = idx + 32
                        continue 
                    mem[_347 + 68] = mem[_347 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _347 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 109
                if not stakes[address(msg.sender)]:
                    _386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_386] = 26
                    mem[_386 + 32] = 'SafeMath: division by zero'
                    _396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_396] = 26
                    mem[_396 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _389 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_389] = 26
                    mem[_389 + 32] = 'SafeMath: division by zero'
                    _397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_397] = 26
                    mem[_397 + 32] = 'SafeMath: division by zero'
                    if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18:
                        mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _435 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _437 = mem[_435]
                            t = _435 + 32
                            u = _435 + 32
                            s = mem[_435]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_435 + floor32(mem[_435]) + 32] = mem[_435 + -(mem[_435] % 32) + floor32(mem[_435]) + 64 len mem[_435] % 32] or Mask(8 * -(mem[_435] % 32) + 32, -(8 * -(mem[_435] % 32) + 32) + 256, mem[_435 + floor32(mem[_435]) + 32])
                            call msg.sender.mem[_435 + 32 len 4] with:
                               value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[_435 + 36 len _437 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_435 + 32] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            else:
                                mem[64] = _435 + ceil32(return_data.size) + 33
                                mem[_435 + 32] = return_data.size
                                mem[_435 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_435 + ceil32(return_data.size) + 33] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        else:
                            _430 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            _431 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_431 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_431 + 36 len 28]
                            _434 = mem[_431]
                            t = _431 + 32
                            u = _430 + 100
                            s = mem[_431]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_430 + floor32(mem[_431]) + 100] = mem[_431 + -(mem[_431] % 32) + floor32(mem[_431]) + 64 len mem[_431] % 32] or Mask(8 * -(mem[_431] % 32) + 32, -(8 * -(mem[_431] % 32) + 32) + 256, mem[_430 + floor32(mem[_431]) + 100])
                            call sub_8ef4403c[idx].mem[_430 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_430 + 104 len _434 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_430 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            else:
                                mem[64] = _430 + ceil32(return_data.size) + 101
                                mem[_430 + 100] = return_data.size
                                mem[_430 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_430 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_430 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
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
                    _354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_354] = 30
                    mem[_354 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                        _362 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _362 + 68] = mem[idx + _354 + 32]
                            idx = idx + 32
                            continue 
                        mem[_362 + 68] = mem[_362 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _362 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 109
                    if not stakes[address(msg.sender)]:
                        _390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_390] = 26
                        mem[_390 + 32] = 'SafeMath: division by zero'
                        _398 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_398] = 26
                        mem[_398 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0
                        emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _394 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_394] = 26
                        mem[_394 + 32] = 'SafeMath: division by zero'
                        _400 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_400] = 26
                        mem[_400 + 32] = 'SafeMath: division by zero'
                        if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18:
                            mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _463 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _465 = mem[_463]
                                t = _463 + 32
                                u = mem[64]
                                s = mem[_463]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_463])] = mem[_463 + floor32(mem[_463]) + -(mem[_463] % 32) + 64 len mem[_463] % 32] or Mask(8 * -(mem[_463] % 32) + 32, -(8 * -(mem[_463] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_463])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _465 + _463 + -mem[64] + 28]
                                if return_data.size:
                                    _672 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_672] = return_data.size
                                    mem[_672 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            else:
                                _458 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                                _459 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_459 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_459 + 36 len 28]
                                _462 = mem[_459]
                                t = _459 + 32
                                u = _458 + 100
                                s = mem[_459]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_458 + floor32(mem[_459]) + 100] = mem[_459 + -(mem[_459] % 32) + floor32(mem[_459]) + 64 len mem[_459] % 32] or Mask(8 * -(mem[_459] % 32) + 32, -(8 * -(mem[_459] % 32) + 32) + 256, mem[_458 + floor32(mem[_459]) + 100])
                                call sub_8ef4403c[idx].mem[_458 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_458 + 104 len _462 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_458 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                                else:
                                    mem[64] = _458 + ceil32(return_data.size) + 101
                                    mem[_458 + 100] = return_data.size
                                    mem[_458 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_458 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_458 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        emit StakingGainsWithdrawn(((sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18), msg.sender, sub_8ef4403c[idx]);
                else:
                    _356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_356] = 30
                    mem[_356 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                        _368 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _368 + 68] = mem[idx + _356 + 32]
                            idx = idx + 32
                            continue 
                        mem[_368 + 68] = mem[_368 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _368 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 109
                    if not stakes[address(msg.sender)]:
                        _393 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_393] = 26
                        mem[_393 + 32] = 'SafeMath: division by zero'
                        _399 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_399] = 26
                        mem[_399 + 32] = 'SafeMath: division by zero'
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            s = 32
                            while s < 26:
                                mem[s + mem[64] + 68] = mem[s + _399 + 32]
                                s = s + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _447 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _449 = mem[_447]
                                t = _447 + 32
                                u = mem[64]
                                s = mem[_447]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_447])] = mem[_447 + floor32(mem[_447]) + -(mem[_447] % 32) + 64 len mem[_447] % 32] or Mask(8 * -(mem[_447] % 32) + 32, -(8 * -(mem[_447] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_447])])
                                call msg.sender.mem[mem[64] len 4] with:
                                   value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _449 + _447 + -mem[64] + 28]
                                if return_data.size:
                                    _680 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_680] = return_data.size
                                    mem[_680 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _442 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _443 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_443 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_443 + 36 len 28]
                                _446 = mem[_443]
                                t = _443 + 32
                                u = _442 + 100
                                s = mem[_443]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_442 + floor32(mem[_443]) + 100] = mem[_443 + -(mem[_443] % 32) + floor32(mem[_443]) + 64 len mem[_443] % 32] or Mask(8 * -(mem[_443] % 32) + 32, -(8 * -(mem[_443] % 32) + 32) + 256, mem[_442 + floor32(mem[_443]) + 100])
                                call sub_8ef4403c[idx].mem[_442 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_442 + 104 len _446 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_442 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _442 + ceil32(return_data.size) + 101
                                    mem[_442 + 100] = return_data.size
                                    mem[_442 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_442 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_442 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                    else:
                        if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
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
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _401 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                                _475 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                _477 = mem[_475]
                                t = _475 + 32
                                u = _475 + 32
                                s = mem[_475]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_475 + floor32(mem[_475]) + 32] = mem[_475 + -(mem[_475] % 32) + floor32(mem[_475]) + 64 len mem[_475] % 32] or Mask(8 * -(mem[_475] % 32) + 32, -(8 * -(mem[_475] % 32) + 32) + 256, mem[_475 + floor32(mem[_475]) + 32])
                                call msg.sender.mem[_475 + 32 len 4] with:
                                   value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                     gas gas_remaining wei
                                    args mem[_475 + 36 len _477 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_475 + 32] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _475 + ceil32(return_data.size) + 33
                                    mem[_475 + 32] = return_data.size
                                    mem[_475 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransferETH'
                                    mem[_475 + ceil32(return_data.size) + 33] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                _470 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                _471 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_471 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_471 + 36 len 28]
                                _474 = mem[_471]
                                t = _471 + 32
                                u = _470 + 100
                                s = mem[_471]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_470 + floor32(mem[_471]) + 100] = mem[_471 + -(mem[_471] % 32) + floor32(mem[_471]) + 64 len mem[_471] % 32] or Mask(8 * -(mem[_471] % 32) + 32, -(8 * -(mem[_471] % 32) + 32) + 256, mem[_470 + floor32(mem[_471]) + 100])
                                call sub_8ef4403c[idx].mem[_470 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_470 + 104 len _474 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, '!safeTransfer'
                                    mem[_470 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                                else:
                                    mem[64] = _470 + ceil32(return_data.size) + 101
                                    mem[_470 + 100] = return_data.size
                                    mem[_470 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, '!safeTransfer'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_470 + 132]:
                                            revert with 0, '!safeTransfer'
                                    mem[_470 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
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
}

function unstake(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 109
    if stakes[msg.sender] <= 0:
        revert with 0, 'user must have a non-zero stake'
    idx = 0
    while idx < sub_8ef4403c.length:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
            mem[0] = sub_8ef4403c[idx]
            mem[32] = 110
            _401 = mem[64]
            mem[64] = mem[64] + 64
            mem[_401] = 30
            mem[_401 + 32] = 'SafeMath: subtraction overflow'
            if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                _405 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _405 + 68] = mem[idx + _401 + 32]
                    idx = idx + 32
                    continue 
                mem[_405 + 68] = mem[_405 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _405 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 109
            if not stakes[address(msg.sender)]:
                _458 = mem[64]
                mem[64] = mem[64] + 64
                mem[_458] = 26
                mem[_458 + 32] = 'SafeMath: division by zero'
                _500 = mem[64]
                mem[64] = mem[64] + 64
                mem[_500] = 26
                mem[_500 + 32] = 'SafeMath: division by zero'
                mem[mem[64]] = 0
                emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
            else:
                if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _471 = mem[64]
                mem[64] = mem[64] + 64
                mem[_471] = 26
                mem[_471 + 32] = 'SafeMath: division by zero'
                _517 = mem[64]
                mem[64] = mem[64] + 64
                mem[_517] = 26
                mem[_517 + 32] = 'SafeMath: division by zero'
                if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18:
                    mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                else:
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                        _583 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        _585 = mem[_583]
                        t = _583 + 32
                        u = _583 + 32
                        s = mem[_583]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_583 + floor32(mem[_583]) + 32] = mem[_583 + -(mem[_583] % 32) + floor32(mem[_583]) + 64 len mem[_583] % 32] or Mask(8 * -(mem[_583] % 32) + 32, -(8 * -(mem[_583] % 32) + 32) + 256, mem[_583 + floor32(mem[_583]) + 32])
                        call msg.sender.mem[_583 + 32 len 4] with:
                           value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 wei
                             gas gas_remaining wei
                            args mem[_583 + 36 len _585 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                            mem[_583 + 32] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        else:
                            mem[64] = _583 + ceil32(return_data.size) + 33
                            mem[_583 + 32] = return_data.size
                            mem[_583 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                            mem[_583 + ceil32(return_data.size) + 33] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                    else:
                        _578 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        _579 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_579 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_579 + 36 len 28]
                        _582 = mem[_579]
                        t = _579 + 32
                        u = _578 + 100
                        s = mem[_579]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_578 + floor32(mem[_579]) + 100] = mem[_579 + -(mem[_579] % 32) + floor32(mem[_579]) + 64 len mem[_579] % 32] or Mask(8 * -(mem[_579] % 32) + 32, -(8 * -(mem[_579] % 32) + 32) + 256, mem[_578 + floor32(mem[_579]) + 100])
                        call sub_8ef4403c[idx].mem[_578 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_578 + 104 len _582 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeTransfer'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeTransfer'
                            mem[_578 + 100] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                        else:
                            mem[64] = _578 + ceil32(return_data.size) + 101
                            mem[_578 + 100] = return_data.size
                            mem[_578 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransfer'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_578 + 132]:
                                    revert with 0, '!safeTransfer'
                            mem[_578 + ceil32(return_data.size) + 101] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
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
                _414 = mem[64]
                mem[64] = mem[64] + 64
                mem[_414] = 30
                mem[_414 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _420 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _420 + 68] = mem[idx + _414 + 32]
                        idx = idx + 32
                        continue 
                    mem[_420 + 68] = mem[_420 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _420 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 109
                if not stakes[address(msg.sender)]:
                    _484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_484] = 26
                    mem[_484 + 32] = 'SafeMath: division by zero'
                    _522 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_522] = 26
                    mem[_522 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = 0
                    emit StakingGainsWithdrawn(0, msg.sender, sub_8ef4403c[idx]);
                else:
                    if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_496] = 26
                    mem[_496 + 32] = 'SafeMath: division by zero'
                    _540 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_540] = 26
                    mem[_540 + 32] = 'SafeMath: division by zero'
                    if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _611 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _613 = mem[_611]
                            t = _611 + 32
                            u = mem[64]
                            s = mem[_611]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_611])] = mem[_611 + floor32(mem[_611]) + -(mem[_611] % 32) + 64 len mem[_611] % 32] or Mask(8 * -(mem[_611] % 32) + 32, -(8 * -(mem[_611] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_611])])
                            call msg.sender.mem[mem[64] len 4] with:
                               value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _613 + _611 + -mem[64] + 28]
                            if return_data.size:
                                _820 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_820] = return_data.size
                                mem[_820 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeTransferETH'
                        else:
                            _606 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                            _607 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_607 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_607 + 36 len 28]
                            _610 = mem[_607]
                            t = _607 + 32
                            u = mem[64]
                            s = mem[_607]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_607])] = mem[_607 + floor32(mem[_607]) + -(mem[_607] % 32) + 64 len mem[_607] % 32] or Mask(8 * -(mem[_607] % 32) + 32, -(8 * -(mem[_607] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_607])])
                            call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _610 + _606 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                            else:
                                _819 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_819] = return_data.size
                                mem[_819 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_819 + 32]:
                                        revert with 0, '!safeTransfer'
                    mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18
                    emit StakingGainsWithdrawn(((sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18), msg.sender, sub_8ef4403c[idx]);
            else:
                _416 = mem[64]
                mem[64] = mem[64] + 64
                mem[_416] = 30
                mem[_416 + 32] = 'SafeMath: subtraction overflow'
                if sub_7ec475a8[address(msg.sender)][stor103[idx]] > sub_420480b8[stor103[idx]]:
                    _432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _432 + 68] = mem[idx + _416 + 32]
                        idx = idx + 32
                        continue 
                    mem[_432 + 68] = mem[_432 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _432 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 109
                if not stakes[address(msg.sender)]:
                    _487 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_487] = 26
                    mem[_487 + 32] = 'SafeMath: division by zero'
                    _531 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_531] = 26
                    mem[_531 + 32] = 'SafeMath: division by zero'
                    if not 10^(-uint8(ext_call.return_data[0]) + 18):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        s = 32
                        while s < 26:
                            mem[s + mem[64] + 68] = mem[s + _531 + 32]
                            s = s + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / 10^(-uint8(ext_call.return_data[0]) + 18):
                        mem[mem[64]] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _595 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _597 = mem[_595]
                            t = _595 + 32
                            u = _595 + 32
                            s = mem[_595]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_595 + floor32(mem[_595]) + 32] = mem[_595 + -(mem[_595] % 32) + floor32(mem[_595]) + 64 len mem[_595] % 32] or Mask(8 * -(mem[_595] % 32) + 32, -(8 * -(mem[_595] % 32) + 32) + 256, mem[_595 + floor32(mem[_595]) + 32])
                            call msg.sender.mem[_595 + 32 len 4] with:
                               value 0 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                 gas gas_remaining wei
                                args mem[_595 + 36 len _597 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_595 + 32] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                mem[64] = _595 + ceil32(return_data.size) + 33
                                mem[_595 + 32] = return_data.size
                                mem[_595 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_595 + ceil32(return_data.size) + 33] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            _590 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            _591 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_591 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_591 + 36 len 28]
                            _594 = mem[_591]
                            t = _591 + 32
                            u = _590 + 100
                            s = mem[_591]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_590 + floor32(mem[_591]) + 100] = mem[_591 + -(mem[_591] % 32) + floor32(mem[_591]) + 64 len mem[_591] % 32] or Mask(8 * -(mem[_591] % 32) + 32, -(8 * -(mem[_591] % 32) + 32) + 256, mem[_590 + floor32(mem[_591]) + 100])
                            call sub_8ef4403c[idx].mem[_590 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_590 + 104 len _594 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                                mem[_590 + 100] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                mem[64] = _590 + ceil32(return_data.size) + 101
                                mem[_590 + 100] = return_data.size
                                mem[_590 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_590 + 132]:
                                        revert with 0, '!safeTransfer'
                                mem[_590 + ceil32(return_data.size) + 101] = 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
                    emit StakingGainsWithdrawn((0 / 10^(-uint8(ext_call.return_data[0]) + 18)), msg.sender, sub_8ef4403c[idx]);
                else:
                    if (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_420480b8[stor103[idx]] - sub_7ec475a8[address(msg.sender)][stor103[idx]]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _499 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_499] = 26
                    mem[_499 + 32] = 'SafeMath: division by zero'
                    _549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_549] = 26
                    mem[_549 + 32] = 'SafeMath: division by zero'
                    if not 10^(-uint8(ext_call.return_data[0]) + 18):
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _549 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18):
                        mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                    else:
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == sub_8ef4403c[idx]:
                            _623 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            _625 = mem[_623]
                            t = _623 + 32
                            u = _623 + 32
                            s = mem[_623]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_623 + floor32(mem[_623]) + 32] = mem[_623 + -(mem[_623] % 32) + floor32(mem[_623]) + 64 len mem[_623] % 32] or Mask(8 * -(mem[_623] % 32) + 32, -(8 * -(mem[_623] % 32) + 32) + 256, mem[_623 + floor32(mem[_623]) + 32])
                            call msg.sender.mem[_623 + 32 len 4] with:
                               value (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18) wei
                                 gas gas_remaining wei
                                args mem[_623 + 36 len _625 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_623 + 32] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            else:
                                mem[64] = _623 + ceil32(return_data.size) + 33
                                mem[_623 + 32] = return_data.size
                                mem[_623 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransferETH'
                                mem[_623 + ceil32(return_data.size) + 33] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                        else:
                            _618 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
                            _619 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_619 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_619 + 36 len 28]
                            _622 = mem[_619]
                            t = _619 + 32
                            u = mem[64]
                            s = mem[_619]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_619])] = mem[_619 + floor32(mem[_619]) + -(mem[_619] % 32) + 64 len mem[_619] % 32] or Mask(8 * -(mem[_619] % 32) + 32, -(8 * -(mem[_619] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_619])])
                            call sub_8ef4403c[idx].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _622 + _618 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeTransfer'
                            else:
                                _823 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_823] = return_data.size
                                mem[_823 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeTransfer'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_823 + 32]:
                                        revert with 0, '!safeTransfer'
                            mem[mem[64]] = (sub_420480b8[stor103[idx]] * stakes[address(msg.sender)]) - (sub_7ec475a8[address(msg.sender)][stor103[idx]] * stakes[address(msg.sender)]) / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18)
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
            _890 = mem[64]
            mem[64] = mem[64] + 64
            mem[_890] = 30
            mem[_890 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > stakes[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = msg.sender
            mem[32] = 109
            stakes[msg.sender] -= arg1
            _978 = mem[64]
            mem[64] = mem[64] + 64
            mem[_978] = 30
            mem[_978 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > totalTokenStaked:
                revert with 0, 'SafeMath: subtraction overflow'
            totalTokenStaked -= arg1
            emit totalTokenStakedUpdated((totalTokenStaked - arg1));
            _998 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1
            _999 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_999 + 32 len 4] = unknown_0xa9059cbb(?????)
            _1002 = mem[_999]
            mem[_998 + 100 len floor32(mem[_999])] = mem[_999 + 32 len floor32(mem[_999])]
            mem[_998 + floor32(mem[_999]) + -(mem[_999] % 32) + 132 len mem[_999] % 32] = mem[_999 + -(mem[_999] % 32) + floor32(mem[_999]) + 64 len mem[_999] % 32]
            call stakeTokenAddress.mem[_998 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_998 + 104 len _1002 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, '!safeTransfer'
            else:
                mem[_998 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_998 + 132]:
                        revert with 0, '!safeTransfer'
            emit StakeChanged((stakes[msg.sender] - arg1), msg.sender);
        else:
            _891 = mem[64]
            mem[64] = mem[64] + 64
            mem[_891] = 30
            mem[_891 + 32] = 'SafeMath: subtraction overflow'
            if stakes[msg.sender] > stakes[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = msg.sender
            mem[32] = 109
            stakes[msg.sender] = 0
            _980 = mem[64]
            mem[64] = mem[64] + 64
            mem[_980] = 30
            mem[_980 + 32] = 'SafeMath: subtraction overflow'
            if stakes[msg.sender] > totalTokenStaked:
                revert with 0, 'SafeMath: subtraction overflow'
            totalTokenStaked -= stakes[msg.sender]
            emit totalTokenStakedUpdated((totalTokenStaked - stakes[msg.sender]));
            _1004 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = stakes[msg.sender]
            _1005 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1005 + 32 len 4] = unknown_0xa9059cbb(?????)
            _1008 = mem[_1005]
            mem[mem[64] len floor32(mem[_1005])] = mem[_1005 + 32 len floor32(mem[_1005])]
            mem[mem[64] + floor32(mem[_1005]) + -(mem[_1005] % 32) + 32 len mem[_1005] % 32] = mem[_1005 + floor32(mem[_1005]) + -(mem[_1005] % 32) + 64 len mem[_1005] % 32]
            call stakeTokenAddress with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1008 + _1004 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, '!safeTransfer'
            else:
                _1081 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1081 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1081 + 32]:
                        revert with 0, '!safeTransfer'
            emit StakeChanged(0, msg.sender);
}



}
