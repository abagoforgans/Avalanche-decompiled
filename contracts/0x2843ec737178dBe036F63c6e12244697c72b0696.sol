contract main {




// =====================  Runtime code  =====================


#
#  - recoverToken(address arg1, uint256 arg2)
#
uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1;
uint8 genesisLockOnce;
uint8 genesisStartOnce; offset 8
address adminAddress; offset 16
uint256 stor2; offset 8
address operatorAddress;
uint256 bufferSeconds;
uint256 intervalSeconds;
uint256 minBetAmount;
uint256 treasuryFee;
uint256 treasuryAmount;
uint256 currentEpoch;
mapping of struct ledger;
mapping of struct rounds;

function genesisLockOnce() {
    return bool(genesisLockOnce)
}

function operatorAddress() {
    return operatorAddress
}

function getUserRoundsLength(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRoundsLength[address(arg1)]
}

function treasuryAmount() {
    return treasuryAmount
}

function paused() {
    return bool(paused)
}

function ledger(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ledger[arg1][arg2].field_0 >= 2:
        revert with 'NH{q', 33
    return ledger[arg1][arg2].field_0, ledger[arg1][arg2].field_256, bool(ledger[arg1][arg2].field_512)
}

function currentEpoch() {
    return currentEpoch
}

function intervalSeconds() {
    return intervalSeconds
}

function rounds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
           bool(rounds[arg1].field_2816)
}

function owner() {
    return owner
}

function treasuryFee() {
    return treasuryFee
}

function userRounds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < userRoundsLength[arg1]
    return userRoundsLength[arg1][arg2]
}

function bufferSeconds() {
    return bufferSeconds
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not paused:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    treasuryFee = arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    operatorAddress = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    adminAddress = arg1
}

function pause() {
    if paused:
        revert with 0, 'Pausable: paused'
    if adminAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0, 'Not operator/admin'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not paused:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    stor2 = 0
    genesisLockOnce = 0
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function setMinBetAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not paused:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if not arg1:
        revert with 0, 'Must be superior to 0'
    minBetAmount = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function claimTreasury() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    treasuryAmount = 0
    call adminAddress with:
       value treasuryAmount wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    stor1 = 1
}

function setBufferAndIntervalSeconds(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not paused:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'bufferSeconds must be inferior to intervalSeconds'
    bufferSeconds = arg1
    intervalSeconds = arg2
}

function refundable(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ledger[arg1][address(arg2)].field_0 > 1:
        revert with 'NH{q', 33
    if rounds[arg1].field_2816:
        return not bool(rounds[arg1].field_2816)
    if ledger[arg1][address(arg2)].field_512:
        return not bool(ledger[arg1][address(arg2)].field_512)
    if rounds[arg1].field_768 > -bufferSeconds - 1:
        revert with 'NH{q', 17
    if block.timestamp <= rounds[arg1].field_768 + bufferSeconds:
        return (block.timestamp > rounds[arg1].field_768 + bufferSeconds)
    return not not ledger[arg1][address(arg2)].field_256
}

function genesisStartRound() {
    if paused:
        revert with 0, 'Pausable: paused'
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    if genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run genesisStartRound once'
    if currentEpoch > -2:
        revert with 'NH{q', 17
    currentEpoch++
    rounds[stor9].field_256 = block.timestamp
    if block.timestamp > -intervalSeconds - 1:
        revert with 'NH{q', 17
    rounds[stor9].field_512 = block.timestamp + intervalSeconds
    if intervalSeconds > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if block.timestamp > -(2 * intervalSeconds) - 1:
        revert with 'NH{q', 17
    rounds[stor9].field_768 = block.timestamp + (2 * intervalSeconds)
    rounds[stor9].field_0 = currentEpoch
    rounds[stor9].field_1536 = 0
    stor2 = 1
}

