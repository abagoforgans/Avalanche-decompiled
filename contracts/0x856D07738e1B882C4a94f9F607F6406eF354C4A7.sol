contract main {




// =====================  Runtime code  =====================


#
#  - sub_a84885b2(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint256 stor151;
address sub_b870029cAddress;
address sub_8dae81ffAddress;
mapping of uint256 sub_21515e65;
mapping of uint256 sub_3f56df9f;
mapping of uint256 sub_12d1073d;
uint256 sub_02559004;
mapping of uint256 poolRewardPerLPToken;
uint256 rewardStartBlock;
uint256 rewardEndBlock;
uint256 rewardPerBlock;
mapping of struct showHarvestRewards;
mapping of uint256 sub_cb381fdf;
mapping of uint8 stor213;
mapping of uint8 stor214;

function sub_02559004(?) {
    return sub_02559004
}

function showHarvestRewards(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return showHarvestRewards[address(arg2)][address(arg1)].field_0
}

function sub_0721f749(?) {
    require calldata.size - 4 >= 32
    return bool(stor214[arg1])
}

function sub_12d1073d(?) {
    require calldata.size - 4 >= 32
    return sub_12d1073d[arg1]
}

function sub_21515e65(?) {
    require calldata.size - 4 >= 32
    return sub_21515e65[arg1]
}

function sub_3f56df9f(?) {
    require calldata.size - 4 >= 32
    return sub_3f56df9f[arg1]
}

function paused() {
    return bool(paused)
}

function rewardEndBlock() {
    return rewardEndBlock
}

function getStakedAmountPT(address arg1) {
    require calldata.size - 4 >= 32
    return sub_21515e65[address(arg1)]
}

function getRewardToken() {
    return sub_8dae81ffAddress
}

function getPoolRewardPerLPToken(address arg1) {
    require calldata.size - 4 >= 32
    return poolRewardPerLPToken[address(arg1)]
}

function rewardPerBlock() {
    return rewardPerBlock
}

function owner() {
    return owner
}

function sub_8dae81ff(?) {
    return sub_8dae81ffAddress
}

function rewardStartBlock() {
    return rewardStartBlock
}

function sub_b870029c(?) {
    return sub_b870029cAddress
}

function sub_bea4b343(?) {
    require calldata.size - 4 >= 32
    return bool(stor213[arg1])
}

function sub_c5883438(?) {
    require calldata.size - 4 >= 64
    return showHarvestRewards[arg1][arg2].field_0
}

function sub_cb381fdf(?) {
    require calldata.size - 4 >= 64
    return sub_cb381fdf[arg1][arg2]
}

function sub_e85da91e(?) {
    require calldata.size - 4 >= 32
    return poolRewardPerLPToken[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b676ceed(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'SSPS: 1'
    stor213[address(arg1)] = uint8(arg2)
    emit 0x45d58074: arg2, arg1
}

function setup(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    sub_b870029cAddress = arg1
    if not arg2:
        revert with 0, 'S:2'
    sub_8dae81ffAddress = arg2
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

function addStkAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if arg2 != msg.value:
            revert with 0, 'ASA:1'
    if arg2 + sub_21515e65[address(arg1)] < sub_21515e65[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_21515e65[address(arg1)] += arg2
    emit StakedAmountPTEvent((arg2 + sub_21515e65[address(arg1)]), arg1);
}

function sub_fb25e5b9(?) {
    require calldata.size - 4 >= 32
    if not rewardPerBlock:
        if sub_02559004 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_02559004:
            return (0 / sub_02559004)
    else:
        if sub_12d1073d[address(arg1)] * rewardPerBlock / rewardPerBlock != sub_12d1073d[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_02559004 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_02559004:
            return (sub_12d1073d[address(arg1)] * rewardPerBlock / sub_02559004)
    ('iszero', ('stor', ('name', 'sub_02559004', 206)))
    revert
}

function harvestRewards(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if showHarvestRewards[address(arg2)][address(arg1)].field_0 + sub_cb381fdf[address(arg2)][address(arg1)] < sub_cb381fdf[address(arg2)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_cb381fdf[address(arg2)][address(arg1)] += showHarvestRewards[address(arg2)][address(arg1)].field_0
    showHarvestRewards[address(arg2)][address(arg1)].field_0 = 0
    if not ext_code.size(sub_8dae81ffAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, showHarvestRewards[address(arg2)][address(arg1)].field_32
    call sub_8dae81ffAddress with:
         gas gas_remaining wei
        args showHarvestRewards[address(arg2)][address(arg1)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, showHarvestRewards[address(arg2)][address(arg1)].field_0
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return showHarvestRewards[address(arg2)][address(arg1)].field_0
}

function settlePendingRewards(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.rewardDebtOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -ext_call.return_data[0]:
                if -ext_call.return_data[0] + showHarvestRewards[address(arg2)][address(arg1)].field_0 < showHarvestRewards[address(arg2)][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                showHarvestRewards[address(arg2)][address(arg1)].field_0 -= ext_call.return_data[0]
        else:
            if poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0] / ext_call.return_data[0] != poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]:
                if (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] + showHarvestRewards[address(arg2)][address(arg1)].field_0 < showHarvestRewards[address(arg2)][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                showHarvestRewards[address(arg2)][address(arg1)].field_0 = (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] + showHarvestRewards[address(arg2)][address(arg1)].field_0
}

function claimPayout(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg3:
        if arg6 * arg3 / arg3 != arg6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg6 * arg3:
            if arg7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg7
            if 0 / arg7 / 100 * 10^6 > sub_21515e65[address(arg1)]:
                revert with 0, 'claimP:1'
            if 0 / arg7 / 100 * 10^6 > sub_21515e65[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_21515e65[address(arg1)] -= 0 / arg7 / 100 * 10^6
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                require ext_code.size(arg4)
                call arg4.addSettlementAmount(address rg1, uint256 rg2) with:
                   value 0 / arg7 / 100 * 10^6 wei
                     gas gas_remaining wei
                    args address(arg1), 0 / arg7 / 100 * 10^6
            else:
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, 0 / arg7 / 100 * 10^6) >> 32
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / arg7 / 100 * 10^6) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg4) << 64, 0, 0 / arg7 / 100 * 10^6
                    if not unknown_0xa9059cbb(?????), address(arg4) << 64:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(arg4)
                call arg4.addSettlementAmount(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0 / arg7 / 100 * 10^6
        else:
            if 100 * 10^6 * arg6 * arg3 / arg6 * arg3 != 100 * 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg7
            if 100 * 10^6 * arg6 * arg3 / arg7 / 100 * 10^6 > sub_21515e65[address(arg1)]:
                revert with 0, 'claimP:1'
            if 100 * 10^6 * arg6 * arg3 / arg7 / 100 * 10^6 > sub_21515e65[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_21515e65[address(arg1)] -= 100 * 10^6 * arg6 * arg3 / arg7 / 100 * 10^6
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                require ext_code.size(arg4)
                call arg4.addSettlementAmount(address rg1, uint256 rg2) with:
                   value 100 * 10^6 * arg6 * arg3 / arg7 / 100 * 10^6 wei
                     gas gas_remaining wei
                    args address(arg1), 100 * 10^6 * arg6 * arg3 / arg7 / 100 * 10^6
            else:
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, 100 * 10^6 * arg6 * arg3 / arg7 / 100 * 10^6) >> 32
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, 100 * 10^6 * arg6 * arg3 / arg7 / 100 * 10^6) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg4) << 64, 0, 100 * 10^6 * arg6 * arg3 / arg7 / 100 * 10^6
                    if not unknown_0xa9059cbb(?????), address(arg4) << 64:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(arg4)
                call arg4.addSettlementAmount(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), 100 * 10^6 * arg6 * arg3 / arg7 / 100 * 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit StakedAmountPTEvent(sub_21515e65[address(arg1)], arg1);
        emit ClaimPayoutEvent(address(arg1), address(arg2), arg3, arg5, arg6, arg7);
}

function initializeStakersPoolV2() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
        stor151 = 1
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
            paused = 0
            stor151 = 1
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
                paused = 0
                stor151 = 1
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
                    paused = 0
                    stor151 = 1
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
                        paused = 0
                        stor151 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                            stor151 = 1
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
                                paused = 0
                                stor151 = 1
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
                                    paused = 0
                                    stor151 = 1
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    paused = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        stor151 = 1
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
                                            stor151 = 1
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            stor151 = 1
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
}

function sub_f4e6ae32(?) {
    require calldata.size - 4 >= 160
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg5 + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 + arg2 > sub_21515e65[address(arg3)]:
        revert with 0, 'WDT:1'
    if arg2 <= 0:
        revert with 0, 'WDT:2'
    if arg2 > sub_21515e65[address(arg3)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_21515e65[address(arg3)] -= arg2
    if arg5 > sub_21515e65[address(arg3)] - arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_21515e65[address(arg3)] = sub_21515e65[address(arg3)] - arg2 - arg5
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
            require ext_code.size(arg4)
            call arg4.0xcc924c0b with:
               value arg5 wei
                 gas gas_remaining wei
                args address(arg3), arg5
        else:
            if not ext_code.size(arg3):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, arg5) >> 32
            call arg3 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg5) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg4) << 64, 0, arg5
                if not unknown_0xa9059cbb(?????), address(arg4) << 64:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(arg4)
            call arg4.0xcc924c0b with:
                 gas gas_remaining wei
                args address(arg3), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit StakedAmountPTEvent(sub_21515e65[address(arg3)], arg3);
    else:
        if not ext_code.size(arg3):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
        call arg3 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                require ext_code.size(arg4)
                call arg4.0xcc924c0b with:
                   value arg5 wei
                     gas gas_remaining wei
                    args address(arg3), arg5
            else:
                if not ext_code.size(arg3):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, arg5) >> 32
                call arg3 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg5) << 224, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(arg4)
                call arg4.0xcc924c0b with:
                     gas gas_remaining wei
                    args address(arg3), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit StakedAmountPTEvent(sub_21515e65[address(arg3)], arg3);
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                require ext_code.size(arg4)
                call arg4.0xcc924c0b with:
                   value arg5 wei
                     gas gas_remaining wei
                    args address(arg3), arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit StakedAmountPTEvent(sub_21515e65[address(arg3)], arg3);
            else:
                if not ext_code.size(arg3):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, arg5) >> 32
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call arg3 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg5) << 224, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(arg4)
                    call arg4.0xcc924c0b with:
                         gas gas_remaining wei
                        args address(arg3), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit StakedAmountPTEvent(sub_21515e65[address(arg3)], arg3);
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(arg4)
                    call arg4.0xcc924c0b with:
                         gas gas_remaining wei
                        args address(arg3), arg5, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit StakedAmountPTEvent(address rg1, uint256 rg2):
                                             sub_21515e65[address(arg3)],
                                             mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             arg3,
}

