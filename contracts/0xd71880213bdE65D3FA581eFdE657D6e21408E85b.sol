contract main {




// =====================  Runtime code  =====================


const TOTAL_RATE = 100


uint8 stor0; offset 160
address owner;
mapping of struct rounds;
mapping of struct ledger;
uint256 currentEpoch;
uint256 intervalTime;
uint256 bufferTime;
address adminAddress;
address operatorAddress;
uint256 treasuryAmount;
address stor10;
uint256 oracleLatestRoundId;
uint256 rewardRate;
uint256 treasuryRate;
uint256 minBetAmount;
uint256 oracleUpdateAllowance;
uint8 genesisStartOnce;
uint8 genesisLockOnce; offset 8
uint16 stor16;
uint256 sub_529a2d8d;

function genesisLockOnce() {
    return bool(genesisLockOnce)
}

function operatorAddress() {
    return operatorAddress
}

function treasuryAmount() {
    return treasuryAmount
}

function sub_529a2d8d(?) {
    return sub_529a2d8d
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
           bool(rounds[arg1].field_2816)
}

function owner() {
    return owner
}

function bufferTime() {
    return bufferTime
}

function userRounds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userRounds[arg1]
    return userRounds[arg1][arg2]
}

function treasuryRate() {
    return treasuryRate
}

