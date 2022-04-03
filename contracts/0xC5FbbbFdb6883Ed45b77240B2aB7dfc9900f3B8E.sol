contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1)
#
const TOTAL_RATE = 100


uint8 stor0; offset 160
address owner;
mapping of struct rounds;
mapping of struct ledger;
uint256 currentEpoch;
uint256 intervalBlocks;
uint256 bufferBlocks;
address adminAddress;
address operatorAddress;
uint256 treasuryAmount;
address stor10;
uint128 stor11;
uint256 stor11; offset 80
uint256 sub_91e5ae4f;
address stor12;
uint256 sub_b1802631;
uint256 rewardRate;
uint256 treasuryRate;
uint256 minBetAmount;
uint256 oracleUpdateAllowance;
uint8 genesisStartOnce;
uint8 genesisLockOnce; offset 8
uint16 stor18;

function genesisLockOnce() {
    return bool(genesisLockOnce)
}

function operatorAddress() {
    return operatorAddress
}

function intervalBlocks() {
    return intervalBlocks
}

function treasuryAmount() {
    return treasuryAmount
}

function paused() {
    return bool(stor0)
}

function oracleUpdateAllowance() {
    return oracleUpdateAllowance
}

function ledger(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ledger[arg1][arg2].field_0 <= 1
    return ledger[arg1][arg2].field_0, ledger[arg1][arg2].field_256, bool(ledger[arg1][arg2].field_512)
}

function currentEpoch() {
    return currentEpoch
}

function rewardRate() {
    return rewardRate
}

function rounds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rounds[arg1].field_0, 
           rounds[arg1].field_256,
           rounds[arg1].field_512,
           rounds[arg1].field_768,
           rounds[arg1].field_1024,
           rounds[arg1].field_1280,
           rounds[arg1].field_1536,
           rounds[arg1].field_1792,
           rounds[arg1].field_2048,
           rounds[arg1].field_2304,
           rounds[arg1].field_2560,
           rounds[arg1].field_2816,
           rounds[arg1].field_3072,
           bool(rounds[arg1].field_3328)
}

function owner() {
    return owner
}

function sub_91e5ae4f(?) {
    return sub_91e5ae4f
}

function bufferBlocks() {
    return bufferBlocks
}

function sub_b1802631(?) {
    return sub_b1802631
}

function userRounds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userRounds[arg1]
    return userRounds[arg1][arg2]
}

function treasuryRate() {
    return treasuryRate
}

function genesisStartOnce() {
    return bool(genesisStartOnce)
}

function minBetAmount() {
    return minBetAmount
}

function adminAddress() {
    return adminAddress
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

function setIntervalBlocks(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    intervalBlocks = arg1
}

function setOracleUpdateAllowance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    oracleUpdateAllowance = arg1
}

function setMinBetAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    minBetAmount = arg1
    emit MinBetAmountUpdated(arg1, currentEpoch);
}

function setFirstOracle(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    stor10 = arg1
}

function setSecondOracle(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    stor12 = arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    operatorAddress = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    adminAddress = arg1
}

function unpause() {
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor18 = 0
    stor0 = 0
    emit Unpaused(msg.sender);
    emit Unpause(currentEpoch);
}

function pause() {
    if adminAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0, 'admin | operator: wut?'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    emit Pause(currentEpoch);
}

function setBufferBlocks(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if arg1 > intervalBlocks:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe43616e6e6f74206265206d6f7265207468616e20696e74657276616c426c6f636b,
                    mem[198 len 30]
    bufferBlocks = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function refundable(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ledger[arg1][address(arg2)].field_0 <= 1
    if rounds[arg1].field_3328:
        return not bool(rounds[arg1].field_3328)
    if bufferBlocks + rounds[arg1].field_768 < rounds[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= bufferBlocks + rounds[arg1].field_768:
        return (block.number > bufferBlocks + rounds[arg1].field_768)
    return bool(ledger[arg1][address(arg2)].field_256)
}

function setRewardRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65726577617264526174652063616e6e6f74206265206d6f7265207468616e20313030,
                    mem[199 len 29]
    rewardRate = arg1
    treasuryRate = -arg1 + 100
    emit RatesUpdated(rewardRate, -arg1 + 100, currentEpoch);
}

function setTreasuryRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777472656173757279526174652063616e6e6f74206265206d6f7265207468616e20313030,
                    mem[201 len 27]
    rewardRate = -arg1 + 100
    treasuryRate = arg1
    emit RatesUpdated(-arg1 + 100, arg1, currentEpoch);
}

function claimTreasury() {
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    treasuryAmount = 0
    call adminAddress with:
       value treasuryAmount wei
         gas 23000 wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x655472616e7366657248656c7065723a20424e425f5452414e534645525f4641494c45,
                        mem[199 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x655472616e7366657248656c7065723a20424e425f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 200 len 29]
    ('bool', 'ext_call.success')
    emit ClaimTreasury(treasuryAmount);
}