function sub_1a68f8cb(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _580 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 132] = this.address
        mem[(32 * arg3.length) + 164] = msg.sender
        require ext_code.size(sub_b870029cAddress)
        staticcall sub_b870029cAddress.0x2a1450ea with:
                gas gas_remaining wei
               args address(this.address), msg.sender
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if owner != msg.sender:
                revert with 0, 'allowedCaller'
        mem[0] = address(_580)
        mem[32] = 204
        if block.number > sub_3f56df9f[address(_580)]:
            require ext_code.size(address(_580))
            staticcall address(_580).0x18160ddd with:
                    gas gas_remaining wei
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[0] = address(_580)
            else:
                if sub_3f56df9f[address(_580)] < rewardStartBlock:
                    if block.number < rewardEndBlock:
                        if block.number <= rewardStartBlock:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_580)
                            poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                        else:
                            if rewardStartBlock > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - rewardStartBlock:
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_580)
                                    poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_580)
                                    poolRewardPerLPToken[address(_580)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) / block.number - rewardStartBlock != rewardPerBlock:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                if not (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock):
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not 0 / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) != sub_12d1073d[address(_580)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= rewardStartBlock:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_580)
                            poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                        else:
                            if rewardStartBlock > rewardEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not rewardEndBlock - rewardStartBlock:
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_580)
                                    poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_580)
                                    poolRewardPerLPToken[address(_580)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) / rewardEndBlock - rewardStartBlock != rewardPerBlock:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                if not (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock):
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not 0 / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                                else:
                                    if (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) != sub_12d1073d[address(_580)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / ext_call.return_data[0]
                else:
                    if block.number < rewardEndBlock:
                        if block.number <= sub_3f56df9f[address(_580)]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_580)
                            poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                        else:
                            if sub_3f56df9f[address(_580)] > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - sub_3f56df9f[address(_580)]:
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_580)
                                    poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_580)
                                    poolRewardPerLPToken[address(_580)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (sub_3f56df9f[address(_580)] * rewardPerBlock) / block.number - sub_3f56df9f[address(_580)] != rewardPerBlock:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                if not (block.number * rewardPerBlock) - (sub_3f56df9f[address(_580)] * rewardPerBlock):
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not 0 / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / (block.number * rewardPerBlock) - (sub_3f56df9f[address(_580)] * rewardPerBlock) != sub_12d1073d[address(_580)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= sub_3f56df9f[address(_580)]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_580)
                            poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                        else:
                            if sub_3f56df9f[address(_580)] > rewardEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not rewardEndBlock - sub_3f56df9f[address(_580)]:
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_580)
                                    poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_580)
                                    poolRewardPerLPToken[address(_580)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(_580)] * rewardPerBlock) / rewardEndBlock - sub_3f56df9f[address(_580)] != rewardPerBlock:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                if not (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(_580)] * rewardPerBlock):
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not 0 / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                                else:
                                    if (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(_580)] * rewardPerBlock) != sub_12d1073d[address(_580)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_580)] < poolRewardPerLPToken[address(_580)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_580)
                                        poolRewardPerLPToken[address(_580)] += 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_580)]) - (sub_3f56df9f[address(_580)] * rewardPerBlock * sub_12d1073d[address(_580)]) / sub_02559004 / ext_call.return_data[0]
            mem[32] = 204
            sub_3f56df9f[address(_580)] = block.number
        idx = idx + 1
        continue 
    if sub_12d1073d[address(arg1)]:
        if sub_12d1073d[address(arg1)] > sub_02559004:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_02559004 -= sub_12d1073d[address(arg1)]
    sub_12d1073d[address(arg1)] = arg2
    if arg2 + sub_02559004 < sub_02559004:
        revert with 0, 'SafeMath: addition overflow'
    sub_02559004 += arg2
}