function oracleLatestRoundId() {
    return oracleLatestRoundId
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

function intervalTime() {
    return intervalTime
}

function _fallback() payable {
    revert
}

function sub_71604bdb(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'operator: wut?'
    sub_529a2d8d = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setIntervalTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    intervalTime = arg1
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

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    stor10 = arg1
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
    stor16 = 0
    stor0 = 0
    emit Unpaused(msg.sender);
    emit Unpause(currentEpoch);
}

function setBufferTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if arg1 > intervalTime:
        revert with 0, 'Cannot be more than intervalTime'
    bufferTime = arg1
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

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    require arg1 > 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(0, arg1);
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
    if rounds[arg1].field_2816:
        return not bool(rounds[arg1].field_2816)
    if bufferTime + rounds[arg1].field_768 < rounds[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= bufferTime + rounds[arg1].field_768:
        return (block.timestamp > bufferTime + rounds[arg1].field_768)
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
                    0x44726577617264526174652063616e6e6f74206265206d6f7265207468616e20313030,
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
                    0x257472656173757279526174652063616e6e6f74206265206d6f7265207468616e20313030,
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
                    0x6443616e206f6e6c792072756e2067656e657369735374617274526f756e64206f6e63,
                    mem[199 len 29]
    currentEpoch++
    rounds[stor4 + 1].field_256 = block.timestamp
    if intervalTime + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_512 = intervalTime + block.timestamp
    if (2 * intervalTime) + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_768 = (2 * intervalTime) + block.timestamp
    rounds[stor4 + 1].field_0 = currentEpoch + 1
    rounds[stor4 + 1].field_1536 = 0
    emit StartRound(block.timestamp, currentEpoch + 1);
    genesisStartOnce = 1
}

function claimable(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ledger[arg1][address(arg2)].field_0 <= 1
    if rounds[arg1].field_1280 == rounds[arg1].field_1024:
        return 0
    if not rounds[arg1].field_2816:
        return bool(rounds[arg1].field_2816)
    if rounds[arg1].field_1280 <= rounds[arg1].field_1024:
        if rounds[arg1].field_1280 >= rounds[arg1].field_1024:
            return (rounds[arg1].field_1280 < rounds[arg1].field_1024)
        if ledger[arg1][address(arg2)].field_0 <= 1:
            return (ledger[arg1][address(arg2)].field_0 == 1)
    else:
        if ledger[arg1][address(arg2)].field_0 <= 1:
            if not ledger[arg1][address(arg2)].field_0:
                return not ledger[arg1][address(arg2)].field_0
            if rounds[arg1].field_1280 >= rounds[arg1].field_1024:
                return (rounds[arg1].field_1280 < rounds[arg1].field_1024)
            if ledger[arg1][address(arg2)].field_0 <= 1:
                return (ledger[arg1][address(arg2)].field_0 == 1)
    revert
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
    if block.timestamp <= rounds[stor4].field_256:
        revert with 0, 'Round not bettable'
    if block.timestamp >= rounds[stor4].field_512:
        revert with 0, 'Round not bettable'
    if msg.value < minBetAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6542657420616d6f756e74206d7573742062652067726561746572207468616e206d696e426574416d6f756e,
                    mem[208 len 20]
    if ledger[stor4][msg.sender].field_256:
        revert with 0, 'Can only bet once per round'
    if msg.value + rounds[stor4].field_1536 < rounds[stor4].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4].field_1536 += msg.value
    if msg.value + rounds[stor4].field_2048 < rounds[stor4].field_2048:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4].field_2048 += msg.value
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
    if block.timestamp <= rounds[stor4].field_256:
        revert with 0, 'Round not bettable'
    if block.timestamp >= rounds[stor4].field_512:
        revert with 0, 'Round not bettable'
    if msg.value < minBetAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6542657420616d6f756e74206d7573742062652067726561746572207468616e206d696e426574416d6f756e,
                    mem[208 len 20]
    if ledger[stor4][msg.sender].field_256:
        revert with 0, 'Can only bet once per round'
    if msg.value + rounds[stor4].field_1536 < rounds[stor4].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4].field_1536 += msg.value
    if msg.value + rounds[stor4].field_1792 < rounds[stor4].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4].field_1792 += msg.value
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
                    0x6543616e206f6e6c792072756e2067656e657369734c6f636b526f756e64206f6e63,
                    mem[198 len 30]
    if bufferTime + rounds[stor4].field_512 < rounds[stor4].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > bufferTime + rounds[stor4].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2543616e206f6e6c79206c6f636b20726f756e642077697468696e2062756666657254696d,
                    mem[201 len 27]
    require ext_code.size(stor10)
    staticcall stor10.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not rounds[stor4].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe43616e206f6e6c79206c6f636b20726f756e6420616674657220726f756e642068617320737461727465,
                    ext_call.return_data[111 len 21]
    if block.timestamp < rounds[stor4].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6543616e206f6e6c79206c6f636b20726f756e64206166746572206c6f636b54696d,
                    ext_call.return_data[102 len 30]
    if bufferTime + rounds[stor4].field_512 < rounds[stor4].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > bufferTime + rounds[stor4].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2543616e206f6e6c79206c6f636b20726f756e642077697468696e2062756666657254696d,
                    ext_call.return_data[105 len 27]
    rounds[stor4].field_1024 = ext_call.return_data[32]
    emit LockRound(block.timestamp, ext_call.return_data[32], currentEpoch);
    currentEpoch++
    rounds[stor4 + 1].field_256 = block.timestamp
    if intervalTime + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_512 = intervalTime + block.timestamp
    if (2 * intervalTime) + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_768 = (2 * intervalTime) + block.timestamp
    rounds[stor4 + 1].field_0 = currentEpoch + 1
    rounds[stor4 + 1].field_1536 = 0
    emit StartRound(block.timestamp, currentEpoch + 1);
    genesisLockOnce = 1
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if not rounds[arg1].field_256:
        revert with 0, 'Round has not started'
    if block.timestamp <= rounds[arg1].field_768:
        revert with 0, 'Round has not ended'
    if ledger[arg1][msg.sender].field_512:
        revert with 0, 'Rewards claimed'
    require ledger[arg1][address(msg.sender)].field_0 <= 1
    if not rounds[arg1].field_2816:
        if rounds[arg1].field_2816:
            revert with 0, 'Not eligible for refund'
        if bufferTime + rounds[arg1].field_768 < rounds[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp <= bufferTime + rounds[arg1].field_768:
            revert with 0, 'Not eligible for refund'
        if not ledger[arg1][address(msg.sender)].field_256:
            revert with 0, 'Not eligible for refund'
        ledger[arg1][msg.sender].field_512 = 1
        call msg.sender with:
           value ledger[arg1][msg.sender].field_256 wei
             gas 23000 wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0x655472616e7366657248656c7065723a20424e425f5452414e534645525f4641494c45, mem[679 len 29]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x655472616e7366657248656c7065723a20424e425f5452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 680 len 29]
        ('bool', 'ext_call.success')
        emit Claim(ledger[arg1][msg.sender].field_256, msg.sender, arg1);
    else:
        if rounds[arg1].field_1280 == rounds[arg1].field_1024:
            revert with 0, 'Not eligible for claim'
        if not rounds[arg1].field_2816:
            revert with 0, 'Not eligible for claim'
        if rounds[arg1].field_1280 <= rounds[arg1].field_1024:
            if rounds[arg1].field_1280 >= rounds[arg1].field_1024:
                revert with 0, 'Not eligible for claim'
            require ledger[arg1][address(msg.sender)].field_0 <= 1
            if ledger[arg1][address(msg.sender)].field_0 != 1:
                revert with 0, 'Not eligible for claim'
        else:
            require ledger[arg1][address(msg.sender)].field_0 <= 1
            if ledger[arg1][address(msg.sender)].field_0:
                if rounds[arg1].field_1280 >= rounds[arg1].field_1024:
                    revert with 0, 'Not eligible for claim'
                require ledger[arg1][address(msg.sender)].field_0 <= 1
                if ledger[arg1][address(msg.sender)].field_0 != 1:
                    revert with 0, 'Not eligible for claim'
        if not ledger[arg1][msg.sender].field_256:
            if rounds[arg1].field_2304 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rounds[arg1].field_2304
            ledger[arg1][msg.sender].field_512 = 1
            call msg.sender with:
               value 0 / rounds[arg1].field_2304 wei
                 gas 23000 wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x655472616e7366657248656c7065723a20424e425f5452414e534645525f4641494c45, mem[1063 len 29]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x655472616e7366657248656c7065723a20424e425f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 1064 len 29]
            ('bool', 'ext_call.success')
            emit Claim((0 / rounds[arg1].field_2304), msg.sender, arg1);
        else:
            if rounds[arg1].field_2560 * ledger[arg1][msg.sender].field_256 / ledger[arg1][msg.sender].field_256 != rounds[arg1].field_2560:
                revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
            if rounds[arg1].field_2304 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rounds[arg1].field_2304
            ledger[arg1][msg.sender].field_512 = 1
            call msg.sender with:
               value rounds[arg1].field_2560 * ledger[arg1][msg.sender].field_256 / rounds[arg1].field_2304 wei
                 gas 23000 wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x655472616e7366657248656c7065723a20424e425f5452414e534645525f4641494c45, mem[1063 len 29]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x655472616e7366657248656c7065723a20424e425f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 1064 len 29]
            ('bool', 'ext_call.success')
            emit Claim((rounds[arg1].field_2560 * ledger[arg1][msg.sender].field_256 / rounds[arg1].field_2304), msg.sender, arg1);
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
                    0x6543616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e6420616e642067656e657369734c6f636b526f756e64206973207472696767657265,
                    mem[234 len 26]
    if not genesisLockOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6543616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e6420616e642067656e657369734c6f636b526f756e64206973207472696767657265,
                    mem[234 len 26]
    require ext_code.size(stor10)
    staticcall stor10.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not rounds[stor4].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe43616e206f6e6c79206c6f636b20726f756e6420616674657220726f756e642068617320737461727465,
                    ext_call.return_data[111 len 21]
    if block.timestamp < rounds[stor4].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6543616e206f6e6c79206c6f636b20726f756e64206166746572206c6f636b54696d,
                    ext_call.return_data[102 len 30]
    if bufferTime + rounds[stor4].field_512 < rounds[stor4].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > bufferTime + rounds[stor4].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2543616e206f6e6c79206c6f636b20726f756e642077697468696e2062756666657254696d,
                    ext_call.return_data[105 len 27]
    rounds[stor4].field_1024 = ext_call.return_data[32]
    emit LockRound(block.timestamp, ext_call.return_data[32], currentEpoch);
    if not rounds[stor4 - 1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7743616e206f6e6c7920656e6420726f756e6420616674657220726f756e6420686173206c6f636b65,
                    ext_call.return_data[109 len 23]
    if block.timestamp < rounds[stor4 - 1].field_768:
        revert with 0, 'Can only end round after endTime'
    if bufferTime + rounds[stor4 - 1].field_768 < rounds[stor4 - 1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > bufferTime + rounds[stor4 - 1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6443616e206f6e6c7920656e6420726f756e642077697468696e2062756666657254696d,
                    ext_call.return_data[104 len 28]
    rounds[stor4 - 1].field_1280 = ext_call.return_data[32]
    rounds[stor4 - 1].field_2816 = 1
    emit EndRound(block.timestamp, ext_call.return_data[32], currentEpoch - 1);
    if treasuryRate + rewardRate < rewardRate:
        revert with 0, 'SafeMath: addition overflow'
    if treasuryRate + rewardRate != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x747265776172645261746520616e6420747265617375727952617465206d7573742061646420757020746f20544f54414c5f524154,
                    ext_call.return_data[121 len 11]
    if rounds[stor4 - 1].field_2304:
        revert with 0, 'Rewards calculated'
    if rounds[stor4 - 1].field_2560:
        revert with 0, 'Rewards calculated'
    if rounds[stor4 - 1].field_1280 > rounds[stor4 - 1].field_1024:
        if not rounds[stor4 - 1].field_1536:
            if not rounds[stor4 - 1].field_1536:
                rounds[stor4 - 1].field_2304 = rounds[stor4 - 1].field_1792
                rounds[stor4 - 1].field_2560 = 0
                if treasuryAmount < treasuryAmount:
                    revert with 0, 'SafeMath: addition overflow'
                emit RewardsCalculated(rounds[stor4 - 1].field_1792, 0, 0, currentEpoch - 1);
            else:
                if treasuryRate * rounds[stor4 - 1].field_1536 / rounds[stor4 - 1].field_1536 != treasuryRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                rounds[stor4 - 1].field_2304 = rounds[stor4 - 1].field_1792
                rounds[stor4 - 1].field_2560 = 0
                if (treasuryRate * rounds[stor4 - 1].field_1536 / 100) + treasuryAmount < treasuryAmount:
                    revert with 0, 'SafeMath: addition overflow'
                treasuryAmount += treasuryRate * rounds[stor4 - 1].field_1536 / 100
                emit RewardsCalculated(rounds[stor4 - 1].field_1792, 0, treasuryRate * rounds[stor4 - 1].field_1536 / 100, currentEpoch - 1);
        else:
            if rewardRate * rounds[stor4 - 1].field_1536 / rounds[stor4 - 1].field_1536 != rewardRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 31]
            if not rounds[stor4 - 1].field_1536:
                rounds[stor4 - 1].field_2304 = rounds[stor4 - 1].field_1792
                rounds[stor4 - 1].field_2560 = rewardRate * rounds[stor4 - 1].field_1536 / 100
                if treasuryAmount < treasuryAmount:
                    revert with 0, 'SafeMath: addition overflow'
                emit RewardsCalculated(rounds[stor4 - 1].field_1792, rewardRate * rounds[stor4 - 1].field_1536 / 100, 0, currentEpoch - 1);
            else:
                if treasuryRate * rounds[stor4 - 1].field_1536 / rounds[stor4 - 1].field_1536 != treasuryRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                rounds[stor4 - 1].field_2304 = rounds[stor4 - 1].field_1792
                rounds[stor4 - 1].field_2560 = rewardRate * rounds[stor4 - 1].field_1536 / 100
                if (treasuryRate * rounds[stor4 - 1].field_1536 / 100) + treasuryAmount < treasuryAmount:
                    revert with 0, 'SafeMath: addition overflow'
                treasuryAmount += treasuryRate * rounds[stor4 - 1].field_1536 / 100
                emit RewardsCalculated(rounds[stor4 - 1].field_1792, rewardRate * rounds[stor4 - 1].field_1536 / 100, treasuryRate * rounds[stor4 - 1].field_1536 / 100, currentEpoch - 1);
    else:
        if rounds[stor4 - 1].field_1280 >= rounds[stor4 - 1].field_1024:
            rounds[stor4 - 1].field_2304 = 0
            rounds[stor4 - 1].field_2560 = 0
            if rounds[stor4 - 1].field_1536 + treasuryAmount < treasuryAmount:
                revert with 0, 'SafeMath: addition overflow'
            treasuryAmount += rounds[stor4 - 1].field_1536
            emit RewardsCalculated(0, 0, rounds[stor4 - 1].field_1536, currentEpoch - 1);
        else:
            if not rounds[stor4 - 1].field_1536:
                if not rounds[stor4 - 1].field_1536:
                    rounds[stor4 - 1].field_2304 = rounds[stor4 - 1].field_2048
                    rounds[stor4 - 1].field_2560 = 0
                    if treasuryAmount < treasuryAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    emit RewardsCalculated(rounds[stor4 - 1].field_2048, 0, 0, currentEpoch - 1);
                else:
                    if treasuryRate * rounds[stor4 - 1].field_1536 / rounds[stor4 - 1].field_1536 != treasuryRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 31]
                    rounds[stor4 - 1].field_2304 = rounds[stor4 - 1].field_2048
                    rounds[stor4 - 1].field_2560 = 0
                    if (treasuryRate * rounds[stor4 - 1].field_1536 / 100) + treasuryAmount < treasuryAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    treasuryAmount += treasuryRate * rounds[stor4 - 1].field_1536 / 100
                    emit RewardsCalculated(rounds[stor4 - 1].field_2048, 0, treasuryRate * rounds[stor4 - 1].field_1536 / 100, currentEpoch - 1);
            else:
                if rewardRate * rounds[stor4 - 1].field_1536 / rounds[stor4 - 1].field_1536 != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if not rounds[stor4 - 1].field_1536:
                    rounds[stor4 - 1].field_2304 = rounds[stor4 - 1].field_2048
                    rounds[stor4 - 1].field_2560 = rewardRate * rounds[stor4 - 1].field_1536 / 100
                    if treasuryAmount < treasuryAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    emit RewardsCalculated(rounds[stor4 - 1].field_2048, rewardRate * rounds[stor4 - 1].field_1536 / 100, 0, currentEpoch - 1);
                else:
                    if treasuryRate * rounds[stor4 - 1].field_1536 / rounds[stor4 - 1].field_1536 != treasuryRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 31]
                    rounds[stor4 - 1].field_2304 = rounds[stor4 - 1].field_2048
                    rounds[stor4 - 1].field_2560 = rewardRate * rounds[stor4 - 1].field_1536 / 100
                    if (treasuryRate * rounds[stor4 - 1].field_1536 / 100) + treasuryAmount < treasuryAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    treasuryAmount += treasuryRate * rounds[stor4 - 1].field_1536 / 100
                    emit RewardsCalculated(rounds[stor4 - 1].field_2048, rewardRate * rounds[stor4 - 1].field_1536 / 100, treasuryRate * rounds[stor4 - 1].field_1536 / 100, currentEpoch - 1);
    currentEpoch++
    if not genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6443616e206f6e6c792072756e2061667465722067656e657369735374617274526f756e64206973207472696767657265,
                    ext_call.return_data[117 len 15]
    if not rounds[stor4 - 1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7343616e206f6e6c7920737461727420726f756e6420616674657220726f756e64206e2d322068617320656e6465,
                    ext_call.return_data[114 len 18]
    if block.timestamp < rounds[stor4 - 1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6443616e206f6e6c79207374617274206e657720726f756e6420616674657220726f756e64206e2d3220656e6454696d,
                    ext_call.return_data[116 len 16]
    rounds[stor4 + 1].field_256 = block.timestamp
    if intervalTime + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_512 = intervalTime + block.timestamp
    if (2 * intervalTime) + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    rounds[stor4 + 1].field_768 = (2 * intervalTime) + block.timestamp
    rounds[stor4 + 1].field_0 = currentEpoch + 1
    rounds[stor4 + 1].field_1536 = 0
    emit StartRound(block.timestamp, currentEpoch + 1);
}



}
