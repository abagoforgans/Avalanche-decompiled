contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#
const ONE = 10^18


address owner;
uint256 stor1;
address stakingTokenAddress;
address sub_291fa963Address;
uint256 sub_36118eaf;
uint256 sub_01efa4e0;
uint256 sub_33550b68;
uint256 totalStaked;
mapping of struct stakingAmount;
mapping of uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 sub_1f94958b;
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16

function sub_01efa4e0(?) payable {
    return sub_01efa4e0
}

function sub_1f94958b(?) payable {
    return sub_1f94958b
}

function sub_291fa963(?) payable {
    return sub_291fa963Address
}

function sub_33550b68(?) payable {
    return sub_33550b68
}

function sub_36118eaf(?) payable {
    return sub_36118eaf
}

function getStakingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakingAmount[address(arg1)].field_512
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function StakingToken() payable {
    return stakingTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pauseUnstake() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    uint8(stor13.field_8) = 1
}

function pauseStaking() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    uint8(stor13.field_0) = 1
}

function unpauseUnstake() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    uint8(stor13.field_8) = 0
}

function unpauseStaking() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    uint8(stor13.field_0) = 0
}

function pauseClaimProfit() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    uint8(stor13.field_16) = 1
}

function unpauseClaimProfit() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    uint8(stor13.field_16) = 0
}

function sub_4ba30ec2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    sub_33550b68 = arg1
}

function sub_795f55cb(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    sub_01efa4e0 = arg1
}

function setStakingToke(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    stakingTokenAddress = arg1
}

function transferOwnership(address arg1) payable {
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

function sub_e52d37e3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mem[ceil32(calldata.size) + 192 len ceil32(calldata.size)] = call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    sub_1f94958b = arg1
    if block.timestamp > stor11:
        if stor11 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor10:
            if stor9[stor11] < 0:
                revert with 0, 'SafeMath: addition overflow'
            stor9[block.timestamp] = stor9[stor11]
        else:
            if (block.timestamp * stor10) - (stor11 * stor10) / stor10 != block.timestamp - stor11:
                revert with 0, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(calldata.size) + 229 len 31]
            if stor9[stor11] < 0:
                revert with 0, 'SafeMath: addition overflow'
            stor9[block.timestamp] = stor9[stor11] + (block.timestamp * stor10) - (stor11 * stor10)
        stor11 = block.timestamp
        if block.timestamp <= sub_36118eaf:
            stor9[stor4] = stor9[block.timestamp]
            stor11 = sub_36118eaf
    if totalStaked:
        if not sub_1f94958b:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            stor10 = 0 / totalStaked
        else:
            if 10^18 * sub_1f94958b / sub_1f94958b != 10^18:
                revert with 0, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(calldata.size) + 229 len 31]
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            stor10 = 10^18 * sub_1f94958b / totalStaked
}

function collect(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 128] = 0
    mem[ceil32(calldata.size) + 192 len ceil32(calldata.size)] = call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    if stakingTokenAddress == arg1:
        revert with 0, 'O3Staking: COLLECT_NOT_ALLOWED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(calldata.size) + 398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(calldata.size) + 292 len 64] = 0, address(arg2), ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args ext_call.return_data[0], mem[ceil32(calldata.size) + 228 len 28], mem[ceil32(calldata.size) + 356 len 4]
    if not return_data.size:
        if not ext_call.success:
            if calldata.size:
                revert with call.data[0 len calldata.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if calldata.size:
            require calldata.size >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(calldata.size) + 402 len 22]
    else:
        mem[ceil32(calldata.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(calldata.size) + 324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(calldata.size) + ceil32(return_data.size) + 403 len 22]
    stor1 = 1
}