function claimable(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ledger[arg1][address(arg2)].field_0 > 1:
        revert with 'NH{q', 33
    if rounds[arg1].field_1024 == rounds[arg1].field_1280:
        return 0
    if not rounds[arg1].field_2816:
        return bool(rounds[arg1].field_2816)
    if not ledger[arg1][address(arg2)].field_256:
        return not not ledger[arg1][address(arg2)].field_256
    if ledger[arg1][address(arg2)].field_512:
        return not bool(ledger[arg1][address(arg2)].field_512)
    if rounds[arg1].field_1280 > rounds[arg1].field_1024:
        if ledger[arg1][address(arg2)].field_0 > 1:
            revert with 'NH{q', 33
        if not ledger[arg1][address(arg2)].field_0:
            return not ledger[arg1][address(arg2)].field_0
    if rounds[arg1].field_1280 >= rounds[arg1].field_1024:
        return (rounds[arg1].field_1280 < rounds[arg1].field_1024)
    if ledger[arg1][address(arg2)].field_0 > 1:
        revert with 'NH{q', 33
    return (ledger[arg1][address(arg2)].field_0 == 1)
}

function betBull(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'Proxy contract not allowed'
    if arg1 != currentEpoch:
        revert with 0, 'Bet is too early/late'
    if not rounds[arg1].field_256:
        revert with 0, 'Round not bettable'
    if not rounds[arg1].field_512:
        revert with 0, 'Round not bettable'
    if block.timestamp <= rounds[arg1].field_256:
        revert with 0, 'Round not bettable'
    if block.timestamp >= rounds[arg1].field_512:
        revert with 0, 'Round not bettable'
    if msg.value < minBetAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet amount must be greater than minBetAmount'
    if ledger[arg1][address(msg.sender)].field_256:
        revert with 0, 'Can only bet once per round'
    if rounds[arg1].field_1536 > -msg.value - 1:
        revert with 'NH{q', 17
    rounds[arg1].field_1536 += msg.value
    if rounds[arg1].field_1792 > -msg.value - 1:
        revert with 'NH{q', 17
    rounds[arg1].field_1792 += msg.value
    ledger[arg1][address(msg.sender)].field_0 = 0
    ledger[arg1][address(msg.sender)].field_256 = msg.value
    userRoundsLength[address(msg.sender)]++
    userRoundsLength[address(msg.sender)][userRoundsLength[address(msg.sender)]] = arg1
    stor1 = 1
}

function betBear(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'Proxy contract not allowed'
    if arg1 != currentEpoch:
        revert with 0, 'Bet is too early/late'
    if not rounds[arg1].field_256:
        revert with 0, 'Round not bettable'
    if not rounds[arg1].field_512:
        revert with 0, 'Round not bettable'
    if block.timestamp <= rounds[arg1].field_256:
        revert with 0, 'Round not bettable'
    if block.timestamp >= rounds[arg1].field_512:
        revert with 0, 'Round not bettable'
    if msg.value < minBetAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet amount must be greater than minBetAmount'
    if ledger[arg1][address(msg.sender)].field_256:
        revert with 0, 'Can only bet once per round'
    if rounds[arg1].field_1536 > -msg.value - 1:
        revert with 'NH{q', 17
    rounds[arg1].field_1536 += msg.value
    if rounds[arg1].field_2048 > -msg.value - 1:
        revert with 'NH{q', 17
    rounds[arg1].field_2048 += msg.value
    ledger[arg1][address(msg.sender)].field_0 = 1
    ledger[arg1][address(msg.sender)].field_256 = msg.value
    userRoundsLength[address(msg.sender)]++
    userRoundsLength[address(msg.sender)][userRoundsLength[address(msg.sender)]] = arg1
    stor1 = 1
}

function sub_ac859a01(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    if not genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run after genesisStartRound is triggered'
    if genesisLockOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run genesisLockRound once'
    if not rounds[stor9].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only lock round after round has started'
    if block.timestamp < rounds[stor9].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only lock round after lockTimestamp'
    if rounds[stor9].field_512 > -bufferSeconds - 1:
        revert with 'NH{q', 17
    if block.timestamp > rounds[stor9].field_512 + bufferSeconds:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only lock round within bufferSeconds'
    rounds[stor9].field_768 = block.timestamp + intervalSeconds
    rounds[stor9].field_1024 = arg1
    if currentEpoch > -2:
        revert with 'NH{q', 17
    currentEpoch++
    rounds[stor9].field_256 = block.timestamp
    if block.timestamp > -intervalSeconds - 1:
        revert with 'NH{q', 17
    rounds[stor9].field_512 = block.timestamp + intervalSeconds
    if intervalSeconds > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if block.timestamp > -(2 * intervalSeconds) - 1:
        revert with 'NH{q', 17
    rounds[stor9].field_768 = block.timestamp + (2 * intervalSeconds)
    rounds[stor9].field_0 = currentEpoch
    rounds[stor9].field_1536 = 0
    genesisLockOnce = 1
}