function sub_d4d29113(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= arg2:
        revert with 0, 'SRI:1'
    if block.number >= arg2:
        revert with 0, 'SRI:2'
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        _579 = mem[(32 * idx) + 128]
        mem[(32 * arg4.length) + 132] = this.address
        mem[(32 * arg4.length) + 164] = msg.sender
        require ext_code.size(sub_b870029cAddress)
        staticcall sub_b870029cAddress.0x2a1450ea with:
                gas gas_remaining wei
               args address(this.address), msg.sender
        mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if owner != msg.sender:
                revert with 0, 'allowedCaller'
        mem[0] = address(_579)
        mem[32] = 204
        if block.number > sub_3f56df9f[address(_579)]:
            require ext_code.size(address(_579))
            staticcall address(_579).0x18160ddd with:
                    gas gas_remaining wei
            mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[0] = address(_579)
            else:
                if sub_3f56df9f[address(_579)] < rewardStartBlock:
                    if block.number < rewardEndBlock:
                        if block.number <= rewardStartBlock:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_579)
                            poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                        else:
                            if rewardStartBlock > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - rewardStartBlock:
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_579)
                                    poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_579)
                                    poolRewardPerLPToken[address(_579)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) / block.number - rewardStartBlock != rewardPerBlock:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                if not (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock):
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not 0 / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) != sub_12d1073d[address(_579)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= rewardStartBlock:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_579)
                            poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                        else:
                            if rewardStartBlock > rewardEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not rewardEndBlock - rewardStartBlock:
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_579)
                                    poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_579)
                                    poolRewardPerLPToken[address(_579)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) / rewardEndBlock - rewardStartBlock != rewardPerBlock:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                if not (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock):
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not 0 / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                                else:
                                    if (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) != sub_12d1073d[address(_579)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / ext_call.return_data[0]
                else:
                    if block.number < rewardEndBlock:
                        if block.number <= sub_3f56df9f[address(_579)]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_579)
                            poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                        else:
                            if sub_3f56df9f[address(_579)] > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - sub_3f56df9f[address(_579)]:
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_579)
                                    poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_579)
                                    poolRewardPerLPToken[address(_579)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (sub_3f56df9f[address(_579)] * rewardPerBlock) / block.number - sub_3f56df9f[address(_579)] != rewardPerBlock:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                if not (block.number * rewardPerBlock) - (sub_3f56df9f[address(_579)] * rewardPerBlock):
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not 0 / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / (block.number * rewardPerBlock) - (sub_3f56df9f[address(_579)] * rewardPerBlock) != sub_12d1073d[address(_579)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= sub_3f56df9f[address(_579)]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_579)
                            poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                        else:
                            if sub_3f56df9f[address(_579)] > rewardEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not rewardEndBlock - sub_3f56df9f[address(_579)]:
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_579)
                                    poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_579)
                                    poolRewardPerLPToken[address(_579)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(_579)] * rewardPerBlock) / rewardEndBlock - sub_3f56df9f[address(_579)] != rewardPerBlock:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                if not (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(_579)] * rewardPerBlock):
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not 0 / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                                else:
                                    if (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(_579)] * rewardPerBlock) != sub_12d1073d[address(_579)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                    if sub_02559004 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_02559004
                                    if not (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 229 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(_579)] < poolRewardPerLPToken[address(_579)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_579)
                                        poolRewardPerLPToken[address(_579)] += 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(_579)]) - (sub_3f56df9f[address(_579)] * rewardPerBlock * sub_12d1073d[address(_579)]) / sub_02559004 / ext_call.return_data[0]
            mem[32] = 204
            sub_3f56df9f[address(_579)] = block.number
        idx = idx + 1
        continue 
    if block.number > rewardEndBlock:
        rewardStartBlock = arg1
    else:
        if block.number < rewardStartBlock:
            rewardStartBlock = arg1
    rewardEndBlock = arg2
    rewardPerBlock = arg3
    emit SetRewardInfo(arg1, arg2, arg3);
}