function genesisStartRound() {
    if operatorAddress != msg.sender:
        revert with 0, 'operator: wut?'
    if stor0:
        revert with 0, 'Pausable: paused'
    if genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7743616e206f6e6c792072756e2067656e657369735374617274526f756e64206f6e63,
                    mem[199 len 29]
    currentEpoch++
    rounds[stor4 + 1].field_256 = block.number
    if intervalBlocks + block.number < block.number:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_512 = intervalBlocks + block.number
    if (2 * intervalBlocks) + block.number < block.number:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_768 = (2 * intervalBlocks) + block.number
    rounds[stor4 + 1].field_0 = currentEpoch + 1
    rounds[stor4 + 1].field_2048 = 0
    emit StartRound(block.number, currentEpoch + 1);
    genesisStartOnce = 1
}

function betBear() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if not rounds[stor4].field_256:
        revert with 0, 'Round not bettable'
    if not rounds[stor4].field_512:
        revert with 0, 'Round not bettable'
    if block.number <= rounds[stor4].field_256:
        revert with 0, 'Round not bettable'
    if block.number >= rounds[stor4].field_512:
        revert with 0, 'Round not bettable'
    if msg.value < minBetAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6542657420616d6f756e74206d7573742062652067726561746572207468616e206d696e426574416d6f756e,
                    mem[208 len 20]
    if ledger[stor4][msg.sender].field_256:
        revert with 0, 'Can only bet once per round'
    if msg.value + rounds[stor4].field_2048 < rounds[stor4].field_2048:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4].field_2048 += msg.value
    if msg.value + rounds[stor4].field_2560 < rounds[stor4].field_2560:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4].field_2560 += msg.value
    ledger[stor4][msg.sender].field_0 = 1
    ledger[stor4][msg.sender].field_256 = msg.value
    userRounds[msg.sender]++
    userRounds[msg.sender][userRounds[msg.sender]] = currentEpoch
    emit BetBear(msg.value, msg.sender, currentEpoch);
}

function betBull() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if not rounds[stor4].field_256:
        revert with 0, 'Round not bettable'
    if not rounds[stor4].field_512:
        revert with 0, 'Round not bettable'
    if block.number <= rounds[stor4].field_256:
        revert with 0, 'Round not bettable'
    if block.number >= rounds[stor4].field_512:
        revert with 0, 'Round not bettable'
    if msg.value < minBetAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6542657420616d6f756e74206d7573742062652067726561746572207468616e206d696e426574416d6f756e,
                    mem[208 len 20]
    if ledger[stor4][msg.sender].field_256:
        revert with 0, 'Can only bet once per round'
    if msg.value + rounds[stor4].field_2048 < rounds[stor4].field_2048:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4].field_2048 += msg.value
    if msg.value + rounds[stor4].field_2304 < rounds[stor4].field_2304:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4].field_2304 += msg.value
    ledger[stor4][msg.sender].field_0 = 0
    ledger[stor4][msg.sender].field_256 = msg.value
    userRounds[msg.sender]++
    userRounds[msg.sender][userRounds[msg.sender]] = currentEpoch
    emit BetBull(msg.value, msg.sender, currentEpoch);
}