function sub_cdf09158(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    if not genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only run after genesisStartRound and genesisLockRound is triggered'
    if not genesisLockOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only run after genesisStartRound and genesisLockRound is triggered'
    if not rounds[stor9].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only lock round after round has started'
    if block.timestamp < rounds[stor9].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only lock round after lockTimestamp'
    if rounds[stor9].field_512 > -bufferSeconds - 1:
        revert with 'NH{q', 17
    if block.timestamp > rounds[stor9].field_512 + bufferSeconds:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only lock round within bufferSeconds'
    rounds[stor9].field_768 = block.timestamp + intervalSeconds
    rounds[stor9].field_1024 = arg1
    if currentEpoch < 1:
        revert with 'NH{q', 17
    if not rounds[stor9 - 1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only end round after round has locked'
    if block.timestamp < rounds[stor9 - 1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only end round after closeTimestamp'
    if rounds[stor9 - 1].field_768 > -bufferSeconds - 1:
        revert with 'NH{q', 17
    if block.timestamp > rounds[stor9 - 1].field_768 + bufferSeconds:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only end round within bufferSeconds'
    rounds[stor9 - 1].field_1280 = arg1
    if rounds[stor9 - 1].field_1024 != rounds[stor9 - 1].field_1280:
        rounds[stor9 - 1].field_2816 = 1
    if currentEpoch < 1:
        revert with 'NH{q', 17
    if rounds[stor9 - 1].field_2304:
        revert with 0, 'Rewards calculated'
    if rounds[stor9 - 1].field_2560:
        revert with 0, 'Rewards calculated'
    if rounds[stor9 - 1].field_1280 > rounds[stor9 - 1].field_1024:
        if rounds[stor9 - 1].field_1536 and treasuryFee > -1 / rounds[stor9 - 1].field_1536:
            revert with 'NH{q', 17
        if rounds[stor9 - 1].field_1536 < rounds[stor9 - 1].field_1536 * treasuryFee / 10000:
            revert with 'NH{q', 17
        rounds[stor9 - 1].field_2304 = rounds[stor9 - 1].field_1792
        rounds[stor9 - 1].field_2560 = rounds[stor9 - 1].field_1536 - (rounds[stor9 - 1].field_1536 * treasuryFee / 10000)
        if treasuryAmount > -(rounds[stor9 - 1].field_1536 * treasuryFee / 10000) - 1:
            revert with 'NH{q', 17
        treasuryAmount += rounds[stor9 - 1].field_1536 * treasuryFee / 10000
    else:
        if rounds[stor9 - 1].field_1280 >= rounds[stor9 - 1].field_1024:
            rounds[stor9 - 1].field_2304 = 0
            rounds[stor9 - 1].field_2560 = 0
            if treasuryAmount > -rounds[stor9 - 1].field_1536 - 1:
                revert with 'NH{q', 17
            treasuryAmount += rounds[stor9 - 1].field_1536
        else:
            if rounds[stor9 - 1].field_1536 and treasuryFee > -1 / rounds[stor9 - 1].field_1536:
                revert with 'NH{q', 17
            if rounds[stor9 - 1].field_1536 < rounds[stor9 - 1].field_1536 * treasuryFee / 10000:
                revert with 'NH{q', 17
            rounds[stor9 - 1].field_2304 = rounds[stor9 - 1].field_2048
            rounds[stor9 - 1].field_2560 = rounds[stor9 - 1].field_1536 - (rounds[stor9 - 1].field_1536 * treasuryFee / 10000)
            if treasuryAmount > -(rounds[stor9 - 1].field_1536 * treasuryFee / 10000) - 1:
                revert with 'NH{q', 17
            treasuryAmount += rounds[stor9 - 1].field_1536 * treasuryFee / 10000
    if currentEpoch > -2:
        revert with 'NH{q', 17
    currentEpoch++
    if not genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run after genesisStartRound is triggered'
    if currentEpoch < 2:
        revert with 'NH{q', 17
    if not rounds[stor9 - 2].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only start round after round n-2 has ended'
    if currentEpoch < 2:
        revert with 'NH{q', 17
    if block.timestamp < rounds[stor9 - 2].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only start new round after round n-2 closeTimestamp'
    rounds[stor9].field_256 = block.timestamp
    if block.timestamp > -intervalSeconds - 1:
        revert with 'NH{q', 17
    rounds[stor9].field_512 = block.timestamp + intervalSeconds
    if intervalSeconds > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if block.timestamp > -(2 * intervalSeconds) - 1:
        revert with 'NH{q', 17
    rounds[stor9].field_768 = block.timestamp + (2 * intervalSeconds)
    rounds[stor9].field_0 = currentEpoch
    rounds[stor9].field_1536 = 0
}

function claim(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'Proxy contract not allowed'
    idx = 0
    s = 0
    while idx < arg1.length:
        if not rounds[cd[((32 * idx) + arg1 + 36)]].field_256:
            revert with 0, 'Round has not started'
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if block.timestamp <= rounds[cd[((32 * idx) + arg1 + 36)]].field_768:
            revert with 0, 'Round has not ended'
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = msg.sender
        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 10)
        if not rounds[cd[((32 * idx) + arg1 + 36)]].field_2816:
            _103 = mem[64]
            mem[64] = mem[64] + 96
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
                revert with 'NH{q', 33
            mem[_103] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0
            mem[_103 + 32] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256
            mem[_103 + 64] = bool(ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512)
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 11
            _110 = mem[64]
            mem[64] = mem[64] + 384
            mem[_110] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
            mem[_110 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
            mem[_110 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
            mem[_110 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
            mem[_110 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
            mem[_110 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
            mem[_110 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
            mem[_110 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
            mem[_110 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
            mem[_110 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
            mem[_110 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
            mem[_110 + 352] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_2816)
            if rounds[cd[((32 * idx) + arg1 + 36)]].field_2816:
                revert with 0, 'Not eligible for refund'
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512:
                revert with 0, 'Not eligible for refund'
            if rounds[cd[((32 * idx) + arg1 + 36)]].field_768 > -bufferSeconds - 1:
                revert with 'NH{q', 17
            if block.timestamp <= rounds[cd[((32 * idx) + arg1 + 36)]].field_768 + bufferSeconds:
                revert with 0, 'Not eligible for refund'
            if not ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256:
                revert with 0, 'Not eligible for refund'
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = msg.sender
            mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 10)
            ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512 = 1
            if s > -ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256
            continue 
        _106 = mem[64]
        mem[64] = mem[64] + 96
        if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
            revert with 'NH{q', 33
        mem[_106] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0
        mem[_106 + 32] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256
        mem[_106 + 64] = bool(ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512)
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 11
        _113 = mem[64]
        mem[64] = mem[64] + 384
        mem[_113] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_113 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_113 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[_113 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
        mem[_113 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
        mem[_113 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
        mem[_113 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
        mem[_113 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
        mem[_113 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
        mem[_113 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
        mem[_113 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
        mem[_113 + 352] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_2816)
        if rounds[cd[((32 * idx) + arg1 + 36)]].field_1024 == rounds[cd[((32 * idx) + arg1 + 36)]].field_1280:
            revert with 0, 'Not eligible for claim'
        if not rounds[cd[((32 * idx) + arg1 + 36)]].field_2816:
            revert with 0, 'Not eligible for claim'
        if not ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256:
            revert with 0, 'Not eligible for claim'
        if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512:
            revert with 0, 'Not eligible for claim'
        if rounds[cd[((32 * idx) + arg1 + 36)]].field_1280 <= rounds[cd[((32 * idx) + arg1 + 36)]].field_1024:
            if rounds[cd[((32 * idx) + arg1 + 36)]].field_1280 >= rounds[cd[((32 * idx) + arg1 + 36)]].field_1024:
                revert with 0, 'Not eligible for claim'
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
                revert with 'NH{q', 33
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != 1:
                revert with 0, 'Not eligible for claim'
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 11
            _164 = mem[64]
            mem[64] = mem[64] + 384
            mem[_164] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
            mem[_164 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
            mem[_164 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
            mem[_164 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
            mem[_164 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
            mem[_164 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
            mem[_164 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
            mem[_164 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
            mem[_164 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
            mem[_164 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
            mem[_164 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
            mem[_164 + 352] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_2816)
        else:
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
                revert with 'NH{q', 33
            if not ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 11
                _154 = mem[64]
                mem[64] = mem[64] + 384
                mem[_154] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
                mem[_154 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
                mem[_154 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
                mem[_154 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
                mem[_154 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
                mem[_154 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
                mem[_154 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
                mem[_154 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
                mem[_154 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
                mem[_154 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
                mem[_154 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
                mem[_154 + 352] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_2816)
            else:
                if rounds[cd[((32 * idx) + arg1 + 36)]].field_1280 >= rounds[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    revert with 0, 'Not eligible for claim'
                if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
                    revert with 'NH{q', 33
                if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != 1:
                    revert with 0, 'Not eligible for claim'
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 11
                _174 = mem[64]
                mem[64] = mem[64] + 384
                mem[_174] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
                mem[_174 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
                mem[_174 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
                mem[_174 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
                mem[_174 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
                mem[_174 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
                mem[_174 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
                mem[_174 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
                mem[_174 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
                mem[_174 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
                mem[_174 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
                mem[_174 + 352] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_2816)
        if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 and rounds[cd[((32 * idx) + arg1 + 36)]].field_2560 > -1 / ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if not rounds[cd[((32 * idx) + arg1 + 36)]].field_2304:
            revert with 'NH{q', 18
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = msg.sender
        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 10)
        ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512 = 1
        if s > -(ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 * rounds[cd[((32 * idx) + arg1 + 36)]].field_2560 / rounds[cd[((32 * idx) + arg1 + 36)]].field_2304) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 * rounds[cd[((32 * idx) + arg1 + 36)]].field_2560 / rounds[cd[((32 * idx) + arg1 + 36)]].field_2304)
        continue 
    if s > 0:
        call msg.sender with:
           value s wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    stor1 = 1
}

function getUserRounds(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[0] = arg1
    mem[32] = 12
    if userRoundsLength[address(arg1)] < arg2:
        revert with 'NH{q', 17
    if arg3 <= userRoundsLength[address(arg1)] - arg2:
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg3
        if not arg3:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(32 * arg3) + 128] = arg3
            mem[64] = (64 * arg3) + 160
            if not arg3:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _188 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_188] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_188 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_188 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _188
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _169 = mem[64]
                mem[mem[64]] = 96
                _201 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _201) + 128
                _313 = mem[(32 * arg3) + 128]
                mem[_169 + (32 * _201) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _169 + (32 * _201) + 160
                while idx < _313:
                    _413 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_413 + 32]
                    mem[t + 64] = bool(mem[_413 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_169 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _169 + (32 * _201) + (96 * _313) + -mem[64] + 160
            mem[64] = (64 * arg3) + 256
            mem[var50002] = 0
            mem[var50002 + 32] = 0
            mem[var50002 + 64] = 0
            mem[var52002] = var52001
            if not var52003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _688 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_688] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_688 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_688 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _688
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _669 = mem[64]
                mem[mem[64]] = 96
                _701 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _701) + 128
                _814 = mem[(32 * arg3) + 128]
                mem[_669 + (32 * _701) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _669 + (32 * _701) + 160
                while idx < _814:
                    _913 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_913 + 32]
                    mem[t + 64] = bool(mem[_913 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_669 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _669 + (32 * _701) + (96 * _814) + -mem[64] + 160
            mem[64] = (64 * arg3) + 352
            mem[var58002] = 0
            mem[var58002 + 32] = 0
            mem[var58002 + 64] = 0
            mem[var60002] = var60001
            if not var60003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _1188 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_1188] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1188 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1188 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _1188
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _1169 = mem[64]
                mem[mem[64]] = 96
                _1201 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1201) + 128
                _1314 = mem[(32 * arg3) + 128]
                mem[_1169 + (32 * _1201) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _1169 + (32 * _1201) + 160
                while idx < _1314:
                    _1413 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1413 + 32]
                    mem[t + 64] = bool(mem[_1413 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_1169 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _1169 + (32 * _1201) + (96 * _1314) + -mem[64] + 160
            mem[64] = (64 * arg3) + 448
            mem[var66002] = 0
            mem[var66002 + 32] = 0
            mem[var66002 + 64] = 0
            mem[var68002] = var68001
            if not var68003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _1688 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_1688] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1688 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1688 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _1688
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _1669 = mem[64]
                mem[mem[64]] = 96
                _1701 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1701) + 128
                _1814 = mem[(32 * arg3) + 128]
                mem[_1669 + (32 * _1701) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _1669 + (32 * _1701) + 160
                while idx < _1814:
                    _1913 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1913 + 32]
                    mem[t + 64] = bool(mem[_1913 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_1669 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _1669 + (32 * _1701) + (96 * _1814) + -mem[64] + 160
            mem[64] = (64 * arg3) + 544
            mem[var74002] = 0
            mem[var74002 + 32] = 0
            mem[var74002 + 64] = 0
            mem[var76002] = var76001
            if var76003 - 1:
                # nil
            else:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _2188 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_2188] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2188 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2188 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _2188
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _2169 = mem[64]
                mem[mem[64]] = 96
                _2201 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _2201) + 128
                _2314 = mem[(32 * arg3) + 128]
                mem[_2169 + (32 * _2201) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _2169 + (32 * _2201) + 160
                while idx < _2314:
                    _2413 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_2413 + 32]
                    mem[t + 64] = bool(mem[_2413 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_2169 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _2169 + (32 * _2201) + (96 * _2314) + -mem[64] + 160
        else:
            mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(32 * arg3) + 128] = arg3
            mem[64] = (64 * arg3) + 160
            if not arg3:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _192 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_192] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_192 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_192 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _192
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _172 = mem[64]
                mem[mem[64]] = 96
                _202 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _202) + 128
                _315 = mem[(32 * arg3) + 128]
                mem[_172 + (32 * _202) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _172 + (32 * _202) + 160
                while idx < _315:
                    _414 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_414 + 32]
                    mem[t + 64] = bool(mem[_414 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_172 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _172 + (32 * _202) + (96 * _315) + -mem[64] + 160
            mem[64] = (64 * arg3) + 256
            mem[var51002] = 0
            mem[var51002 + 32] = 0
            mem[var51002 + 64] = 0
            mem[var53002] = var53001
            if not var53003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _692 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_692] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_692 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_692 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _692
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _672 = mem[64]
                mem[mem[64]] = 96
                _702 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _702) + 128
                _816 = mem[(32 * arg3) + 128]
                mem[_672 + (32 * _702) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _672 + (32 * _702) + 160
                while idx < _816:
                    _914 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_914 + 32]
                    mem[t + 64] = bool(mem[_914 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_672 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _672 + (32 * _702) + (96 * _816) + -mem[64] + 160
            mem[64] = (64 * arg3) + 352
            mem[var59002] = 0
            mem[var59002 + 32] = 0
            mem[var59002 + 64] = 0
            mem[var61002] = var61001
            if not var61003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _1192 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_1192] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1192 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1192 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _1192
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _1172 = mem[64]
                mem[mem[64]] = 96
                _1202 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1202) + 128
                _1316 = mem[(32 * arg3) + 128]
                mem[_1172 + (32 * _1202) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _1172 + (32 * _1202) + 160
                while idx < _1316:
                    _1414 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1414 + 32]
                    mem[t + 64] = bool(mem[_1414 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_1172 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _1172 + (32 * _1202) + (96 * _1316) + -mem[64] + 160
            mem[64] = (64 * arg3) + 448
            mem[var67002] = 0
            mem[var67002 + 32] = 0
            mem[var67002 + 64] = 0
            mem[var69002] = var69001
            if not var69003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _1692 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_1692] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1692 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1692 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _1692
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _1672 = mem[64]
                mem[mem[64]] = 96
                _1702 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1702) + 128
                _1816 = mem[(32 * arg3) + 128]
                mem[_1672 + (32 * _1702) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _1672 + (32 * _1702) + 160
                while idx < _1816:
                    _1914 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1914 + 32]
                    mem[t + 64] = bool(mem[_1914 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_1672 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _1672 + (32 * _1702) + (96 * _1816) + -mem[64] + 160
            mem[64] = (64 * arg3) + 544
            mem[var75002] = 0
            mem[var75002 + 32] = 0
            mem[var75002 + 64] = 0
            mem[var77002] = var77001
            if var77003 - 1:
                # nil
            else:
                idx = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _2192 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_2192] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2192 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2192 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _2192
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -arg3 - 1:
                    revert with 'NH{q', 17
                _2172 = mem[64]
                mem[mem[64]] = 96
                _2202 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _2202) + 128
                _2316 = mem[(32 * arg3) + 128]
                mem[_2172 + (32 * _2202) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _2172 + (32 * _2202) + 160
                while idx < _2316:
                    _2414 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_2414 + 32]
                    mem[t + 64] = bool(mem[_2414 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_2172 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _2172 + (32 * _2202) + (96 * _2316) + -mem[64] + 160
    else:
        mem[0] = arg1
        mem[32] = 12
        if userRoundsLength[address(arg1)] < arg2:
            revert with 'NH{q', 17
        if userRoundsLength[address(arg1)] - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[96] = userRoundsLength[address(arg1)] - arg2
        if not userRoundsLength[address(arg1)] - arg2:
            if userRoundsLength[address(arg1)] - arg2 > test266151307():
                revert with 'NH{q', 65
            mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128] = userRoundsLength[address(arg1)] - arg2
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 160
            if not userRoundsLength[address(arg1)] - arg2:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _196 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_196] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_196 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_196 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _196
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _175 = mem[64]
                mem[mem[64]] = 96
                _203 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _203) + 128
                _317 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_175 + (32 * _203) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _175 + (32 * _203) + 160
                while idx < _317:
                    _415 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_415 + 32]
                    mem[t + 64] = bool(mem[_415 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_175 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _175 + (32 * _203) + (96 * _317) + -mem[64] + 160
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 256
            mem[var58002] = 0
            mem[var58002 + 32] = 0
            mem[var58002 + 64] = 0
            mem[var60002] = var60001
            if not var60003 - 1:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _696 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_696] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_696 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_696 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _696
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _675 = mem[64]
                mem[mem[64]] = 96
                _703 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _703) + 128
                _818 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_675 + (32 * _703) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _675 + (32 * _703) + 160
                while idx < _818:
                    _915 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_915 + 32]
                    mem[t + 64] = bool(mem[_915 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_675 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _675 + (32 * _703) + (96 * _818) + -mem[64] + 160
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 352
            mem[var66002] = 0
            mem[var66002 + 32] = 0
            mem[var66002 + 64] = 0
            mem[var68002] = var68001
            if not var68003 - 1:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _1196 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_1196] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1196 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1196 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _1196
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _1175 = mem[64]
                mem[mem[64]] = 96
                _1203 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1203) + 128
                _1318 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_1175 + (32 * _1203) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _1175 + (32 * _1203) + 160
                while idx < _1318:
                    _1415 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1415 + 32]
                    mem[t + 64] = bool(mem[_1415 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_1175 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _1175 + (32 * _1203) + (96 * _1318) + -mem[64] + 160
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 448
            mem[var74002] = 0
            mem[var74002 + 32] = 0
            mem[var74002 + 64] = 0
            mem[var76002] = var76001
            if not var76003 - 1:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _1696 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_1696] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1696 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1696 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _1696
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _1675 = mem[64]
                mem[mem[64]] = 96
                _1703 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1703) + 128
                _1818 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_1675 + (32 * _1703) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _1675 + (32 * _1703) + 160
                while idx < _1818:
                    _1915 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1915 + 32]
                    mem[t + 64] = bool(mem[_1915 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_1675 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _1675 + (32 * _1703) + (96 * _1818) + -mem[64] + 160
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 544
            mem[var82002] = 0
            mem[var82002 + 32] = 0
            mem[var82002 + 64] = 0
            mem[var84002] = var84001
            if var84003 - 1:
                # nil
            else:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _2196 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_2196] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2196 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2196 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _2196
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _2175 = mem[64]
                mem[mem[64]] = 96
                _2203 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _2203) + 128
                _2318 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_2175 + (32 * _2203) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _2175 + (32 * _2203) + 160
                while idx < _2318:
                    _2415 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_2415 + 32]
                    mem[t + 64] = bool(mem[_2415 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_2175 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _2175 + (32 * _2203) + (96 * _2318) + -mem[64] + 160
        else:
            mem[128 len 32 * userRoundsLength[address(arg1)] - arg2] = call.data[calldata.size len 32 * userRoundsLength[address(arg1)] - arg2]
            if userRoundsLength[address(arg1)] - arg2 > test266151307():
                revert with 'NH{q', 65
            mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128] = userRoundsLength[address(arg1)] - arg2
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 160
            if not userRoundsLength[address(arg1)] - arg2:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _200 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_200] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_200 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_200 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _200
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _178 = mem[64]
                mem[mem[64]] = 96
                _204 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_178 + 32] = (32 * _204) + 128
                _319 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_178 + (32 * _204) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _178 + (32 * _204) + 160
                while idx < _319:
                    _416 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_416 + 32]
                    mem[t + 64] = bool(mem[_416 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_178 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _178 + (32 * _204) + (96 * _319) + -mem[64] + 160
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 256
            mem[var59002] = 0
            mem[var59002 + 32] = 0
            mem[var59002 + 64] = 0
            mem[var61002] = var61001
            if not var61003 - 1:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _700 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_700] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_700 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_700 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _700
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _678 = mem[64]
                mem[mem[64]] = 96
                _704 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _704) + 128
                _820 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_678 + (32 * _704) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _678 + (32 * _704) + 160
                while idx < _820:
                    _916 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_916 + 32]
                    mem[t + 64] = bool(mem[_916 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_678 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _678 + (32 * _704) + (96 * _820) + -mem[64] + 160
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 352
            mem[var67002] = 0
            mem[var67002 + 32] = 0
            mem[var67002 + 64] = 0
            mem[var69002] = var69001
            if not var69003 - 1:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _1200 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_1200] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1200 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1200 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _1200
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _1178 = mem[64]
                mem[mem[64]] = 96
                _1204 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1204) + 128
                _1320 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_1178 + (32 * _1204) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _1178 + (32 * _1204) + 160
                while idx < _1320:
                    _1416 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1416 + 32]
                    mem[t + 64] = bool(mem[_1416 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_1178 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _1178 + (32 * _1204) + (96 * _1320) + -mem[64] + 160
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 448
            mem[var75002] = 0
            mem[var75002 + 32] = 0
            mem[var75002 + 64] = 0
            mem[var77002] = var77001
            if not var77003 - 1:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _1700 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_1700] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_1700 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_1700 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _1700
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _1678 = mem[64]
                mem[mem[64]] = 96
                _1704 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _1704) + 128
                _1820 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_1678 + (32 * _1704) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _1678 + (32 * _1704) + 160
                while idx < _1820:
                    _1916 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1916 + 32]
                    mem[t + 64] = bool(mem[_1916 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_1678 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _1678 + (32 * _1704) + (96 * _1820) + -mem[64] + 160
            mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 544
            mem[var83002] = 0
            mem[var83002 + 32] = 0
            mem[var83002 + 64] = 0
            mem[var85002] = var85001
            if var85003 - 1:
                # nil
            else:
                idx = 0
                while idx < userRoundsLength[address(arg1)] - arg2:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 12)) + arg2 + idx], 10)
                    _2200 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_2200] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_0
                    mem[_2200 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_256
                    mem[_2200 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor12', 12)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _2200
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > -userRoundsLength[address(arg1)] + arg2 - 1:
                    revert with 'NH{q', 17
                _2178 = mem[64]
                mem[mem[64]] = 96
                _2204 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _2204) + 128
                _2320 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                mem[_2178 + (32 * _2204) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
                idx = 0
                s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
                t = _2178 + (32 * _2204) + 160
                while idx < _2320:
                    _2416 = mem[s]
                    if mem[mem[s]] >= 2:
                        revert with 'NH{q', 33
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_2416 + 32]
                    mem[t + 64] = bool(mem[_2416 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                mem[_2178 + 64] = userRoundsLength[address(arg1)]
                return memory
                  from mem[64]
                   len _2178 + (32 * _2204) + (96 * _2320) + -mem[64] + 160
}



}