function reCalcPoolPT(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if block.number > sub_3f56df9f[address(arg1)]:
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if sub_3f56df9f[address(arg1)] < rewardStartBlock:
                if block.number < rewardEndBlock:
                    if block.number <= rewardStartBlock:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                    else:
                        if rewardStartBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - rewardStartBlock:
                            if sub_02559004 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_02559004
                            if not 0 / sub_02559004:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolRewardPerLPToken[address(arg1)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) / block.number - rewardStartBlock != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock):
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) != sub_12d1073d[address(arg1)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / ext_call.return_data[0]
                else:
                    if rewardEndBlock <= rewardStartBlock:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                    else:
                        if rewardStartBlock > rewardEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not rewardEndBlock - rewardStartBlock:
                            if sub_02559004 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_02559004
                            if not 0 / sub_02559004:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolRewardPerLPToken[address(arg1)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                        else:
                            if (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) / rewardEndBlock - rewardStartBlock != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock):
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) != sub_12d1073d[address(arg1)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / ext_call.return_data[0]
            else:
                if block.number < rewardEndBlock:
                    if block.number <= sub_3f56df9f[address(arg1)]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                    else:
                        if sub_3f56df9f[address(arg1)] > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - sub_3f56df9f[address(arg1)]:
                            if sub_02559004 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_02559004
                            if not 0 / sub_02559004:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolRewardPerLPToken[address(arg1)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock) - (sub_3f56df9f[address(arg1)] * rewardPerBlock) / block.number - sub_3f56df9f[address(arg1)] != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * rewardPerBlock) - (sub_3f56df9f[address(arg1)] * rewardPerBlock):
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / (block.number * rewardPerBlock) - (sub_3f56df9f[address(arg1)] * rewardPerBlock) != sub_12d1073d[address(arg1)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / ext_call.return_data[0]
                else:
                    if rewardEndBlock <= sub_3f56df9f[address(arg1)]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                    else:
                        if sub_3f56df9f[address(arg1)] > rewardEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not rewardEndBlock - sub_3f56df9f[address(arg1)]:
                            if sub_02559004 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_02559004
                            if not 0 / sub_02559004:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolRewardPerLPToken[address(arg1)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                        else:
                            if (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(arg1)] * rewardPerBlock) / rewardEndBlock - sub_3f56df9f[address(arg1)] != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(arg1)] * rewardPerBlock):
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not 0 / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 10^18 * 0 / sub_02559004 / ext_call.return_data[0]
                            else:
                                if (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(arg1)] * rewardPerBlock) != sub_12d1073d[address(arg1)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if sub_02559004 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_02559004
                                if not (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg1)] < poolRewardPerLPToken[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolRewardPerLPToken[address(arg1)] += 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg1)]) - (sub_3f56df9f[address(arg1)] * rewardPerBlock * sub_12d1073d[address(arg1)]) / sub_02559004 / ext_call.return_data[0]
        sub_3f56df9f[address(arg1)] = block.number
}