function getTotalProfit(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= sub_36118eaf:
        return 0
    if block.timestamp <= stor11:
        if stor9[stor8[address(arg1)].field_256] > stor9[block.timestamp]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor9[block.timestamp] - stor9[stor8[address(arg1)].field_256]:
            if stakingAmount[address(arg1)].field_768 < stakingAmount[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return stakingAmount[address(arg1)].field_768
        if (stor9[block.timestamp] * stakingAmount[address(arg1)].field_512) - (stor9[stor8[address(arg1)].field_256] * stakingAmount[address(arg1)].field_512) / stor9[block.timestamp] - stor9[stor8[address(arg1)].field_256] != stakingAmount[address(arg1)].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((stor9[block.timestamp] * stakingAmount[address(arg1)].field_512) - (stor9[stor8[address(arg1)].field_256] * stakingAmount[address(arg1)].field_512) / 10^18) + stakingAmount[address(arg1)].field_768 < stakingAmount[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return (((stor9[block.timestamp] * stakingAmount[address(arg1)].field_512) - (stor9[stor8[address(arg1)].field_256] * stakingAmount[address(arg1)].field_512) / 10^18) + stakingAmount[address(arg1)].field_768)
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor10:
        if stor9[stor11] < stor9[stor11]:
            revert with 0, 'SafeMath: addition overflow'
        if stor9[stor8[address(arg1)].field_256] > stor9[stor11]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor9[stor11] - stor9[stor8[address(arg1)].field_256]:
            if stakingAmount[address(arg1)].field_768 < stakingAmount[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return stakingAmount[address(arg1)].field_768
        if (stor9[stor11] * stakingAmount[address(arg1)].field_512) - (stor9[stor8[address(arg1)].field_256] * stakingAmount[address(arg1)].field_512) / stor9[stor11] - stor9[stor8[address(arg1)].field_256] != stakingAmount[address(arg1)].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((stor9[stor11] * stakingAmount[address(arg1)].field_512) - (stor9[stor8[address(arg1)].field_256] * stakingAmount[address(arg1)].field_512) / 10^18) + stakingAmount[address(arg1)].field_768 < stakingAmount[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return (((stor9[stor11] * stakingAmount[address(arg1)].field_512) - (stor9[stor8[address(arg1)].field_256] * stakingAmount[address(arg1)].field_512) / 10^18) + stakingAmount[address(arg1)].field_768)
    if (block.timestamp * stor10) - (stor11 * stor10) / stor10 != block.timestamp - stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (block.timestamp * stor10) - (stor11 * stor10) + stor9[stor11] < stor9[stor11]:
        revert with 0, 'SafeMath: addition overflow'
    if stor9[stor8[address(arg1)].field_256] > (block.timestamp * stor10) - (stor11 * stor10) + stor9[stor11]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (block.timestamp * stor10) - (stor11 * stor10) + stor9[stor11] - stor9[stor8[address(arg1)].field_256]:
        if stakingAmount[address(arg1)].field_768 < stakingAmount[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return stakingAmount[address(arg1)].field_768
    if (block.timestamp * stor10 * stakingAmount[address(arg1)].field_512) - (stor11 * stor10 * stakingAmount[address(arg1)].field_512) + (stor9[stor11] * stakingAmount[address(arg1)].field_512) - (stor9[stor8[address(arg1)].field_256] * stakingAmount[address(arg1)].field_512) / (block.timestamp * stor10) - (stor11 * stor10) + stor9[stor11] - stor9[stor8[address(arg1)].field_256] != stakingAmount[address(arg1)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((block.timestamp * stor10 * stakingAmount[address(arg1)].field_512) - (stor11 * stor10 * stakingAmount[address(arg1)].field_512) + (stor9[stor11] * stakingAmount[address(arg1)].field_512) - (stor9[stor8[address(arg1)].field_256] * stakingAmount[address(arg1)].field_512) / 10^18) + stakingAmount[address(arg1)].field_768 < stakingAmount[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    return (((block.timestamp * stor10 * stakingAmount[address(arg1)].field_512) - (stor11 * stor10 * stakingAmount[address(arg1)].field_512) + (stor9[stor11] * stakingAmount[address(arg1)].field_512) - (stor9[stor8[address(arg1)].field_256] * stakingAmount[address(arg1)].field_512) / 10^18) + stakingAmount[address(arg1)].field_768)
}

function claimProfit() payable {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    mem[ceil32(calldata.size) + 192 len ceil32(calldata.size)] = call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    if uint8(stor13.field_16):
        revert with 0, 'O3Staking: CLAIM_PROFIT_PAUSED'
    if block.timestamp < sub_33550b68:
        revert with 0, 'O3Staking: CLAIM_NOT_STARTED'
    if block.timestamp > stor11:
        if stor11 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor10:
            if stor9[stor11] < 0:
                revert with 0, 'SafeMath: addition overflow'
            stor9[block.timestamp] = stor9[stor11]
        else:
            if (block.timestamp * stor10) - (stor11 * stor10) / stor10 != block.timestamp - stor11:
                revert with 0, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(calldata.size) + 229 len 31]
            if stor9[stor11] < 0:
                revert with 0, 'SafeMath: addition overflow'
            stor9[block.timestamp] = stor9[stor11] + (block.timestamp * stor10) - (stor11 * stor10)
        stor11 = block.timestamp
        if block.timestamp <= sub_36118eaf:
            stor9[stor4] = stor9[block.timestamp]
            stor11 = sub_36118eaf
    if totalStaked:
        if not sub_1f94958b:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            stor10 = 0 / totalStaked
        else:
            if 10^18 * sub_1f94958b / sub_1f94958b != 10^18:
                revert with 0, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(calldata.size) + 229 len 31]
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            stor10 = 10^18 * sub_1f94958b / totalStaked
    if block.timestamp <= sub_36118eaf:
        revert with 0, 'O3Staking: ZERO_PROFIT'
    if stor9[stor8[address(msg.sender)].field_256] > stor9[block.timestamp]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor9[block.timestamp] - stor9[stor8[address(msg.sender)].field_256]:
        if stakingAmount[address(msg.sender)].field_768 < stakingAmount[address(msg.sender)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if stakingAmount[address(msg.sender)].field_768 <= 0:
            revert with 0, 'O3Staking: ZERO_PROFIT'
        stakingAmount[address(msg.sender)].field_768 = 0
        stakingAmount[address(msg.sender)].field_256 = block.timestamp
        if sub_36118eaf > block.timestamp:
            stakingAmount[address(msg.sender)].field_256 = sub_36118eaf
        emit LOG_CLAIM_PROFIT(stakingAmount[address(msg.sender)].field_768, msg.sender);
        require ext_code.size(sub_291fa963Address)
        call sub_291fa963Address.0x1cc6b7d4 with:
             gas gas_remaining wei
            args msg.sender, stakingAmount[address(msg.sender)].field_768
    else:
        if (stor9[block.timestamp] * stakingAmount[address(msg.sender)].field_512) - (stor9[stor8[address(msg.sender)].field_256] * stakingAmount[address(msg.sender)].field_512) / stor9[block.timestamp] - stor9[stor8[address(msg.sender)].field_256] != stakingAmount[address(msg.sender)].field_512:
            revert with 0, 
                        32,
                        33,
                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(calldata.size) + 229 len 31]
        if ((stor9[block.timestamp] * stakingAmount[address(msg.sender)].field_512) - (stor9[stor8[address(msg.sender)].field_256] * stakingAmount[address(msg.sender)].field_512) / 10^18) + stakingAmount[address(msg.sender)].field_768 < stakingAmount[address(msg.sender)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if ((stor9[block.timestamp] * stakingAmount[address(msg.sender)].field_512) - (stor9[stor8[address(msg.sender)].field_256] * stakingAmount[address(msg.sender)].field_512) / 10^18) + stakingAmount[address(msg.sender)].field_768 <= 0:
            revert with 0, 'O3Staking: ZERO_PROFIT'
        stakingAmount[address(msg.sender)].field_768 = 0
        stakingAmount[address(msg.sender)].field_256 = block.timestamp
        if sub_36118eaf > block.timestamp:
            stakingAmount[address(msg.sender)].field_256 = sub_36118eaf
        emit LOG_CLAIM_PROFIT((((stor9[block.timestamp] * stakingAmount[address(msg.sender)].field_512) - (stor9[stor8[address(msg.sender)].field_256] * stakingAmount[address(msg.sender)].field_512) / 10^18) + stakingAmount[address(msg.sender)].field_768), msg.sender);
        require ext_code.size(sub_291fa963Address)
        call sub_291fa963Address.0x1cc6b7d4 with:
             gas gas_remaining wei
            args msg.sender, ((stor9[block.timestamp] * stakingAmount[address(msg.sender)].field_512) - (stor9[stor8[address(msg.sender)].field_256] * stakingAmount[address(msg.sender)].field_512) / 10^18) + stakingAmount[address(msg.sender)].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 128] = 0
    mem[ceil32(calldata.size) + 192 len ceil32(calldata.size)] = call.data[0 len calldata.size], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    emit call.func_hash: Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
    if uint8(stor13.field_0):
        revert with 0, 'O3Staking: STAKING_PAUSED'
    if arg1 <= 0:
        revert with 0, 
                    32,
                    33,
                    0x444f335374616b696e673a20494e56414c49445f5354414b494e475f414d4f554e,
                    mem[ceil32(calldata.size) + 229 len 31]
    if totalStaked + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    totalStaked += arg1
    if block.timestamp > stor11:
        if stor11 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor10:
            if stor9[stor11] < 0:
                revert with 0, 'SafeMath: addition overflow'
            stor9[block.timestamp] = stor9[stor11]
        else:
            if (block.timestamp * stor10) - (stor11 * stor10) / stor10 != block.timestamp - stor11:
                revert with 0, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(calldata.size) + 229 len 31]
            if stor9[stor11] < 0:
                revert with 0, 'SafeMath: addition overflow'
            stor9[block.timestamp] = stor9[stor11] + (block.timestamp * stor10) - (stor11 * stor10)
        stor11 = block.timestamp
        if block.timestamp <= sub_36118eaf:
            stor9[stor4] = stor9[block.timestamp]
            stor11 = sub_36118eaf
    if totalStaked:
        if not sub_1f94958b:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            stor10 = 0 / totalStaked
        else:
            if 10^18 * sub_1f94958b / sub_1f94958b != 10^18:
                revert with 0, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(calldata.size) + 229 len 31]
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            stor10 = 10^18 * sub_1f94958b / totalStaked
    if block.timestamp <= sub_36118eaf:
        if arg1 + stakingAmount[address(msg.sender)].field_512 < stakingAmount[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        stakingAmount[address(msg.sender)].field_512 += arg1
        stakingAmount[address(msg.sender)].field_768 = 0
    else:
        if stor9[stor8[address(msg.sender)].field_256] > stor9[block.timestamp]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stor9[block.timestamp] - stor9[stor8[address(msg.sender)].field_256]:
            if stakingAmount[address(msg.sender)].field_768 < stakingAmount[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + stakingAmount[address(msg.sender)].field_512 < stakingAmount[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            stakingAmount[address(msg.sender)].field_512 += arg1
        else:
            if (stor9[block.timestamp] * stakingAmount[address(msg.sender)].field_512) - (stor9[stor8[address(msg.sender)].field_256] * stakingAmount[address(msg.sender)].field_512) / stor9[block.timestamp] - stor9[stor8[address(msg.sender)].field_256] != stakingAmount[address(msg.sender)].field_512:
                revert with 0, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(calldata.size) + 229 len 31]
            if ((stor9[block.timestamp] * stakingAmount[address(msg.sender)].field_512) - (stor9[stor8[address(msg.sender)].field_256] * stakingAmount[address(msg.sender)].field_512) / 10^18) + stakingAmount[address(msg.sender)].field_768 < stakingAmount[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + stakingAmount[address(msg.sender)].field_512 < stakingAmount[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            stakingAmount[address(msg.sender)].field_512 += arg1
            stakingAmount[address(msg.sender)].field_768 += (stor9[block.timestamp] * stakingAmount[address(msg.sender)].field_512) - (stor9[stor8[address(msg.sender)].field_256] * stakingAmount[address(msg.sender)].field_512) / 10^18
    stakingAmount[address(msg.sender)].field_256 = block.timestamp
    if sub_36118eaf > block.timestamp:
        stakingAmount[address(msg.sender)].field_256 = sub_36118eaf
    emit LOG_STAKE(arg1, msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(calldata.size) + 430 len 26]
    if not ext_code.size(stakingTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(calldata.size) + 324 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[ceil32(calldata.size) + 448 len 4] = 0
    call stakingTokenAddress with:
         gas gas_remaining wei
        args arg1, mem[ceil32(calldata.size) + 260 len 60], mem[ceil32(calldata.size) + 420 len 4]
    if not return_data.size:
        if not ext_call.success:
            if calldata.size:
                revert with call.data[0 len calldata.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if calldata.size:
            require calldata.size >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(calldata.size) + 434 len 14],
                            0,
                            mem[ceil32(calldata.size) + 452 len 4]
    else:
        mem[ceil32(calldata.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(calldata.size) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(calldata.size) + ceil32(return_data.size) + 435 len 22]
    stor1 = 1
}



}