function getUserRounds(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 <= userRounds[address(arg1)] - arg2:
        require arg3 <= test266151307()
        if arg3:
            mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = 0
        while idx < arg3:
            mem[32] = 3
            require idx + arg2 < userRounds[address(arg1)]
            mem[0] = sha3(address(arg1), 3)
            require idx < arg3
            mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRounds', 3)) + idx + arg2]
            idx = idx + 1
            continue 
        mem[(32 * arg3) + 224 len floor32(arg3)] = mem[128 len floor32(arg3)]
        return Array(len=arg3, data=mem[128 len floor32(arg3)], mem[(32 * arg3) + floor32(arg3) + 224 len (32 * arg3) - floor32(arg3)]), 
               arg2 + arg3
    require userRounds[address(arg1)] - arg2 <= test266151307()
    mem[96] = userRounds[address(arg1)] - arg2
    if userRounds[address(arg1)] - arg2:
        mem[128 len 32 * userRounds[address(arg1)] - arg2] = call.data[calldata.size len 32 * userRounds[address(arg1)] - arg2]
    idx = 0
    while idx < userRounds[address(arg1)] - arg2:
        mem[32] = 3
        require idx + arg2 < userRounds[address(arg1)]
        mem[0] = sha3(address(arg1), 3)
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRounds', 3)) + idx + arg2]
        idx = idx + 1
        continue 
    mem[(32 * userRounds[address(arg1)] - arg2) + 160] = userRounds[address(arg1)]
    mem[(32 * userRounds[address(arg1)] - arg2) + 128] = 64
    mem[(32 * userRounds[address(arg1)] - arg2) + 192] = mem[96]
    mem[(32 * userRounds[address(arg1)] - arg2) + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 64, userRounds[address(arg1)], mem[(32 * userRounds[address(arg1)] - arg2) + 192 len (32 * mem[96]) + 32]
}

function genesisLockRound() {
    if operatorAddress != msg.sender:
        revert with 0, 'operator: wut?'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6443616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e64206973207472696767657265,
                    mem[213 len 15]
    if genesisLockOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7343616e206f6e6c792072756e2067656e657369734c6f636b526f756e64206f6e63,
                    mem[198 len 30]
    if bufferBlocks + rounds[stor4].field_512 < rounds[stor4].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > bufferBlocks + rounds[stor4].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7443616e206f6e6c79206c6f636b20726f756e642077697468696e20627566666572426c6f636b,
                    mem[203 len 25]
    if oracleUpdateAllowance + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stor10)
    staticcall stor10.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(stor12)
    staticcall stor12.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[96] > oracleUpdateAllowance + block.timestamp:
        revert with 0, 
                    32,
                    52,
                    0x444669727374204f7261636c6520757064617465206578636565646564206d61782074696d657374616d7020616c6c6f77616e63,
                    ext_call.return_data[120 len 12]
    if ext_call.return_data[96] > oracleUpdateAllowance + block.timestamp:
        revert with 0, 
                    32,
                    53,
                    0x645365636f6e64204f7261636c6520757064617465206578636565646564206d61782074696d657374616d7020616c6c6f77616e63,
                    ext_call.return_data[121 len 11]
    if Mask(80, 0, ext_call.return_data[0]) <= sub_91e5ae4f:
        revert with 0, 
                    32,
                    67,
                    0x254669727374204f7261636c652075706461746520726f756e644964206d757374206265206c6172676572207468616e206f7261636c654c6174657374526f756e6449,
                    ext_call.return_data[135 len 25],
                    mem[384 len 4]
    if ext_call.return_data[22 len 10] <= sub_b1802631:
        revert with 0, 
                    32,
                    68,
                    0x455365636f6e64204f7261636c652075706461746520726f756e644964206d757374206265206c6172676572207468616e206f7261636c654c6174657374526f756e6449,
                    ext_call.return_data[136 len 24],
                    mem[384 len 4]
    Mask(80, 0, stor11.field_0) = Mask(80, 0, ext_call.return_data[0])
    Mask(176, 0, stor11.field_80) = 0
    sub_b1802631 = ext_call.return_data[22 len 10]
    if not rounds[stor4].field_256:
        revert with 0, 32, 43, 0x7343616e206f6e6c79206c6f636b20726f756e6420616674657220726f756e642068617320737461727465, mem[399 len 21]
    if block.number < rounds[stor4].field_512:
        revert with 0, 32, 35, 0x6543616e206f6e6c79206c6f636b20726f756e64206166746572206c6f636b426c6f63, mem[391 len 29]
    if bufferBlocks + rounds[stor4].field_512 < rounds[stor4].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > bufferBlocks + rounds[stor4].field_512:
        revert with 0, 32, 39, 0x7443616e206f6e6c79206c6f636b20726f756e642077697468696e20627566666572426c6f636b, mem[395 len 25]
    rounds[stor4].field_1024 = ext_call.return_data[32]
    rounds[stor4].field_1536 = ext_call.return_data[32]
    emit LockRound(block.number, ext_call.return_data[32], ext_call.return_data[32], currentEpoch);
    currentEpoch++
    rounds[stor4 + 1].field_256 = block.number
    if intervalBlocks + block.number < block.number:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_512 = intervalBlocks + block.number
    if (2 * intervalBlocks) + block.number < block.number:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_768 = (2 * intervalBlocks) + block.number
    rounds[stor4 + 1].field_0 = currentEpoch + 1
    rounds[stor4 + 1].field_2048 = 0
    emit StartRound(block.number, currentEpoch + 1);
    genesisLockOnce = 1
}

