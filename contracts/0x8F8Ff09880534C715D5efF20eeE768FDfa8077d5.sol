contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - getUserStakesAndPendingAmounts(address arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address sub_518f49d8Address;
uint256 lastRewardTime;
uint256 sub_39d43ce0;
uint256 totalDeposits;
uint8 sub_ba78b2e4;
uint256 sub_bfa98f75;
address erc20Address;
uint256 paidOut;
uint256 rewardPerSecond;
uint256 sub_589336d0;
uint256 totalRewards;
array of struct sub_0b5482ac;
uint256 startTime;
uint256 endTime;
uint8 penalty;
uint256 stor165;
uint256 sub_638f95f6;
uint256 sub_5a461698;
address feeCollectorAddress;
uint256 sub_ff0c44da;
uint8 sub_41b99342;
uint256 totalTokensBurned;
uint256 sub_563d23e9;
uint256 sub_1c2f5bb5;
address sub_125c67ddAddress;
uint256 sub_01934a83;
array of address participants;
mapping of uint256 id;
array of address stor16077706546893180503535684429605529758090165357379620874264922143030432483639;

function sub_01934a83(?) {
    return sub_01934a83
}

function sub_0b5482ac(?) {
    require calldata.size - 4 >= 64
    if arg2 >= sub_0b5482ac[address(arg1)].field_0:
        revert with 0, 'Stake does not exist'
    require arg2 < sub_0b5482ac[address(arg1)].field_0
    return sub_0b5482ac[address(arg1)][arg2].field_768
}

function totalRewards() {
    return totalRewards
}

function penalty() {
    require uint8(penalty) <= 2
    return uint8(penalty)
}

function sub_125c67dd(?) {
    return sub_125c67ddAddress
}

function sub_1c2f5bb5(?) {
    return sub_1c2f5bb5
}

function sub_1c43bd7d(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_0b5482ac[arg1].field_0
    return sub_0b5482ac[arg1][arg2].field_0, 
           sub_0b5482ac[arg1][arg2].field_256,
           sub_0b5482ac[arg1][arg2].field_512,
           sub_0b5482ac[arg1][arg2].field_768,
           address(sub_0b5482ac[arg1][arg2].field_1024)
}

function endTime() {
    return endTime
}

function participants(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < participants.length
    return participants[arg1]
}

function sub_39d43ce0(?) {
    return sub_39d43ce0
}

function sub_41b99342(?) {
    return bool(sub_41b99342)
}

function sub_518f49d8(?) {
    return sub_518f49d8Address
}

function sub_563d23e9(?) {
    return sub_563d23e9
}

function sub_589336d0(?) {
    return sub_589336d0
}

function sub_5a461698(?) {
    return sub_5a461698
}

function paidOut() {
    return paidOut
}

function sub_638f95f6(?) {
    return sub_638f95f6
}

function deposited(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= sub_0b5482ac[address(arg1)].field_0:
        revert with 0, 'Stake does not exist'
    require arg2 < sub_0b5482ac[address(arg1)].field_0
    return sub_0b5482ac[address(arg1)][arg2].field_0
}

function erc20() {
    return erc20Address
}

function startTime() {
    return startTime
}

function totalDeposits() {
    return totalDeposits
}

function id(address arg1) {
    require calldata.size - 4 >= 32
    return id[arg1]
}

function owner() {
    return owner
}

function rewardPerSecond() {
    return rewardPerSecond
}

function lastRewardTime() {
    return lastRewardTime
}

function getNumberOfUserStakes(address arg1) {
    require calldata.size - 4 >= 32
    return sub_0b5482ac[address(arg1)].field_0
}

function sub_ba78b2e4(?) {
    return bool(sub_ba78b2e4)
}

function sub_bfa98f75(?) {
    return sub_bfa98f75
}

function feeCollector() {
    return feeCollectorAddress
}

function totalTokensBurned() {
    return totalTokensBurned
}

function depositTimestamp(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= sub_0b5482ac[address(arg1)].field_0:
        revert with 0, 'Stake does not exist'
    require arg2 < sub_0b5482ac[address(arg1)].field_0
    return sub_0b5482ac[address(arg1)][arg2].field_512
}

function sub_ff0c44da(?) {
    return sub_ff0c44da
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

function sub_14433205(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_638f95f6 = arg1
    emit 0xc6a7719c: arg1
}

function sub_5fdcd545(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_ff0c44da = arg1
    emit 0xaf85dd9b: arg1
}

function setMinTimeToStake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_bfa98f75 = arg1
    emit 0x70f2155c: arg1
}

function setRewardFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_5a461698 = arg1
    emit 0xd39a3b35: arg1
}

function sub_379bdee2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_ba78b2e4 = uint8(arg1)
    emit 0x76c96d5c: bool(uint8(arg1))
}

function sub_d81af543(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_41b99342 = uint8(arg1)
    emit 0xdec02241: bool(uint8(arg1))
}

function setFeeCollector(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeCollectorAddress = arg1
    emit 0x12e1d170: arg1
}

function sub_f8c007ff(?) {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call feeCollectorAddress with:
       value sub_563d23e9 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to end flat fee'
    sub_563d23e9 = 0
}