function showPendingRewards(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.rewardDebtOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number == sub_3f56df9f[address(arg2)]:
        return 0
    if block.number <= sub_3f56df9f[address(arg2)]:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if 0 < ext_call.return_data[0]:
            revert with 0, 'showPR:1'
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if 0 < ext_call.return_data[0]:
            revert with 0, 'showPR:1'
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -ext_call.return_data[0]
    if sub_3f56df9f[address(arg2)] < rewardStartBlock:
        if block.number < rewardEndBlock:
            if block.number <= rewardStartBlock:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                else:
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -ext_call.return_data[0]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
            if rewardStartBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - rewardStartBlock:
                if sub_02559004 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_02559004
                if not 0 / sub_02559004:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        if 0 < ext_call.return_data[0]:
                            revert with 0, 'showPR:1'
                    else:
                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                            revert with 0, 'showPR:1'
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -ext_call.return_data[0]
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
                if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                else:
                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -ext_call.return_data[0]
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
            if (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) / block.number - rewardStartBlock != rewardPerBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock):
                if sub_02559004 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_02559004
                if not 0 / sub_02559004:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        if 0 < ext_call.return_data[0]:
                            revert with 0, 'showPR:1'
                    else:
                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                            revert with 0, 'showPR:1'
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -ext_call.return_data[0]
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
                if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                else:
                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -ext_call.return_data[0]
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
            if (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / (block.number * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) != sub_12d1073d[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_02559004 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_02559004
            if not (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                else:
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -ext_call.return_data[0]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
            if 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if rewardEndBlock <= rewardStartBlock:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if rewardStartBlock > rewardEndBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not rewardEndBlock - rewardStartBlock:
            if sub_02559004 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_02559004
            if not 0 / sub_02559004:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                else:
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -ext_call.return_data[0]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
            if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) / rewardEndBlock - rewardStartBlock != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock):
            if sub_02559004 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_02559004
            if not 0 / sub_02559004:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                else:
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -ext_call.return_data[0]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
            if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / (rewardEndBlock * rewardPerBlock) - (rewardStartBlock * rewardPerBlock) != sub_12d1073d[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_02559004 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_02559004
        if not (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if 0 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        else:
            if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0]
        if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] > (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (rewardStartBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
    if block.number < rewardEndBlock:
        if block.number <= sub_3f56df9f[address(arg2)]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if sub_3f56df9f[address(arg2)] > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - sub_3f56df9f[address(arg2)]:
            if sub_02559004 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_02559004
            if not 0 / sub_02559004:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                else:
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -ext_call.return_data[0]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
            if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if (block.number * rewardPerBlock) - (sub_3f56df9f[address(arg2)] * rewardPerBlock) / block.number - sub_3f56df9f[address(arg2)] != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * rewardPerBlock) - (sub_3f56df9f[address(arg2)] * rewardPerBlock):
            if sub_02559004 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_02559004
            if not 0 / sub_02559004:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                else:
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                        revert with 0, 'showPR:1'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -ext_call.return_data[0]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
            if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / (block.number * rewardPerBlock) - (sub_3f56df9f[address(arg2)] * rewardPerBlock) != sub_12d1073d[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_02559004 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_02559004
        if not (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if 10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if 0 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        else:
            if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0]
        if (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] > (10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (block.number * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
    if rewardEndBlock <= sub_3f56df9f[address(arg2)]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if 0 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        else:
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0]
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
    if sub_3f56df9f[address(arg2)] > rewardEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rewardEndBlock - sub_3f56df9f[address(arg2)]:
        if sub_02559004 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_02559004
        if not 0 / sub_02559004:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if 0 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        else:
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0]
        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] > (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
    if (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(arg2)] * rewardPerBlock) / rewardEndBlock - sub_3f56df9f[address(arg2)] != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(arg2)] * rewardPerBlock):
        if sub_02559004 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_02559004
        if not 0 / sub_02559004:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            else:
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                    revert with 0, 'showPR:1'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
        if 10^18 * 0 / sub_02559004 / 0 / sub_02559004 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if 0 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        else:
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0]
        if (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * 0 / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] > (10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
    if (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / (rewardEndBlock * rewardPerBlock) - (sub_3f56df9f[address(arg2)] * rewardPerBlock) != sub_12d1073d[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_02559004 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_02559004
    if not (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if 0 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        else:
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
                revert with 0, 'showPR:1'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0]
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
    if 10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)] < poolRewardPerLPToken[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        if 0 < ext_call.return_data[0]:
            revert with 0, 'showPR:1'
    else:
        if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0]:
            revert with 0, 'showPR:1'
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -ext_call.return_data[0]
    if (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0]) + poolRewardPerLPToken[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] > (10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (rewardEndBlock * rewardPerBlock * sub_12d1073d[address(arg2)]) - (sub_3f56df9f[address(arg2)] * rewardPerBlock * sub_12d1073d[address(arg2)]) / sub_02559004 / ext_call.return_data[0] * ext_call.return_data[0]) + (poolRewardPerLPToken[address(arg2)] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
}



}