function claimable(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ledger[arg1][address(arg2)].field_0 <= 1
    if rounds[arg1].field_1280 == rounds[arg1].field_1024:
        if rounds[arg1].field_1536 == rounds[arg1].field_1792:
            return 0
    if rounds[arg1].field_1024 < 0:
        if rounds[arg1].field_1280 - rounds[arg1].field_1024 <= rounds[arg1].field_1280:
            revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[1288 len 28]
    else:
        if rounds[arg1].field_1280 - rounds[arg1].field_1024 > rounds[arg1].field_1280:
            if rounds[arg1].field_1024 >= 0:
                revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[1288 len 28]
            if rounds[arg1].field_1280 - rounds[arg1].field_1024 <= rounds[arg1].field_1280:
                revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[1288 len 28]
    if not rounds[arg1].field_1280 - rounds[arg1].field_1024:
        if not rounds[arg1].field_1024:
            revert with 0, 'SignedSafeMath: division by zero'
        if rounds[arg1].field_1024:
            if rounds[arg1].field_1536 < 0:
                if rounds[arg1].field_1792 - rounds[arg1].field_1536 <= rounds[arg1].field_1792:
                    revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[1288 len 28]
            else:
                if rounds[arg1].field_1792 - rounds[arg1].field_1536 > rounds[arg1].field_1792:
                    if rounds[arg1].field_1536 >= 0:
                        revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[1288 len 28]
                    if rounds[arg1].field_1792 - rounds[arg1].field_1536 <= rounds[arg1].field_1792:
                        revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[1288 len 28]
            if not rounds[arg1].field_1792 - rounds[arg1].field_1536:
                if not rounds[arg1].field_1536:
                    revert with 0, 'SignedSafeMath: division by zero'
                if rounds[arg1].field_1536:
                    if not rounds[arg1].field_3328:
                        return bool(rounds[arg1].field_3328)
                    if 0 / rounds[arg1].field_1024 <= 0 / rounds[arg1].field_1536:
                        if 0 / rounds[arg1].field_1024 >= 0 / rounds[arg1].field_1536:
                            return (0 / rounds[arg1].field_1024 < 0 / rounds[arg1].field_1536)
                        if ledger[arg1][address(arg2)].field_0 <= 1:
                            return (ledger[arg1][address(arg2)].field_0 == 1)
                    else:
                        if ledger[arg1][address(arg2)].field_0 <= 1:
                            if not ledger[arg1][address(arg2)].field_0:
                                return not ledger[arg1][address(arg2)].field_0
                            if 0 / rounds[arg1].field_1024 >= 0 / rounds[arg1].field_1536:
                                return (0 / rounds[arg1].field_1024 < 0 / rounds[arg1].field_1536)
                            if ledger[arg1][address(arg2)].field_0 <= 1:
                                return (ledger[arg1][address(arg2)].field_0 == 1)
            else:
                if rounds[arg1].field_1792 - rounds[arg1].field_1536:
                    if (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1792 - rounds[arg1].field_1536 != 100 * 10^6:
                        revert with 0, 32, 39, 0x645369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1291 len 25]
                    if not rounds[arg1].field_1536:
                        revert with 0, 'SignedSafeMath: division by zero'
                    if -1 == rounds[arg1].field_1536:
                        if (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 33, 0x645369676e6564536166654d6174683a206469766973696f6e206f766572666c6f, mem[1285 len 31]
                    if rounds[arg1].field_1536:
                        if not rounds[arg1].field_3328:
                            return bool(rounds[arg1].field_3328)
                        if 0 / rounds[arg1].field_1024 <= (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536:
                            if 0 / rounds[arg1].field_1024 >= (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536:
                                return (0 / rounds[arg1].field_1024 < (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536)
                            if ledger[arg1][address(arg2)].field_0 <= 1:
                                return (ledger[arg1][address(arg2)].field_0 == 1)
                        else:
                            if ledger[arg1][address(arg2)].field_0 <= 1:
                                if not ledger[arg1][address(arg2)].field_0:
                                    return not ledger[arg1][address(arg2)].field_0
                                if 0 / rounds[arg1].field_1024 >= (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536:
                                    return (0 / rounds[arg1].field_1024 < (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536)
                                if ledger[arg1][address(arg2)].field_0 <= 1:
                                    return (ledger[arg1][address(arg2)].field_0 == 1)
    else:
        if rounds[arg1].field_1280 - rounds[arg1].field_1024:
            if (100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1280 - rounds[arg1].field_1024 != 100 * 10^6:
                revert with 0, 32, 39, 0x645369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1291 len 25]
            if not rounds[arg1].field_1024:
                revert with 0, 'SignedSafeMath: division by zero'
            if -1 == rounds[arg1].field_1024:
                if (100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 33, 0x645369676e6564536166654d6174683a206469766973696f6e206f766572666c6f, mem[1285 len 31]
            if rounds[arg1].field_1024:
                if rounds[arg1].field_1536 < 0:
                    if rounds[arg1].field_1792 - rounds[arg1].field_1536 <= rounds[arg1].field_1792:
                        revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[1288 len 28]
                else:
                    if rounds[arg1].field_1792 - rounds[arg1].field_1536 > rounds[arg1].field_1792:
                        if rounds[arg1].field_1536 >= 0:
                            revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[1288 len 28]
                        if rounds[arg1].field_1792 - rounds[arg1].field_1536 <= rounds[arg1].field_1792:
                            revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[1288 len 28]
                if not rounds[arg1].field_1792 - rounds[arg1].field_1536:
                    if not rounds[arg1].field_1536:
                        revert with 0, 'SignedSafeMath: division by zero'
                    if rounds[arg1].field_1536:
                        if not rounds[arg1].field_3328:
                            return bool(rounds[arg1].field_3328)
                        if (100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 <= 0 / rounds[arg1].field_1536:
                            if (100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 >= 0 / rounds[arg1].field_1536:
                                return ((100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 < 0 / rounds[arg1].field_1536)
                            if ledger[arg1][address(arg2)].field_0 <= 1:
                                return (ledger[arg1][address(arg2)].field_0 == 1)
                        else:
                            if ledger[arg1][address(arg2)].field_0 <= 1:
                                if not ledger[arg1][address(arg2)].field_0:
                                    return not ledger[arg1][address(arg2)].field_0
                                if (100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 >= 0 / rounds[arg1].field_1536:
                                    return ((100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 < 0 / rounds[arg1].field_1536)
                                if ledger[arg1][address(arg2)].field_0 <= 1:
                                    return (ledger[arg1][address(arg2)].field_0 == 1)
                else:
                    if rounds[arg1].field_1792 - rounds[arg1].field_1536:
                        if (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1792 - rounds[arg1].field_1536 != 100 * 10^6:
                            revert with 0, 32, 39, 0x645369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1291 len 25]
                        if not rounds[arg1].field_1536:
                            revert with 0, 'SignedSafeMath: division by zero'
                        if -1 == rounds[arg1].field_1536:
                            if (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 33, 0x645369676e6564536166654d6174683a206469766973696f6e206f766572666c6f, mem[1285 len 31]
                        if rounds[arg1].field_1536:
                            if not rounds[arg1].field_3328:
                                return bool(rounds[arg1].field_3328)
                            if (100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 <= (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536:
                                if (100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 >= (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536:
                                    return ((100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 < (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536)
                                if ledger[arg1][address(arg2)].field_0 <= 1:
                                    return (ledger[arg1][address(arg2)].field_0 == 1)
                            else:
                                if ledger[arg1][address(arg2)].field_0 <= 1:
                                    if not ledger[arg1][address(arg2)].field_0:
                                        return not ledger[arg1][address(arg2)].field_0
                                    if (100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 >= (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536:
                                        return ((100 * 10^6 * rounds[arg1].field_1280) - (100 * 10^6 * rounds[arg1].field_1024) / rounds[arg1].field_1024 < (100 * 10^6 * rounds[arg1].field_1792) - (100 * 10^6 * rounds[arg1].field_1536) / rounds[arg1].field_1536)
                                    if ledger[arg1][address(arg2)].field_0 <= 1:
                                        return (ledger[arg1][address(arg2)].field_0 == 1)
    revert
}

function executeRound() {
    if operatorAddress != msg.sender:
        revert with 0, 'operator: wut?'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6b43616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e6420616e642067656e657369734c6f636b526f756e64206973207472696767657265,
                    mem[234 len 26]
    if not genesisLockOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6b43616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e6420616e642067656e657369734c6f636b526f756e64206973207472696767657265,
                    mem[234 len 26]
    if oracleUpdateAllowance + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stor10)
    staticcall stor10.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(stor12)
    staticcall stor12.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[96] > oracleUpdateAllowance + block.timestamp:
        revert with 0, 
                    32,
                    52,
                    0x444669727374204f7261636c6520757064617465206578636565646564206d61782074696d657374616d7020616c6c6f77616e63,
                    ext_call.return_data[120 len 12]
    if ext_call.return_data[96] > oracleUpdateAllowance + block.timestamp:
        revert with 0, 
                    32,
                    53,
                    0x645365636f6e64204f7261636c6520757064617465206578636565646564206d61782074696d657374616d7020616c6c6f77616e63,
                    ext_call.return_data[121 len 11]
    if Mask(80, 0, ext_call.return_data[0]) <= sub_91e5ae4f:
        revert with 0, 
                    32,
                    67,
                    0x254669727374204f7261636c652075706461746520726f756e644964206d757374206265206c6172676572207468616e206f7261636c654c6174657374526f756e6449,
                    ext_call.return_data[135 len 25],
                    mem[384 len 4]
    if ext_call.return_data[22 len 10] <= sub_b1802631:
        revert with 0, 
                    32,
                    68,
                    0x455365636f6e64204f7261636c652075706461746520726f756e644964206d757374206265206c6172676572207468616e206f7261636c654c6174657374526f756e6449,
                    ext_call.return_data[136 len 24],
                    mem[384 len 4]
    Mask(80, 0, stor11.field_0) = Mask(80, 0, ext_call.return_data[0])
    Mask(176, 0, stor11.field_80) = 0
    sub_b1802631 = ext_call.return_data[22 len 10]
    if not rounds[stor4].field_256:
        revert with 0, 32, 43, 0x7343616e206f6e6c79206c6f636b20726f756e6420616674657220726f756e642068617320737461727465, mem[399 len 21]
    if block.number < rounds[stor4].field_512:
        revert with 0, 32, 35, 0x6543616e206f6e6c79206c6f636b20726f756e64206166746572206c6f636b426c6f63, mem[391 len 29]
    if bufferBlocks + rounds[stor4].field_512 < rounds[stor4].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > bufferBlocks + rounds[stor4].field_512:
        revert with 0, 32, 39, 0x7443616e206f6e6c79206c6f636b20726f756e642077697468696e20627566666572426c6f636b, mem[395 len 25]
    rounds[stor4].field_1024 = ext_call.return_data[32]
    rounds[stor4].field_1536 = ext_call.return_data[32]
    emit LockRound(block.number, ext_call.return_data[32], ext_call.return_data[32], currentEpoch);
    if not rounds[stor4 - 1].field_512:
        revert with 0, 32, 41, 0x7743616e206f6e6c7920656e6420726f756e6420616674657220726f756e6420686173206c6f636b65, mem[397 len 23]
    if block.number < rounds[stor4 - 1].field_768:
        revert with 0, 32, 33, 0x2543616e206f6e6c7920656e6420726f756e6420616674657220656e64426c6f63, mem[389 len 31]
    if bufferBlocks + rounds[stor4 - 1].field_768 < rounds[stor4 - 1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > bufferBlocks + rounds[stor4 - 1].field_768:
        revert with 0, 32, 38, 0x6443616e206f6e6c7920656e6420726f756e642077697468696e20627566666572426c6f636b, mem[394 len 26]
    rounds[stor4 - 1].field_1280 = ext_call.return_data[32]
    rounds[stor4 - 1].field_1792 = ext_call.return_data[32]
    rounds[stor4 - 1].field_3328 = 1
    emit EndRound(block.number, ext_call.return_data[32], ext_call.return_data[32], currentEpoch - 1);
    if treasuryRate + rewardRate < rewardRate:
        revert with 0, 'SafeMath: addition overflow'
    if treasuryRate + rewardRate != 100:
        revert with 0, 
                    32,
                    53,
                    0x737265776172645261746520616e6420747265617375727952617465206d7573742061646420757020746f20544f54414c5f524154,
                    mem[409 len 11]
    if rounds[stor4 - 1].field_2816:
        revert with 0, 'Rewards calculated'
    if rounds[stor4 - 1].field_3072:
        revert with 0, 'Rewards calculated'
    if rounds[stor4 - 1].field_1024 < 0:
        if rounds[stor4 - 1].field_1280 - rounds[stor4 - 1].field_1024 <= rounds[stor4 - 1].field_1280:
            revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
    else:
        if rounds[stor4 - 1].field_1280 - rounds[stor4 - 1].field_1024 > rounds[stor4 - 1].field_1280:
            if rounds[stor4 - 1].field_1024 >= 0:
                revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
            if rounds[stor4 - 1].field_1280 - rounds[stor4 - 1].field_1024 <= rounds[stor4 - 1].field_1280:
                revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
    if not rounds[stor4 - 1].field_1280 - rounds[stor4 - 1].field_1024:
        if not rounds[stor4 - 1].field_1024:
            revert with 0, 'SignedSafeMath: division by zero'
        require rounds[stor4 - 1].field_1024
        if rounds[stor4 - 1].field_1536 < 0:
            if rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536 <= rounds[stor4 - 1].field_1792:
                revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
        else:
            if rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536 > rounds[stor4 - 1].field_1792:
                if rounds[stor4 - 1].field_1536 >= 0:
                    revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
                if rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536 <= rounds[stor4 - 1].field_1792:
                    revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
        if not rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536:
            if not rounds[stor4 - 1].field_1536:
                revert with 0, 'SignedSafeMath: division by zero'
            require rounds[stor4 - 1].field_1536
            if 0 / rounds[stor4 - 1].field_1024 > 0 / rounds[stor4 - 1].field_1536:
                if not rounds[stor4 - 1].field_2048:
                    if not rounds[stor4 - 1].field_2048:
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = 0
                        if treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, 0, 0, 0 / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = 0
                        if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, 0, treasuryRate * rounds[stor4 - 1].field_2048 / 100, 0 / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                else:
                    if rewardRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != rewardRate:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not rounds[stor4 - 1].field_2048:
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                        if treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, rewardRate * rounds[stor4 - 1].field_2048 / 100, 0, 0 / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                        if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, rewardRate * rounds[stor4 - 1].field_2048 / 100, treasuryRate * rounds[stor4 - 1].field_2048 / 100, 0 / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
            else:
                if 0 / rounds[stor4 - 1].field_1024 >= 0 / rounds[stor4 - 1].field_1536:
                    rounds[stor4 - 1].field_2816 = 0
                    rounds[stor4 - 1].field_3072 = 0
                    if rounds[stor4 - 1].field_2048 + treasuryAmount < treasuryAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    treasuryAmount += rounds[stor4 - 1].field_2048
                    emit 0x1a772e24: 0, 0, rounds[stor4 - 1].field_2048, 0 / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                else:
                    if not rounds[stor4 - 1].field_2048:
                        if not rounds[stor4 - 1].field_2048:
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = 0
                            if treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, 0, 0, 0 / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                        else:
                            if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = 0
                            if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, 0, treasuryRate * rounds[stor4 - 1].field_2048 / 100, 0 / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if rewardRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != rewardRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not rounds[stor4 - 1].field_2048:
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                            if treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, rewardRate * rounds[stor4 - 1].field_2048 / 100, 0, 0 / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                        else:
                            if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                            if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, rewardRate * rounds[stor4 - 1].field_2048 / 100, treasuryRate * rounds[stor4 - 1].field_2048 / 100, 0 / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
            currentEpoch++
            if not genesisStartOnce:
                revert with 0, 
                            32,
                            49,
                            0x6443616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e64206973207472696767657265,
                            Mask(88, 0, 0 / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, 0 / rounds[stor4 - 1].field_1536) >> 224
            if not rounds[stor4 - 1].field_768:
                revert with 0, 
                            32,
                            46,
                            0x7343616e206f6e6c7920737461727420726f756e6420616674657220726f756e64206e2d322068617320656e6465,
                            Mask(112, 0, 0 / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, 0 / rounds[stor4 - 1].field_1536) >> 224
            if block.number < rounds[stor4 - 1].field_768:
                revert with 0, 
                            32,
                            49,
                            0x6443616e206f6e6c79207374617274206e657720726f756e6420616674657220726f756e64206e2d3220656e64426c6f63,
                            Mask(88, 0, 0 / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, 0 / rounds[stor4 - 1].field_1536) >> 224
        else:
            require rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536
            if (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536 != 100 * 10^6:
                revert with 0, 32, 39, 0x645369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[395 len 25]
            if not rounds[stor4 - 1].field_1536:
                revert with 0, 'SignedSafeMath: division by zero'
            if -1 == rounds[stor4 - 1].field_1536:
                if (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 33, 0x645369676e6564536166654d6174683a206469766973696f6e206f766572666c6f, mem[389 len 31]
            require rounds[stor4 - 1].field_1536
            if 0 / rounds[stor4 - 1].field_1024 > (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536:
                if not rounds[stor4 - 1].field_2048:
                    if not rounds[stor4 - 1].field_2048:
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = 0
                        if treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, 0, 0, 0 / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = 0
                        if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, 0, treasuryRate * rounds[stor4 - 1].field_2048 / 100, 0 / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                else:
                    if rewardRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != rewardRate:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not rounds[stor4 - 1].field_2048:
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                        if treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, rewardRate * rounds[stor4 - 1].field_2048 / 100, 0, 0 / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                        if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, rewardRate * rounds[stor4 - 1].field_2048 / 100, treasuryRate * rounds[stor4 - 1].field_2048 / 100, 0 / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
            else:
                if 0 / rounds[stor4 - 1].field_1024 >= (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536:
                    rounds[stor4 - 1].field_2816 = 0
                    rounds[stor4 - 1].field_3072 = 0
                    if rounds[stor4 - 1].field_2048 + treasuryAmount < treasuryAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    treasuryAmount += rounds[stor4 - 1].field_2048
                    emit 0x1a772e24: 0, 0, rounds[stor4 - 1].field_2048, 0 / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                else:
                    if not rounds[stor4 - 1].field_2048:
                        if not rounds[stor4 - 1].field_2048:
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = 0
                            if treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, 0, 0, 0 / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                        else:
                            if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = 0
                            if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, 0, treasuryRate * rounds[stor4 - 1].field_2048 / 100, 0 / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if rewardRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != rewardRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not rounds[stor4 - 1].field_2048:
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                            if treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, rewardRate * rounds[stor4 - 1].field_2048 / 100, 0, 0 / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                        else:
                            if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                            if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, rewardRate * rounds[stor4 - 1].field_2048 / 100, treasuryRate * rounds[stor4 - 1].field_2048 / 100, 0 / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
            currentEpoch++
            if not genesisStartOnce:
                revert with 0, 
                            32,
                            49,
                            0x6443616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e64206973207472696767657265,
                            Mask(88, 0, 0 / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536) >> 224
            if not rounds[stor4 - 1].field_768:
                revert with 0, 
                            32,
                            46,
                            0x7343616e206f6e6c7920737461727420726f756e6420616674657220726f756e64206e2d322068617320656e6465,
                            Mask(112, 0, 0 / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536) >> 224
            if block.number < rounds[stor4 - 1].field_768:
                revert with 0, 
                            32,
                            49,
                            0x6443616e206f6e6c79207374617274206e657720726f756e6420616674657220726f756e64206e2d3220656e64426c6f63,
                            Mask(88, 0, 0 / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536) >> 224
    else:
        require rounds[stor4 - 1].field_1280 - rounds[stor4 - 1].field_1024
        if (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1280 - rounds[stor4 - 1].field_1024 != 100 * 10^6:
            revert with 0, 32, 39, 0x645369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[395 len 25]
        if not rounds[stor4 - 1].field_1024:
            revert with 0, 'SignedSafeMath: division by zero'
        if -1 == rounds[stor4 - 1].field_1024:
            if (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 33, 0x645369676e6564536166654d6174683a206469766973696f6e206f766572666c6f, mem[389 len 31]
        require rounds[stor4 - 1].field_1024
        if rounds[stor4 - 1].field_1536 < 0:
            if rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536 <= rounds[stor4 - 1].field_1792:
                revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
        else:
            if rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536 > rounds[stor4 - 1].field_1792:
                if rounds[stor4 - 1].field_1536 >= 0:
                    revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
                if rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536 <= rounds[stor4 - 1].field_1792:
                    revert with 0, 32, 36, 0x6b5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[392 len 28]
        if not rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536:
            if not rounds[stor4 - 1].field_1536:
                revert with 0, 'SignedSafeMath: division by zero'
            require rounds[stor4 - 1].field_1536
            if (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024 > 0 / rounds[stor4 - 1].field_1536:
                if not rounds[stor4 - 1].field_2048:
                    if not rounds[stor4 - 1].field_2048:
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = 0
                        if treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, 0, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = 0
                        if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, 0, treasuryRate * rounds[stor4 - 1].field_2048 / 100, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                else:
                    if rewardRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != rewardRate:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not rounds[stor4 - 1].field_2048:
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                        if treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, rewardRate * rounds[stor4 - 1].field_2048 / 100, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                        if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, rewardRate * rounds[stor4 - 1].field_2048 / 100, treasuryRate * rounds[stor4 - 1].field_2048 / 100, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
            else:
                if (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024 >= 0 / rounds[stor4 - 1].field_1536:
                    rounds[stor4 - 1].field_2816 = 0
                    rounds[stor4 - 1].field_3072 = 0
                    if rounds[stor4 - 1].field_2048 + treasuryAmount < treasuryAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    treasuryAmount += rounds[stor4 - 1].field_2048
                    emit 0x1a772e24: 0, 0, rounds[stor4 - 1].field_2048, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                else:
                    if not rounds[stor4 - 1].field_2048:
                        if not rounds[stor4 - 1].field_2048:
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = 0
                            if treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, 0, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                        else:
                            if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = 0
                            if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, 0, treasuryRate * rounds[stor4 - 1].field_2048 / 100, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if rewardRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != rewardRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not rounds[stor4 - 1].field_2048:
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                            if treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, rewardRate * rounds[stor4 - 1].field_2048 / 100, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
                        else:
                            if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                            if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, rewardRate * rounds[stor4 - 1].field_2048 / 100, treasuryRate * rounds[stor4 - 1].field_2048 / 100, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, 0 / rounds[stor4 - 1].field_1536, currentEpoch - 1
            currentEpoch++
            if not genesisStartOnce:
                revert with 0, 
                            32,
                            49,
                            0x6443616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e64206973207472696767657265,
                            Mask(88, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, 0 / rounds[stor4 - 1].field_1536) >> 224
            if not rounds[stor4 - 1].field_768:
                revert with 0, 
                            32,
                            46,
                            0x7343616e206f6e6c7920737461727420726f756e6420616674657220726f756e64206e2d322068617320656e6465,
                            Mask(112, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, 0 / rounds[stor4 - 1].field_1536) >> 224
            if block.number < rounds[stor4 - 1].field_768:
                revert with 0, 
                            32,
                            49,
                            0x6443616e206f6e6c79207374617274206e657720726f756e6420616674657220726f756e64206e2d3220656e64426c6f63,
                            Mask(88, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, 0 / rounds[stor4 - 1].field_1536) >> 224
        else:
            require rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536
            if (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1792 - rounds[stor4 - 1].field_1536 != 100 * 10^6:
                revert with 0, 32, 39, 0x645369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[395 len 25]
            if not rounds[stor4 - 1].field_1536:
                revert with 0, 'SignedSafeMath: division by zero'
            if -1 == rounds[stor4 - 1].field_1536:
                if (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 33, 0x645369676e6564536166654d6174683a206469766973696f6e206f766572666c6f, mem[389 len 31]
            require rounds[stor4 - 1].field_1536
            if (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024 > (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536:
                if not rounds[stor4 - 1].field_2048:
                    if not rounds[stor4 - 1].field_2048:
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = 0
                        if treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, 0, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = 0
                        if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, 0, treasuryRate * rounds[stor4 - 1].field_2048 / 100, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                else:
                    if rewardRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != rewardRate:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not rounds[stor4 - 1].field_2048:
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                        if treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, rewardRate * rounds[stor4 - 1].field_2048 / 100, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2304
                        rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                        if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                        emit 0x1a772e24: rounds[stor4 - 1].field_2304, rewardRate * rounds[stor4 - 1].field_2048 / 100, treasuryRate * rounds[stor4 - 1].field_2048 / 100, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
            else:
                if (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024 >= (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536:
                    rounds[stor4 - 1].field_2816 = 0
                    rounds[stor4 - 1].field_3072 = 0
                    if rounds[stor4 - 1].field_2048 + treasuryAmount < treasuryAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    treasuryAmount += rounds[stor4 - 1].field_2048
                    emit 0x1a772e24: 0, 0, rounds[stor4 - 1].field_2048, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                else:
                    if not rounds[stor4 - 1].field_2048:
                        if not rounds[stor4 - 1].field_2048:
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = 0
                            if treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, 0, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                        else:
                            if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = 0
                            if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, 0, treasuryRate * rounds[stor4 - 1].field_2048 / 100, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                    else:
                        if rewardRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != rewardRate:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not rounds[stor4 - 1].field_2048:
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                            if treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, rewardRate * rounds[stor4 - 1].field_2048 / 100, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
                        else:
                            if treasuryRate * rounds[stor4 - 1].field_2048 / rounds[stor4 - 1].field_2048 != treasuryRate:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            rounds[stor4 - 1].field_2816 = rounds[stor4 - 1].field_2560
                            rounds[stor4 - 1].field_3072 = rewardRate * rounds[stor4 - 1].field_2048 / 100
                            if (treasuryRate * rounds[stor4 - 1].field_2048 / 100) + treasuryAmount < treasuryAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            treasuryAmount += treasuryRate * rounds[stor4 - 1].field_2048 / 100
                            emit 0x1a772e24: rounds[stor4 - 1].field_2560, rewardRate * rounds[stor4 - 1].field_2048 / 100, treasuryRate * rounds[stor4 - 1].field_2048 / 100, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536, currentEpoch - 1
            currentEpoch++
            if not genesisStartOnce:
                revert with 0, 
                            32,
                            49,
                            0x6443616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e64206973207472696767657265,
                            Mask(88, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536) >> 224
            if not rounds[stor4 - 1].field_768:
                revert with 0, 
                            32,
                            46,
                            0x7343616e206f6e6c7920737461727420726f756e6420616674657220726f756e64206e2d322068617320656e6465,
                            Mask(112, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536) >> 224
            if block.number < rounds[stor4 - 1].field_768:
                revert with 0, 
                            32,
                            49,
                            0x6443616e206f6e6c79207374617274206e657720726f756e6420616674657220726f756e64206e2d3220656e64426c6f63,
                            Mask(88, 0, (100 * 10^6 * rounds[stor4 - 1].field_1280) - (100 * 10^6 * rounds[stor4 - 1].field_1024) / rounds[stor4 - 1].field_1024),
                            Mask(32, 224, (100 * 10^6 * rounds[stor4 - 1].field_1792) - (100 * 10^6 * rounds[stor4 - 1].field_1536) / rounds[stor4 - 1].field_1536) >> 224
    ('ge', 'number', ('field', 768, ('stor', ('map', ('add', -1, ('stor', ('name', 'stor4', 4))), ('name', 'rounds', 1)))))
    rounds[stor4 + 1].field_256 = block.number
    if intervalBlocks + block.number < block.number:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_512 = intervalBlocks + block.number
    if (2 * intervalBlocks) + block.number < block.number:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_768 = (2 * intervalBlocks) + block.number
    rounds[stor4 + 1].field_0 = currentEpoch + 1
    rounds[stor4 + 1].field_2048 = 0
    emit StartRound(block.number, currentEpoch + 1);
}



}