function sub_a03f2e8e(?) {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args feeCollectorAddress, sub_1c2f5bb5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_1c2f5bb5 = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTotalRewardsLockedUnlocked() {
    if block.timestamp <= startTime:
        return 0, sub_589336d0
    if not rewardPerSecond:
        return 0, totalRewards
    if block.timestamp < endTime:
        if (block.timestamp * rewardPerSecond) - (startTime * rewardPerSecond) / rewardPerSecond != block.timestamp - startTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (block.timestamp * rewardPerSecond) - (startTime * rewardPerSecond), 
               totalRewards - (block.timestamp * rewardPerSecond) + (startTime * rewardPerSecond)
    if (endTime * rewardPerSecond) - (startTime * rewardPerSecond) / rewardPerSecond != endTime - startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (endTime * rewardPerSecond) - (startTime * rewardPerSecond), 
           totalRewards - (endTime * rewardPerSecond) + (startTime * rewardPerSecond)
}

function totalPending() {
    if block.timestamp <= startTime:
        return 0
    if not rewardPerSecond:
        if paidOut > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -paidOut
    if block.timestamp < endTime:
        if (block.timestamp * rewardPerSecond) - (startTime * rewardPerSecond) / rewardPerSecond != block.timestamp - startTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if paidOut > (block.timestamp * rewardPerSecond) - (startTime * rewardPerSecond):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((block.timestamp * rewardPerSecond) - (startTime * rewardPerSecond) - paidOut)
    if (endTime * rewardPerSecond) - (startTime * rewardPerSecond) / rewardPerSecond != endTime - startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if paidOut > (endTime * rewardPerSecond) - (startTime * rewardPerSecond):
        revert with 0, 'SafeMath: subtraction overflow'
    return ((endTime * rewardPerSecond) - (startTime * rewardPerSecond) - paidOut)
}

function sub_9ccef49b(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_518f49d8Address == arg1:
        revert with 0, 'User tokens can not be pulled'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6c5f62656e65666963696172792063616e206e6f742062652030783020616464726573,
                    mem[199 len 29]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function fund(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(erc20Address)
    staticcall erc20Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(erc20Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call erc20Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(erc20Address)
        staticcall erc20Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 <= arg1:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_589336d0 < sub_589336d0:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp >= endTime:
                revert with 0, 32, 34, 0x7266756e643a20746f6f206c6174652c20746865206661726d20697320636c6f7365, mem[394 len 22], 0, mem[420 len 4]
            revert with 0, 'Amount must be greater than 0.'
        if arg1 + sub_589336d0 < sub_589336d0:
            revert with 0, 'SafeMath: addition overflow'
        sub_589336d0 += arg1
        if block.timestamp >= endTime:
            revert with 0, 32, 34, 0x7266756e643a20746f6f206c6174652c20746865206661726d20697320636c6f7365, mem[394 len 22], 0, mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(erc20Address)
        staticcall erc20Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 <= arg1:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_589336d0 < sub_589336d0:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp >= endTime:
                revert with 0, 
                            32,
                            34,
                            0x7266756e643a20746f6f206c6174652c20746865206661726d20697320636c6f7365,
                            mem[ceil32(return_data.size) + 395 len 30]
            revert with 0, 'Amount must be greater than 0.'
        if arg1 + sub_589336d0 < sub_589336d0:
            revert with 0, 'SafeMath: addition overflow'
        sub_589336d0 += arg1
        if block.timestamp >= endTime:
            revert with 0, 
                        32,
                        34,
                        0x7266756e643a20746f6f206c6174652c20746865206661726d20697320636c6f7365,
                        mem[ceil32(return_data.size) + 395 len 30]
    ('lt', 'timestamp', ('stor', ('name', 'endTime', 164)))
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than 0.'
    if rewardPerSecond <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rewardPerSecond
    endTime += arg1 / rewardPerSecond
    if arg1 + totalRewards < totalRewards:
        revert with 0, 'SafeMath: addition overflow'
    totalRewards += arg1
}

function updatePool() {
    if block.timestamp < endTime:
        if block.timestamp > lastRewardTime:
            if totalDeposits:
                if lastRewardTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastRewardTime:
                    if totalDeposits <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposits
                    if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_39d43ce0 += 0 / totalDeposits
                else:
                    if (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond) / block.timestamp - lastRewardTime != rewardPerSecond:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond):
                        if totalDeposits <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposits
                        if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_39d43ce0 += 0 / totalDeposits
                    else:
                        if (10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalDeposits <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposits
                        if ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_39d43ce0 += (10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits
            lastRewardTime = block.timestamp
    else:
        if endTime > lastRewardTime:
            if not totalDeposits:
                lastRewardTime = endTime
            else:
                if lastRewardTime > endTime:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not endTime - lastRewardTime:
                    if totalDeposits <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposits
                    if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_39d43ce0 += 0 / totalDeposits
                else:
                    if (endTime * rewardPerSecond) - (lastRewardTime * rewardPerSecond) / endTime - lastRewardTime != rewardPerSecond:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (endTime * rewardPerSecond) - (lastRewardTime * rewardPerSecond):
                        if totalDeposits <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposits
                        if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_39d43ce0 += 0 / totalDeposits
                    else:
                        if (10^18 * endTime * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / (endTime * rewardPerSecond) - (lastRewardTime * rewardPerSecond) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalDeposits <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposits
                        if ((10^18 * endTime * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_39d43ce0 += (10^18 * endTime * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits
                lastRewardTime = block.timestamp
}

function sub_00580656(?) {
    require calldata.size - 4 >= 416
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
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
            stor101 = 1
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
                stor101 = 1
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
                    stor101 = 1
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
                        stor101 = 1
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
                            stor101 = 1
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
                                stor101 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    if not arg1:
        revert with 0, 'Wrong token address.'
    if arg2 <= 0:
        revert with 0, 'Rewards per second must be > 0.'
    if arg3 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe53746172742074696d652063616e206e6f7420626520696e207468652070617374,
                    mem[198 len 30]
    if arg8 >= 100:
        revert with 0, 'Stake fee must be < 100.'
    if arg9 >= 100:
        revert with 0, 'Reward fee must be < 100.'
    if not arg11:
        revert with 0, 'Wrong fee collector address.'
    erc20Address = arg1
    rewardPerSecond = arg2
    startTime = arg3
    endTime = arg3
    sub_bfa98f75 = arg4
    sub_ba78b2e4 = uint8(arg5)
    sub_638f95f6 = arg8
    sub_5a461698 = arg9
    sub_ff0c44da = arg10
    feeCollectorAddress = arg11
    sub_41b99342 = uint8(arg12)
    sub_125c67ddAddress = arg13
    require arg6 <= 2
    uint256(stor165) = arg6 or Mask(248, 8, uint256(stor165))
    require uint8(penalty) <= 2
    emit 0xaa10422a: uint8(penalty)
    if not arg7:
        revert with 0, 'Must input valid address.'
    if sub_518f49d8Address:
        revert with 0, 'Pool can be set only once.'
    sub_518f49d8Address = arg7
    if block.timestamp > startTime:
        lastRewardTime = block.timestamp
    else:
        lastRewardTime = startTime
    sub_39d43ce0 = 0
    totalDeposits = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function pending(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= sub_0b5482ac[address(arg1)].field_0:
        revert with 0, 'Stake does not exist'
    require arg2 < sub_0b5482ac[address(arg1)].field_0
    if not sub_0b5482ac[address(arg1)][arg2].field_0:
        return 0
    if block.timestamp <= lastRewardTime:
        if not sub_0b5482ac[address(arg1)][arg2].field_0:
            if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_0b5482ac[address(arg1)][arg2].field_256
        if sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0 / sub_0b5482ac[address(arg1)][arg2].field_0 != sub_39d43ce0:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_0b5482ac[address(arg1)][arg2].field_256 > sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0 / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
    if not totalDeposits:
        if not sub_0b5482ac[address(arg1)][arg2].field_0:
            if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_0b5482ac[address(arg1)][arg2].field_256
        if sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0 / sub_0b5482ac[address(arg1)][arg2].field_0 != sub_39d43ce0:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_0b5482ac[address(arg1)][arg2].field_256 > sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0 / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
    if block.timestamp < endTime:
        if lastRewardTime < endTime:
            if lastRewardTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastRewardTime:
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_0b5482ac[address(arg1)][arg2].field_0:
                    if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -sub_0b5482ac[address(arg1)][arg2].field_256
                if (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != (0 / totalDeposits) + sub_39d43ce0:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if sub_0b5482ac[address(arg1)][arg2].field_256 > (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
            if (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond) / block.timestamp - lastRewardTime != rewardPerSecond:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond):
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_0b5482ac[address(arg1)][arg2].field_0:
                    if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -sub_0b5482ac[address(arg1)][arg2].field_256
                if (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != (0 / totalDeposits) + sub_39d43ce0:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if sub_0b5482ac[address(arg1)][arg2].field_256 > (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
            if (10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond) != 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if totalDeposits <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposits
            if ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_0b5482ac[address(arg1)][arg2].field_0:
                if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -sub_0b5482ac[address(arg1)][arg2].field_256
            if ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits) + sub_39d43ce0:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_0b5482ac[address(arg1)][arg2].field_256 > ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((((10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
        if endTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - endTime:
            if totalDeposits <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposits
            if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_0b5482ac[address(arg1)][arg2].field_0:
                if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -sub_0b5482ac[address(arg1)][arg2].field_256
            if (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != (0 / totalDeposits) + sub_39d43ce0:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_0b5482ac[address(arg1)][arg2].field_256 > (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
        if (block.timestamp * rewardPerSecond) - (endTime * rewardPerSecond) / block.timestamp - endTime != rewardPerSecond:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not (block.timestamp * rewardPerSecond) - (endTime * rewardPerSecond):
            if totalDeposits <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposits
            if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_0b5482ac[address(arg1)][arg2].field_0:
                if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -sub_0b5482ac[address(arg1)][arg2].field_256
            if (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != (0 / totalDeposits) + sub_39d43ce0:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if sub_0b5482ac[address(arg1)][arg2].field_256 > (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
        if (10^18 * block.timestamp * rewardPerSecond) - (10^18 * endTime * rewardPerSecond) / (block.timestamp * rewardPerSecond) - (endTime * rewardPerSecond) != 10^18:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposits
        if ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * endTime * rewardPerSecond) / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_0b5482ac[address(arg1)][arg2].field_0:
            if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_0b5482ac[address(arg1)][arg2].field_256
        if ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * endTime * rewardPerSecond) / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * endTime * rewardPerSecond) / totalDeposits) + sub_39d43ce0:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_0b5482ac[address(arg1)][arg2].field_256 > ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * endTime * rewardPerSecond) / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((((10^18 * block.timestamp * rewardPerSecond) - (10^18 * endTime * rewardPerSecond) / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
    if lastRewardTime >= endTime:
        if endTime > endTime:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposits
        if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_0b5482ac[address(arg1)][arg2].field_0:
            if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_0b5482ac[address(arg1)][arg2].field_256
        if (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != (0 / totalDeposits) + sub_39d43ce0:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_0b5482ac[address(arg1)][arg2].field_256 > (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
    if lastRewardTime > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endTime - lastRewardTime:
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposits
        if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_0b5482ac[address(arg1)][arg2].field_0:
            if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_0b5482ac[address(arg1)][arg2].field_256
        if (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != (0 / totalDeposits) + sub_39d43ce0:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_0b5482ac[address(arg1)][arg2].field_256 > (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
    if (endTime * rewardPerSecond) - (lastRewardTime * rewardPerSecond) / endTime - lastRewardTime != rewardPerSecond:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not (endTime * rewardPerSecond) - (lastRewardTime * rewardPerSecond):
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposits
        if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_0b5482ac[address(arg1)][arg2].field_0:
            if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_0b5482ac[address(arg1)][arg2].field_256
        if (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != (0 / totalDeposits) + sub_39d43ce0:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if sub_0b5482ac[address(arg1)][arg2].field_256 > (0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
    if (10^18 * endTime * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / (endTime * rewardPerSecond) - (lastRewardTime * rewardPerSecond) != 10^18:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if totalDeposits <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalDeposits
    if ((10^18 * endTime * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_0b5482ac[address(arg1)][arg2].field_0:
        if sub_0b5482ac[address(arg1)][arg2].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_0b5482ac[address(arg1)][arg2].field_256
    if ((10^18 * endTime * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / sub_0b5482ac[address(arg1)][arg2].field_0 != ((10^18 * endTime * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits) + sub_39d43ce0:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if sub_0b5482ac[address(arg1)][arg2].field_256 > ((10^18 * endTime * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((10^18 * endTime * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits * sub_0b5482ac[address(arg1)][arg2].field_0) + (sub_39d43ce0 * sub_0b5482ac[address(arg1)][arg2].field_0) / 10^18) - sub_0b5482ac[address(arg1)][arg2].field_256)
}

function emergencyWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg1 >= sub_0b5482ac[msg.sender].field_0:
        revert with 0, 'Stake does not exist'
    require arg1 < sub_0b5482ac[msg.sender].field_0
    if sub_ba78b2e4:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_518f49d8Address):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, sub_0b5482ac[msg.sender][arg1].field_32)
        call sub_518f49d8Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, sub_0b5482ac[msg.sender][arg1].field_0), mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, sub_0b5482ac[msg.sender][arg1].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if sub_0b5482ac[msg.sender][arg1].field_0 > totalDeposits:
                revert with 0, 'SafeMath: subtraction overflow'
            totalDeposits -= sub_0b5482ac[msg.sender][arg1].field_0
            if 1 == sub_01934a83:
                idx = 0
                s = 0
                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                    _529 = sha3(sha3(address(msg.sender), 162))
                    mem[0] = msg.sender
                    mem[32] = 162
                    idx = idx + 1
                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                    continue 
                if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _529] * sub_0b5482ac[address(msg.sender)].field_0:
                    id[address(msg.sender)] = 0
                    require participants.length
                    participants[participants.length] = 0
                    participants.length--
                    sub_01934a83--
            else:
                idx = 0
                s = 0
                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                    _527 = sha3(sha3(address(msg.sender), 162))
                    mem[0] = msg.sender
                    mem[32] = 162
                    idx = idx + 1
                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                    continue 
                if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _527] * sub_0b5482ac[address(msg.sender)].field_0:
                    require participants.length - 1 < participants.length
                    require id[address(msg.sender)] < participants.length
                    participants[stor177[address(msg.sender)]] = participants[participants.length]
                    id[stor176[stor176.length]] = id[address(msg.sender)]
                    id[msg.sender] = 0
                    require participants.length
                    participants[participants.length] = 0
                    participants.length--
                    sub_01934a83--
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if sub_0b5482ac[msg.sender][arg1].field_0 > totalDeposits:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalDeposits -= sub_0b5482ac[msg.sender][arg1].field_0
                if 1 == sub_01934a83:
                    idx = 0
                    s = 0
                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                        _535 = sha3(sha3(address(msg.sender), 162))
                        mem[0] = msg.sender
                        mem[32] = 162
                        idx = idx + 1
                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                        continue 
                    if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _535] * sub_0b5482ac[address(msg.sender)].field_0:
                        id[address(msg.sender)] = 0
                        require participants.length
                        participants[participants.length] = 0
                        participants.length--
                        sub_01934a83--
                else:
                    idx = 0
                    s = 0
                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                        _533 = sha3(sha3(address(msg.sender), 162))
                        mem[0] = msg.sender
                        mem[32] = 162
                        idx = idx + 1
                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                        continue 
                    if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _533] * sub_0b5482ac[address(msg.sender)].field_0:
                        require participants.length - 1 < participants.length
                        require id[address(msg.sender)] < participants.length
                        participants[stor177[address(msg.sender)]] = participants[participants.length]
                        id[stor176[stor176.length]] = id[address(msg.sender)]
                        id[msg.sender] = 0
                        require participants.length
                        participants[participants.length] = 0
                        participants.length--
                        sub_01934a83--
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if sub_0b5482ac[msg.sender][arg1].field_0 > totalDeposits:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalDeposits -= sub_0b5482ac[msg.sender][arg1].field_0
                if 1 == sub_01934a83:
                    idx = 0
                    s = 0
                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                        _539 = sha3(sha3(address(msg.sender), 162))
                        mem[0] = msg.sender
                        mem[32] = 162
                        idx = idx + 1
                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                        continue 
                    if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _539] * sub_0b5482ac[address(msg.sender)].field_0:
                        id[address(msg.sender)] = 0
                        require participants.length
                        participants[participants.length] = 0
                        participants.length--
                        sub_01934a83--
                else:
                    idx = 0
                    s = 0
                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                        _537 = sha3(sha3(address(msg.sender), 162))
                        mem[0] = msg.sender
                        mem[32] = 162
                        idx = idx + 1
                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                        continue 
                    if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _537] * sub_0b5482ac[address(msg.sender)].field_0:
                        require participants.length - 1 < participants.length
                        require id[address(msg.sender)] < participants.length
                        participants[stor177[address(msg.sender)]] = participants[participants.length]
                        id[stor176[stor176.length]] = id[address(msg.sender)]
                        id[msg.sender] = 0
                        require participants.length
                        participants[participants.length] = 0
                        participants.length--
                        sub_01934a83--
    else:
        if sub_bfa98f75 + sub_0b5482ac[msg.sender][arg1].field_512 < sub_0b5482ac[msg.sender][arg1].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if sub_bfa98f75 + sub_0b5482ac[msg.sender][arg1].field_512 > block.timestamp:
            revert with 0, 'User can not withdraw funds yet.'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_518f49d8Address):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, sub_0b5482ac[msg.sender][arg1].field_32)
        mem[324 len 0] = 0
        call sub_518f49d8Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, sub_0b5482ac[msg.sender][arg1].field_0), mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, sub_0b5482ac[msg.sender][arg1].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if sub_0b5482ac[msg.sender][arg1].field_0 > totalDeposits:
                revert with 0, 'SafeMath: subtraction overflow'
            totalDeposits -= sub_0b5482ac[msg.sender][arg1].field_0
            if 1 == sub_01934a83:
                idx = 0
                s = 0
                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                    _549 = sha3(sha3(address(msg.sender), 162))
                    mem[0] = msg.sender
                    mem[32] = 162
                    idx = idx + 1
                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                    continue 
                if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _549] * sub_0b5482ac[address(msg.sender)].field_0:
                    id[address(msg.sender)] = 0
                    require participants.length
                    participants[participants.length] = 0
                    participants.length--
                    sub_01934a83--
            else:
                idx = 0
                s = 0
                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                    _547 = sha3(sha3(address(msg.sender), 162))
                    mem[0] = msg.sender
                    mem[32] = 162
                    idx = idx + 1
                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                    continue 
                if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _547] * sub_0b5482ac[address(msg.sender)].field_0:
                    require participants.length - 1 < participants.length
                    require id[address(msg.sender)] < participants.length
                    participants[stor177[address(msg.sender)]] = participants[participants.length]
                    id[stor176[stor176.length]] = id[address(msg.sender)]
                    id[msg.sender] = 0
                    require participants.length
                    participants[participants.length] = 0
                    participants.length--
                    sub_01934a83--
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if sub_0b5482ac[msg.sender][arg1].field_0 > totalDeposits:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalDeposits -= sub_0b5482ac[msg.sender][arg1].field_0
                if 1 == sub_01934a83:
                    idx = 0
                    s = 0
                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                        _555 = sha3(sha3(address(msg.sender), 162))
                        mem[0] = msg.sender
                        mem[32] = 162
                        idx = idx + 1
                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                        continue 
                    if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _555] * sub_0b5482ac[address(msg.sender)].field_0:
                        id[address(msg.sender)] = 0
                        require participants.length
                        participants[participants.length] = 0
                        participants.length--
                        sub_01934a83--
                else:
                    idx = 0
                    s = 0
                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                        _553 = sha3(sha3(address(msg.sender), 162))
                        mem[0] = msg.sender
                        mem[32] = 162
                        idx = idx + 1
                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                        continue 
                    if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _553] * sub_0b5482ac[address(msg.sender)].field_0:
                        require participants.length - 1 < participants.length
                        require id[address(msg.sender)] < participants.length
                        participants[stor177[address(msg.sender)]] = participants[participants.length]
                        id[stor176[stor176.length]] = id[address(msg.sender)]
                        id[msg.sender] = 0
                        require participants.length
                        participants[participants.length] = 0
                        participants.length--
                        sub_01934a83--
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if sub_0b5482ac[msg.sender][arg1].field_0 > totalDeposits:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalDeposits -= sub_0b5482ac[msg.sender][arg1].field_0
                if 1 == sub_01934a83:
                    idx = 0
                    s = 0
                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                        _559 = sha3(sha3(address(msg.sender), 162))
                        mem[0] = msg.sender
                        mem[32] = 162
                        idx = idx + 1
                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                        continue 
                    if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _559] * sub_0b5482ac[address(msg.sender)].field_0:
                        id[address(msg.sender)] = 0
                        require participants.length
                        participants[participants.length] = 0
                        participants.length--
                        sub_01934a83--
                else:
                    idx = 0
                    s = 0
                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                        _557 = sha3(sha3(address(msg.sender), 162))
                        mem[0] = msg.sender
                        mem[32] = 162
                        idx = idx + 1
                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                        continue 
                    if sub_0b5482ac[msg.sender][arg1].field_0 == stor[(5 * stor162[address(msg.sender)].field_0) + _557] * sub_0b5482ac[address(msg.sender)].field_0:
                        require participants.length - 1 < participants.length
                        require id[address(msg.sender)] < participants.length
                        participants[stor177[address(msg.sender)]] = participants[participants.length]
                        id[stor176[stor176.length]] = id[address(msg.sender)]
                        id[msg.sender] = 0
                        require participants.length
                        participants[participants.length] = 0
                        participants.length--
                        sub_01934a83--
    sub_0b5482ac[msg.sender][arg1].field_768 = block.timestamp
    emit EmergencyWithdraw(msg.sender, arg1, sub_0b5482ac[msg.sender][arg1].field_0);
    sub_0b5482ac[msg.sender][arg1].field_0 = 0
    sub_0b5482ac[msg.sender][arg1].field_256 = 0
    stor101 = 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x744465706f7369743a20746f6f206c6174652c20746865206661726d20697320636c6f7365,
                    mem[201 len 27]
    if block.timestamp <= lastRewardTime:
        require ext_code.size(sub_518f49d8Address)
        staticcall sub_518f49d8Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
        if not ext_code.size(sub_518f49d8Address):
            revert with 0, 'Address: call to non-contract'
        mem[452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[576 len 4] = 0
        mem[548 len 0] = 0
        call sub_518f49d8Address with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[548 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            require ext_code.size(sub_518f49d8Address)
            staticcall sub_518f49d8Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 <= arg1:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_41b99342:
                    if not sub_638f95f6:
                        if totalDeposits < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = 0
                        s = 0
                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                            _12023 = sha3(sha3(address(msg.sender), 162))
                            mem[0] = msg.sender
                            mem[32] = 162
                            idx = idx + 1
                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                            continue 
                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _12023] * sub_0b5482ac[address(msg.sender)].field_0:
                            id[address(msg.sender)] = sub_01934a83
                            sub_01934a83++
                            participants.length++
                            stor238B[stor176.length] = msg.sender
                    else:
                        if sub_1c2f5bb5 < sub_1c2f5bb5:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalDeposits < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = 0
                        s = 0
                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                            _12031 = sha3(sha3(address(msg.sender), 162))
                            mem[0] = msg.sender
                            mem[32] = 162
                            idx = idx + 1
                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                            continue 
                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _12031] * sub_0b5482ac[address(msg.sender)].field_0:
                            id[address(msg.sender)] = sub_01934a83
                            sub_01934a83++
                            participants.length++
                            stor238B[stor176.length] = msg.sender
                else:
                    if msg.value < sub_ff0c44da:
                        revert with 0, 
                                    32,
                                    39,
                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                    mem[559 len 17],
                                    0,
                                    mem[580 len 4]
                    if msg.value + sub_563d23e9 < sub_563d23e9:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_563d23e9 += msg.value
                    if totalDeposits < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    s = 0
                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                        _12035 = sha3(sha3(address(msg.sender), 162))
                        mem[0] = msg.sender
                        mem[32] = 162
                        idx = idx + 1
                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                        continue 
                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _12035] * sub_0b5482ac[address(msg.sender)].field_0:
                        id[address(msg.sender)] = sub_01934a83
                        sub_01934a83++
                        participants.length++
                        stor238B[stor176.length] = msg.sender
                sub_0b5482ac[msg.sender].field_0++
                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
            else:
                if sub_41b99342:
                    if msg.value < sub_ff0c44da:
                        revert with 0, 
                                    32,
                                    39,
                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                    mem[559 len 17],
                                    0,
                                    mem[580 len 4]
                    if msg.value + sub_563d23e9 < sub_563d23e9:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_563d23e9 += msg.value
                    if arg1 + totalDeposits < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += arg1
                    if not arg1:
                        idx = 0
                        s = 0
                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                            _12019 = sha3(sha3(address(msg.sender), 162))
                            mem[0] = msg.sender
                            mem[32] = 162
                            idx = idx + 1
                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                            continue 
                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _12019] * sub_0b5482ac[address(msg.sender)].field_0:
                            id[address(msg.sender)] = sub_01934a83
                            sub_01934a83++
                            participants.length++
                            stor238B[stor176.length] = msg.sender
                        sub_0b5482ac[msg.sender].field_0++
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                    else:
                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                        idx = 0
                        s = 0
                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                            _12017 = sha3(sha3(address(msg.sender), 162))
                            mem[0] = msg.sender
                            mem[32] = 162
                            idx = idx + 1
                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                            continue 
                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _12017] * sub_0b5482ac[address(msg.sender)].field_0:
                            id[address(msg.sender)] = sub_01934a83
                            sub_01934a83++
                            participants.length++
                            stor238B[stor176.length] = msg.sender
                        sub_0b5482ac[msg.sender].field_0++
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                else:
                    if not sub_638f95f6:
                        if arg1 + totalDeposits < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += arg1
                        if not arg1:
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12007 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12007] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                        else:
                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12005 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12005] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                    else:
                        if not arg1:
                            if 0 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_1c2f5bb5 < sub_1c2f5bb5:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += arg1
                            if not arg1:
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _12015 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _12015] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            else:
                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _12013 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _12013] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                        else:
                            if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                            if sub_638f95f6 * arg1 / 100 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                            if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                            if not arg1 - (sub_638f95f6 * arg1 / 100):
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _12011 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _12011] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            else:
                                if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _12009 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _12009] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
        else:
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ext_code.size(sub_518f49d8Address)
                staticcall sub_518f49d8Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= arg1:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_41b99342:
                        if not sub_638f95f6:
                            if totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12089 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12089] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                        else:
                            if sub_1c2f5bb5 < sub_1c2f5bb5:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12097 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12097] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                    else:
                        if msg.value < sub_ff0c44da:
                            revert with 0, 
                                        32,
                                        39,
                                        0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                        mem[ceil32(return_data.size) + 560 len 25]
                        if msg.value + sub_563d23e9 < sub_563d23e9:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_563d23e9 += msg.value
                        if totalDeposits < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = 0
                        s = 0
                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                            _12101 = sha3(sha3(address(msg.sender), 162))
                            mem[0] = msg.sender
                            mem[32] = 162
                            idx = idx + 1
                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                            continue 
                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _12101] * sub_0b5482ac[address(msg.sender)].field_0:
                            id[address(msg.sender)] = sub_01934a83
                            sub_01934a83++
                            participants.length++
                            stor238B[stor176.length] = msg.sender
                    sub_0b5482ac[msg.sender].field_0++
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                else:
                    if sub_41b99342:
                        if msg.value < sub_ff0c44da:
                            revert with 0, 
                                        32,
                                        39,
                                        0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                        mem[ceil32(return_data.size) + 560 len 25]
                        if msg.value + sub_563d23e9 < sub_563d23e9:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_563d23e9 += msg.value
                        if arg1 + totalDeposits < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += arg1
                        if not arg1:
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12085 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12085] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                        else:
                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12083 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12083] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                    else:
                        if not sub_638f95f6:
                            if arg1 + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += arg1
                            if not arg1:
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _12073 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _12073] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            else:
                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _12071 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _12071] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                        else:
                            if not arg1:
                                if 0 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_1c2f5bb5 < sub_1c2f5bb5:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _12081 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _12081] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _12079 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _12079] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                if sub_638f95f6 * arg1 / 100 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                if not arg1 - (sub_638f95f6 * arg1 / 100):
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _12077 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _12077] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _12075 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _12075] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
            else:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
                require ext_code.size(sub_518f49d8Address)
                staticcall sub_518f49d8Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= arg1:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_41b99342:
                        if not sub_638f95f6:
                            if totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12121 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12121] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                        else:
                            if sub_1c2f5bb5 < sub_1c2f5bb5:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12129 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12129] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                    else:
                        if msg.value < sub_ff0c44da:
                            revert with 0, 
                                        32,
                                        39,
                                        0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                        mem[ceil32(return_data.size) + 560 len 25]
                        if msg.value + sub_563d23e9 < sub_563d23e9:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_563d23e9 += msg.value
                        if totalDeposits < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = 0
                        s = 0
                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                            _12133 = sha3(sha3(address(msg.sender), 162))
                            mem[0] = msg.sender
                            mem[32] = 162
                            idx = idx + 1
                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                            continue 
                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _12133] * sub_0b5482ac[address(msg.sender)].field_0:
                            id[address(msg.sender)] = sub_01934a83
                            sub_01934a83++
                            participants.length++
                            stor238B[stor176.length] = msg.sender
                    sub_0b5482ac[msg.sender].field_0++
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                else:
                    if sub_41b99342:
                        if msg.value < sub_ff0c44da:
                            revert with 0, 
                                        32,
                                        39,
                                        0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                        mem[ceil32(return_data.size) + 560 len 25]
                        if msg.value + sub_563d23e9 < sub_563d23e9:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_563d23e9 += msg.value
                        if arg1 + totalDeposits < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += arg1
                        if not arg1:
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12117 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12117] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                        else:
                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 554 len 31]
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12115 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12115] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                    else:
                        if not sub_638f95f6:
                            if arg1 + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += arg1
                            if not arg1:
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _12105 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _12105] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            else:
                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _12103 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _12103] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                        else:
                            if not arg1:
                                if 0 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_1c2f5bb5 < sub_1c2f5bb5:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _12113 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _12113] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _12111 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _12111] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                if sub_638f95f6 * arg1 / 100 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                if not arg1 - (sub_638f95f6 * arg1 / 100):
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _12109 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _12109] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _12107 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _12107] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
    else:
        if not totalDeposits:
            lastRewardTime = block.timestamp
            require ext_code.size(sub_518f49d8Address)
            staticcall sub_518f49d8Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
            if not ext_code.size(sub_518f49d8Address):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[576 len 4] = 0
            mem[548 len 0] = 0
            call sub_518f49d8Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[548 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                require ext_code.size(sub_518f49d8Address)
                staticcall sub_518f49d8Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= arg1:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_41b99342:
                        if not sub_638f95f6:
                            if totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _11891 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11891] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                        else:
                            if sub_1c2f5bb5 < sub_1c2f5bb5:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _11899 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11899] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                    else:
                        if msg.value < sub_ff0c44da:
                            revert with 0, 
                                        32,
                                        39,
                                        0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                        mem[559 len 17],
                                        0,
                                        mem[580 len 4]
                        if msg.value + sub_563d23e9 < sub_563d23e9:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_563d23e9 += msg.value
                        if totalDeposits < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = 0
                        s = 0
                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                            _11903 = sha3(sha3(address(msg.sender), 162))
                            mem[0] = msg.sender
                            mem[32] = 162
                            idx = idx + 1
                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                            continue 
                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11903] * sub_0b5482ac[address(msg.sender)].field_0:
                            id[address(msg.sender)] = sub_01934a83
                            sub_01934a83++
                            participants.length++
                            stor238B[stor176.length] = msg.sender
                    sub_0b5482ac[msg.sender].field_0++
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                else:
                    if sub_41b99342:
                        if msg.value < sub_ff0c44da:
                            revert with 0, 
                                        32,
                                        39,
                                        0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                        mem[559 len 17],
                                        0,
                                        mem[580 len 4]
                        if msg.value + sub_563d23e9 < sub_563d23e9:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_563d23e9 += msg.value
                        if arg1 + totalDeposits < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += arg1
                        if not arg1:
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _11887 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11887] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                        else:
                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _11885 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11885] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                    else:
                        if not sub_638f95f6:
                            if arg1 + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += arg1
                            if not arg1:
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11875 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11875] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            else:
                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11873 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11873] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                        else:
                            if not arg1:
                                if 0 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_1c2f5bb5 < sub_1c2f5bb5:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11883 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11883] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11881 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11881] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                if sub_638f95f6 * arg1 / 100 > arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                if not arg1 - (sub_638f95f6 * arg1 / 100):
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11879 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11879] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11877 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11877] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
            else:
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(sub_518f49d8Address)
                    staticcall sub_518f49d8Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 <= arg1:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_41b99342:
                            if not sub_638f95f6:
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11957 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11957] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                            else:
                                if sub_1c2f5bb5 < sub_1c2f5bb5:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11965 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11965] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                        else:
                            if msg.value < sub_ff0c44da:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                            mem[ceil32(return_data.size) + 560 len 25]
                            if msg.value + sub_563d23e9 < sub_563d23e9:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_563d23e9 += msg.value
                            if totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _11969 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11969] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                        sub_0b5482ac[msg.sender].field_0++
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                    else:
                        if sub_41b99342:
                            if msg.value < sub_ff0c44da:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                            mem[ceil32(return_data.size) + 560 len 25]
                            if msg.value + sub_563d23e9 < sub_563d23e9:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_563d23e9 += msg.value
                            if arg1 + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += arg1
                            if not arg1:
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11953 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11953] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            else:
                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11951 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11951] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                        else:
                            if not sub_638f95f6:
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11941 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11941] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11939 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11939] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if not arg1:
                                    if 0 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11949 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11949] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11947 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11947] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    if sub_638f95f6 * arg1 / 100 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                    if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                    if not arg1 - (sub_638f95f6 * arg1 / 100):
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11945 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11945] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11943 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11943] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
                else:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(sub_518f49d8Address)
                    staticcall sub_518f49d8Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 <= arg1:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_41b99342:
                            if not sub_638f95f6:
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11989 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11989] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                            else:
                                if sub_1c2f5bb5 < sub_1c2f5bb5:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11997 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11997] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                        else:
                            if msg.value < sub_ff0c44da:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                            mem[ceil32(return_data.size) + 560 len 25]
                            if msg.value + sub_563d23e9 < sub_563d23e9:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_563d23e9 += msg.value
                            if totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _12001 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _12001] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                        sub_0b5482ac[msg.sender].field_0++
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                    else:
                        if sub_41b99342:
                            if msg.value < sub_ff0c44da:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                            mem[ceil32(return_data.size) + 560 len 25]
                            if msg.value + sub_563d23e9 < sub_563d23e9:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_563d23e9 += msg.value
                            if arg1 + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += arg1
                            if not arg1:
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11985 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11985] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            else:
                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 554 len 31]
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11983 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11983] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                        else:
                            if not sub_638f95f6:
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11973 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11973] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11971 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11971] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if not arg1:
                                    if 0 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11981 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11981] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11979 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11979] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    if sub_638f95f6 * arg1 / 100 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                    if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                    if not arg1 - (sub_638f95f6 * arg1 / 100):
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11977 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11977] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11975 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11975] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
        else:
            if lastRewardTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastRewardTime:
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_39d43ce0 += 0 / totalDeposits
                lastRewardTime = block.timestamp
                require ext_code.size(sub_518f49d8Address)
                staticcall sub_518f49d8Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if not ext_code.size(sub_518f49d8Address):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[576 len 4] = 0
                mem[548 len 0] = 0
                call sub_518f49d8Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[548 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    require ext_code.size(sub_518f49d8Address)
                    staticcall sub_518f49d8Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 <= arg1:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_41b99342:
                            if not sub_638f95f6:
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11759 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11759] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                            else:
                                if sub_1c2f5bb5 < sub_1c2f5bb5:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11767 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11767] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                        else:
                            if msg.value < sub_ff0c44da:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                            mem[559 len 17],
                                            0,
                                            mem[580 len 4]
                            if msg.value + sub_563d23e9 < sub_563d23e9:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_563d23e9 += msg.value
                            if totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = 0
                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                _11771 = sha3(sha3(address(msg.sender), 162))
                                mem[0] = msg.sender
                                mem[32] = 162
                                idx = idx + 1
                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                continue 
                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11771] * sub_0b5482ac[address(msg.sender)].field_0:
                                id[address(msg.sender)] = sub_01934a83
                                sub_01934a83++
                                participants.length++
                                stor238B[stor176.length] = msg.sender
                        sub_0b5482ac[msg.sender].field_0++
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                    else:
                        if sub_41b99342:
                            if msg.value < sub_ff0c44da:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                            mem[559 len 17],
                                            0,
                                            mem[580 len 4]
                            if msg.value + sub_563d23e9 < sub_563d23e9:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_563d23e9 += msg.value
                            if arg1 + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += arg1
                            if not arg1:
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11755 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11755] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            else:
                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11753 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11753] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                        else:
                            if not sub_638f95f6:
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11743 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11743] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11741 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11741] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if not arg1:
                                    if 0 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11751 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11751] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11749 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11749] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                    if sub_638f95f6 * arg1 / 100 > arg1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                    if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                    if not arg1 - (sub_638f95f6 * arg1 / 100):
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11747 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11747] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11745 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11745] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
                else:
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(sub_518f49d8Address)
                        staticcall sub_518f49d8Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 <= arg1:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_41b99342:
                                if not sub_638f95f6:
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11825 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11825] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                else:
                                    if sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11833 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11833] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                            else:
                                if msg.value < sub_ff0c44da:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                mem[ceil32(return_data.size) + 560 len 25]
                                if msg.value + sub_563d23e9 < sub_563d23e9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_563d23e9 += msg.value
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11837 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11837] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                        else:
                            if sub_41b99342:
                                if msg.value < sub_ff0c44da:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                mem[ceil32(return_data.size) + 560 len 25]
                                if msg.value + sub_563d23e9 < sub_563d23e9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_563d23e9 += msg.value
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11821 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11821] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11819 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11819] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if not sub_638f95f6:
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11809 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11809] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11807 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11807] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if not arg1:
                                        if 0 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg1 + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits += arg1
                                        if not arg1:
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11817 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11817] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11815 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11815] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                    else:
                                        if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        if sub_638f95f6 * arg1 / 100 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                        if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                        if not arg1 - (sub_638f95f6 * arg1 / 100):
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11813 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11813] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11811 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11811] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
                    else:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                        require ext_code.size(sub_518f49d8Address)
                        staticcall sub_518f49d8Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 <= arg1:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_41b99342:
                                if not sub_638f95f6:
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11857 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11857] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                else:
                                    if sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11865 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11865] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                            else:
                                if msg.value < sub_ff0c44da:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                mem[ceil32(return_data.size) + 560 len 25]
                                if msg.value + sub_563d23e9 < sub_563d23e9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_563d23e9 += msg.value
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11869 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11869] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                        else:
                            if sub_41b99342:
                                if msg.value < sub_ff0c44da:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                mem[ceil32(return_data.size) + 560 len 25]
                                if msg.value + sub_563d23e9 < sub_563d23e9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_563d23e9 += msg.value
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11853 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11853] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 554 len 31]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11851 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11851] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if not sub_638f95f6:
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11841 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11841] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11839 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11839] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if not arg1:
                                        if 0 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg1 + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits += arg1
                                        if not arg1:
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11849 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11849] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11847 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11847] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                    else:
                                        if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        if sub_638f95f6 * arg1 / 100 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                        if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                        if not arg1 - (sub_638f95f6 * arg1 / 100):
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11845 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11845] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11843 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11843] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
            else:
                if (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond) / block.timestamp - lastRewardTime != rewardPerSecond:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                if not (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond):
                    if totalDeposits <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposits
                    if (0 / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_39d43ce0 += 0 / totalDeposits
                    lastRewardTime = block.timestamp
                    require ext_code.size(sub_518f49d8Address)
                    staticcall sub_518f49d8Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(sub_518f49d8Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[576 len 4] = 0
                    call sub_518f49d8Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        require ext_code.size(sub_518f49d8Address)
                        staticcall sub_518f49d8Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 <= arg1:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_41b99342:
                                if not sub_638f95f6:
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11627 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11627] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                else:
                                    if sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11635 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11635] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                            else:
                                if msg.value < sub_ff0c44da:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                mem[559 len 17],
                                                0,
                                                mem[580 len 4]
                                if msg.value + sub_563d23e9 < sub_563d23e9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_563d23e9 += msg.value
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11639 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11639] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                        else:
                            if sub_41b99342:
                                if msg.value < sub_ff0c44da:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                mem[559 len 17],
                                                0,
                                                mem[580 len 4]
                                if msg.value + sub_563d23e9 < sub_563d23e9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_563d23e9 += msg.value
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11623 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11623] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11621 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11621] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if not sub_638f95f6:
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11611 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11611] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11609 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11609] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if not arg1:
                                        if 0 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg1 + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits += arg1
                                        if not arg1:
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11619 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11619] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11617 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11617] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                    else:
                                        if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                        if sub_638f95f6 * arg1 / 100 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                        if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                        if not arg1 - (sub_638f95f6 * arg1 / 100):
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11615 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11615] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11613 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11613] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
                    else:
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(sub_518f49d8Address)
                            staticcall sub_518f49d8Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 <= arg1:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_41b99342:
                                    if not sub_638f95f6:
                                        if totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11693 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11693] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                    else:
                                        if sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11701 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11701] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                else:
                                    if msg.value < sub_ff0c44da:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                    mem[ceil32(return_data.size) + 560 len 25]
                                    if msg.value + sub_563d23e9 < sub_563d23e9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_563d23e9 += msg.value
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11705 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11705] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                            else:
                                if sub_41b99342:
                                    if msg.value < sub_ff0c44da:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                    mem[ceil32(return_data.size) + 560 len 25]
                                    if msg.value + sub_563d23e9 < sub_563d23e9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_563d23e9 += msg.value
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11689 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11689] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11687 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11687] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if not sub_638f95f6:
                                        if arg1 + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits += arg1
                                        if not arg1:
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11677 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11677] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11675 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11675] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                    else:
                                        if not arg1:
                                            if 0 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if sub_1c2f5bb5 < sub_1c2f5bb5:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg1 + totalDeposits < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalDeposits += arg1
                                            if not arg1:
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11685 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11685] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                            else:
                                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11683 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11683] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                        else:
                                            if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            if sub_638f95f6 * arg1 / 100 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                            if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                            if not arg1 - (sub_638f95f6 * arg1 / 100):
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11681 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11681] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                            else:
                                                if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11679 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11679] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
                        else:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                            require ext_code.size(sub_518f49d8Address)
                            staticcall sub_518f49d8Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 <= arg1:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_41b99342:
                                    if not sub_638f95f6:
                                        if totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11725 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11725] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                    else:
                                        if sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11733 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11733] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                else:
                                    if msg.value < sub_ff0c44da:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                    mem[ceil32(return_data.size) + 560 len 25]
                                    if msg.value + sub_563d23e9 < sub_563d23e9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_563d23e9 += msg.value
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11737 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11737] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                            else:
                                if sub_41b99342:
                                    if msg.value < sub_ff0c44da:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                    mem[ceil32(return_data.size) + 560 len 25]
                                    if msg.value + sub_563d23e9 < sub_563d23e9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_563d23e9 += msg.value
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11721 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11721] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11719 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11719] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if not sub_638f95f6:
                                        if arg1 + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits += arg1
                                        if not arg1:
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11709 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11709] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11707 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11707] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                    else:
                                        if not arg1:
                                            if 0 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if sub_1c2f5bb5 < sub_1c2f5bb5:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg1 + totalDeposits < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalDeposits += arg1
                                            if not arg1:
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11717 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11717] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                            else:
                                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11715 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11715] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                        else:
                                            if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            if sub_638f95f6 * arg1 / 100 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                            if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                            if not arg1 - (sub_638f95f6 * arg1 / 100):
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11713 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11713] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                            else:
                                                if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11711 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11711] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
                else:
                    if (10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond) != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                    if totalDeposits <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposits
                    if ((10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits) + sub_39d43ce0 < sub_39d43ce0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_39d43ce0 += (10^18 * block.timestamp * rewardPerSecond) - (10^18 * lastRewardTime * rewardPerSecond) / totalDeposits
                    lastRewardTime = block.timestamp
                    require ext_code.size(sub_518f49d8Address)
                    staticcall sub_518f49d8Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if not ext_code.size(sub_518f49d8Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[576 len 4] = 0
                    mem[548 len 0] = 0
                    call sub_518f49d8Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        require ext_code.size(sub_518f49d8Address)
                        staticcall sub_518f49d8Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 <= arg1:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_41b99342:
                                if not sub_638f95f6:
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11495 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11495] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                else:
                                    if sub_1c2f5bb5 < sub_1c2f5bb5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11503 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11503] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                            else:
                                if msg.value < sub_ff0c44da:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                mem[559 len 17],
                                                0,
                                                mem[580 len 4]
                                if msg.value + sub_563d23e9 < sub_563d23e9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_563d23e9 += msg.value
                                if totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = 0
                                s = 0
                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                    _11507 = sha3(sha3(address(msg.sender), 162))
                                    mem[0] = msg.sender
                                    mem[32] = 162
                                    idx = idx + 1
                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                    continue 
                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11507] * sub_0b5482ac[address(msg.sender)].field_0:
                                    id[address(msg.sender)] = sub_01934a83
                                    sub_01934a83++
                                    participants.length++
                                    stor238B[stor176.length] = msg.sender
                            sub_0b5482ac[msg.sender].field_0++
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                        else:
                            if sub_41b99342:
                                if msg.value < sub_ff0c44da:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                mem[559 len 17],
                                                0,
                                                mem[580 len 4]
                                if msg.value + sub_563d23e9 < sub_563d23e9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_563d23e9 += msg.value
                                if arg1 + totalDeposits < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                if not arg1:
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11491 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11491] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                else:
                                    if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11489 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11489] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                    sub_0b5482ac[msg.sender].field_0++
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                            else:
                                if not sub_638f95f6:
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11479 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11479] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11477 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11477] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if not arg1:
                                        if 0 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg1 + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits += arg1
                                        if not arg1:
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11487 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11487] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11485 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11485] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                    else:
                                        if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                        if sub_638f95f6 * arg1 / 100 > arg1:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                        if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                        if not arg1 - (sub_638f95f6 * arg1 / 100):
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11483 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11483] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 23], 0, mem[580 len 4]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11481 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11481] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
                    else:
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(sub_518f49d8Address)
                            staticcall sub_518f49d8Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 <= arg1:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_41b99342:
                                    if not sub_638f95f6:
                                        if totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11561 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11561] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                    else:
                                        if sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11569 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11569] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                else:
                                    if msg.value < sub_ff0c44da:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                    mem[ceil32(return_data.size) + 560 len 25]
                                    if msg.value + sub_563d23e9 < sub_563d23e9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_563d23e9 += msg.value
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11573 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11573] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                            else:
                                if sub_41b99342:
                                    if msg.value < sub_ff0c44da:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                    mem[ceil32(return_data.size) + 560 len 25]
                                    if msg.value + sub_563d23e9 < sub_563d23e9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_563d23e9 += msg.value
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11557 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11557] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11555 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11555] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if not sub_638f95f6:
                                        if arg1 + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits += arg1
                                        if not arg1:
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11545 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11545] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11543 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11543] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                    else:
                                        if not arg1:
                                            if 0 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if sub_1c2f5bb5 < sub_1c2f5bb5:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg1 + totalDeposits < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalDeposits += arg1
                                            if not arg1:
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11553 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11553] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                            else:
                                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11551 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11551] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                        else:
                                            if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            if sub_638f95f6 * arg1 / 100 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                            if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                            if not arg1 - (sub_638f95f6 * arg1 / 100):
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11549 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11549] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                            else:
                                                if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11547 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11547] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
                        else:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                            require ext_code.size(sub_518f49d8Address)
                            staticcall sub_518f49d8Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 <= arg1:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_41b99342:
                                    if not sub_638f95f6:
                                        if totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11593 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11593] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                    else:
                                        if sub_1c2f5bb5 < sub_1c2f5bb5:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11601 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11601] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                else:
                                    if msg.value < sub_ff0c44da:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                    mem[ceil32(return_data.size) + 560 len 25]
                                    if msg.value + sub_563d23e9 < sub_563d23e9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_563d23e9 += msg.value
                                    if totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = 0
                                    s = 0
                                    while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                        require idx < sub_0b5482ac[address(msg.sender)].field_0
                                        _11605 = sha3(sha3(address(msg.sender), 162))
                                        mem[0] = msg.sender
                                        mem[32] = 162
                                        idx = idx + 1
                                        s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                        continue 
                                    if not stor[(5 * stor162[address(msg.sender)].field_0) + _11605] * sub_0b5482ac[address(msg.sender)].field_0:
                                        id[address(msg.sender)] = sub_01934a83
                                        sub_01934a83++
                                        participants.length++
                                        stor238B[stor176.length] = msg.sender
                                sub_0b5482ac[msg.sender].field_0++
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = 0
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, 0);
                            else:
                                if sub_41b99342:
                                    if msg.value < sub_ff0c44da:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6450617961626c6520616d6f756e74206973206c657373207468616e2066656520616d6f756e74,
                                                    mem[ceil32(return_data.size) + 560 len 25]
                                    if msg.value + sub_563d23e9 < sub_563d23e9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_563d23e9 += msg.value
                                    if arg1 + totalDeposits < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    if not arg1:
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11589 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11589] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                    else:
                                        if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        idx = 0
                                        s = 0
                                        while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                            require idx < sub_0b5482ac[address(msg.sender)].field_0
                                            _11587 = sha3(sha3(address(msg.sender), 162))
                                            mem[0] = msg.sender
                                            mem[32] = 162
                                            idx = idx + 1
                                            s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                            continue 
                                        if not stor[(5 * stor162[address(msg.sender)].field_0) + _11587] * sub_0b5482ac[address(msg.sender)].field_0:
                                            id[address(msg.sender)] = sub_01934a83
                                            sub_01934a83++
                                            participants.length++
                                            stor238B[stor176.length] = msg.sender
                                        sub_0b5482ac[msg.sender].field_0++
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                    sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                    address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                    emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                else:
                                    if not sub_638f95f6:
                                        if arg1 + totalDeposits < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalDeposits += arg1
                                        if not arg1:
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11577 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11577] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                        else:
                                            if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            idx = 0
                                            s = 0
                                            while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                _11575 = sha3(sha3(address(msg.sender), 162))
                                                mem[0] = msg.sender
                                                mem[32] = 162
                                                idx = idx + 1
                                                s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                continue 
                                            if not stor[(5 * stor162[address(msg.sender)].field_0) + _11575] * sub_0b5482ac[address(msg.sender)].field_0:
                                                id[address(msg.sender)] = sub_01934a83
                                                sub_01934a83++
                                                participants.length++
                                                stor238B[stor176.length] = msg.sender
                                            sub_0b5482ac[msg.sender].field_0++
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                        sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                        address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                        emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                    else:
                                        if not arg1:
                                            if 0 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if sub_1c2f5bb5 < sub_1c2f5bb5:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg1 + totalDeposits < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalDeposits += arg1
                                            if not arg1:
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11585 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11585] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                            else:
                                                if sub_39d43ce0 * arg1 / arg1 != sub_39d43ce0:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11583 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11583] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = sub_39d43ce0 * arg1 / 10^18
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1);
                                        else:
                                            if sub_638f95f6 * arg1 / arg1 != sub_638f95f6:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            if sub_638f95f6 * arg1 / 100 > arg1:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (sub_638f95f6 * arg1 / 100) + sub_1c2f5bb5 < sub_1c2f5bb5:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_1c2f5bb5 += sub_638f95f6 * arg1 / 100
                                            if arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalDeposits = arg1 - (sub_638f95f6 * arg1 / 100) + totalDeposits
                                            if not arg1 - (sub_638f95f6 * arg1 / 100):
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11581 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11581] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = 0
                                            else:
                                                if (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / arg1 - (sub_638f95f6 * arg1 / 100) != sub_39d43ce0:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                idx = 0
                                                s = 0
                                                while idx < sub_0b5482ac[address(msg.sender)].field_0:
                                                    require idx < sub_0b5482ac[address(msg.sender)].field_0
                                                    _11579 = sha3(sha3(address(msg.sender), 162))
                                                    mem[0] = msg.sender
                                                    mem[32] = 162
                                                    idx = idx + 1
                                                    s = sub_0b5482ac[address(msg.sender)][idx].field_0 + s
                                                    continue 
                                                if not stor[(5 * stor162[address(msg.sender)].field_0) + _11579] * sub_0b5482ac[address(msg.sender)].field_0:
                                                    id[address(msg.sender)] = sub_01934a83
                                                    sub_01934a83++
                                                    participants.length++
                                                    stor238B[stor176.length] = msg.sender
                                                sub_0b5482ac[msg.sender].field_0++
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_0 = arg1 - (sub_638f95f6 * arg1 / 100)
                                                sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_256 = (arg1 * sub_39d43ce0) - (sub_638f95f6 * arg1 / 100 * sub_39d43ce0) / 10^18
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_512 = block.timestamp
                                            sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_768 = 0
                                            address(sub_0b5482ac[msg.sender][sub_0b5482ac[msg.sender].field_0].field_1024) = msg.sender
                                            emit Deposit(msg.sender, sub_0b5482ac[msg.sender].field_0, arg1 - (sub_638f95f6 * arg1 / 100));
    stor101 = 1
}



}
