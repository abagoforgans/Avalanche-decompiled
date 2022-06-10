contract main {




// =====================  Runtime code  =====================


#
#  - enterArena(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4)
#  - restartRankedSeason()
#  - withdrawFromArena(uint256 arg1)
#  - performDuels(uint256[] arg1)
#  - reRollOpponent(uint256 arg1)
#
const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint32 stor101;
address gameAddress;
uint256 stor101;
address charactersAddress;
uint256 stor102;
address weaponsAddress;
uint256 stor103;
address shieldsAddress;
address skillTokenAddress;
uint256 stor105;
address randomsAddress;
uint8 stor107; offset 64
uint8 stor107; offset 184
uint64 stor107; offset 72
uint64 stor107; offset 128
uint64 stor107;
uint64 stor107; offset 192
uint128 stor107;
uint128 stor107; offset 128
uint256 stor107;
bool stor108; offset 256
uint8 stor108;
uint8 wageringFactor; offset 8
uint8 winningPoints; offset 16
uint8 losingPoints; offset 24
uint8 stor108; offset 32
uint256 reRollFeePercent;
uint256 withdrawFeePercent;
uint256 currentRankedSeason;
uint256 seasonStartedAt;
uint256 seasonDuration;
uint256 decisionSeconds;
uint256 stor115; offset 32
uint256 gameCofferTaxDue;
big480 stor115;
bool stor116;
uint256 arenaAccess;
array of struct prizePercentages;
array of uint256 stor118;
mapping of uint256 stor119;
mapping of struct fighterByCharacter;
mapping of struct matchByFinder;
mapping of uint8 stor122;
mapping of uint8 stor123;
mapping of uint8 stor124;
mapping of uint8 stor125;
mapping of uint256 finderByOpponent;
mapping of uint8 previousTierByCharacter;
mapping of uint256 excessWagerByCharacter;
mapping of uint256 seasonByCharacter;
mapping of struct rankingPointsByCharacter;
mapping of uint256 rankingsPoolByTier;
mapping of struct playerPrizePoolRewards;
array of uint256 stor133;
array of struct matchablePlayerCount;
mapping of uint256 stor336492626609784167942478;
uint8 stor5837;
array of uint256 stor69906322783795604316746119018710703531583142191673713777338657051469223861738;
uint256 storA16C;

function seasonByCharacter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return seasonByCharacter[arg1]
}

function winningPoints() payable {
    return winningPoints
}

function fighterByCharacter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return fighterByCharacter[arg1].field_0, 
           fighterByCharacter[arg1].field_256,
           fighterByCharacter[arg1].field_512,
           fighterByCharacter[arg1].field_768,
           bool(fighterByCharacter[arg1].field_1024)
}

function isDefending(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor125[arg1])
}

function matchByFinder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return matchByFinder[arg1].field_0, matchByFinder[arg1].field_256, matchByFinder[arg1].field_512
}

function finderByOpponent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return finderByOpponent[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function wageringFactor() payable {
    return wageringFactor
}

function decisionSeconds() payable {
    return decisionSeconds
}

function rankingPointsByCharacter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return rankingPointsByCharacter[arg1].field_0
}

function withdrawFeePercent() payable {
    return withdrawFeePercent
}

function losingPoints() payable {
    return losingPoints
}

function getOpponent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return matchByFinder[arg1].field_256
}

function getPlayerPrizePoolRewards() payable {
    return playerPrizePoolRewards[msg.sender].field_0
}

function isWeaponInArena(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor123[arg1])
}

function seasonStartedAt() payable {
    return seasonStartedAt
}

function arenaAccess() payable {
    return uint256(arenaAccess)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function gameCofferTaxDue() payable {
    return gameCofferTaxDue
}

function shields() payable {
    return shieldsAddress
}

function prizePercentages(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < prizePercentages.length
    return prizePercentages[arg1].field_0
}

function excessWagerByCharacter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return excessWagerByCharacter[arg1]
}

function getMatchablePlayerCount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(charactersAddress))
    staticcall address(charactersAddress).getLevel(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0
}

function weapons() payable {
    return address(weaponsAddress)
}

function randoms() payable {
    return randomsAddress
}

function game() payable {
    return address(gameAddress)
}

function currentRankedSeason() payable {
    return currentRankedSeason
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function isCharacterInArena(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor122[arg1])
}

function characters() payable {
    return address(charactersAddress)
}

function skillToken() payable {
    return address(skillTokenAddress)
}

function isShieldInArena(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor124[arg1])
}

function reRollFeePercent() payable {
    return reRollFeePercent
}

function seasonDuration() payable {
    return seasonDuration
}

function previousTierByCharacter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return previousTierByCharacter[arg1]
}

function rankingsPoolByTier(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return rankingsPoolByTier[arg1]
}

function _fallback() payable {
    revert
}

function isCharacterInDuel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor119[arg1]:
        return bool(stor119[arg1])
    return bool(stor125[arg1])
}

function setLosingPoints(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    losingPoints = arg1
}

function setWinningPoints(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    winningPoints = arg1
}

function setWageringFactor(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    wageringFactor = arg1
}

function setSeasonDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    seasonDuration = arg1
}

function setDecisionSeconds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    decisionSeconds = arg1
}

function setArenaAccess(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    uint256(arenaAccess) = arg1
}

function setReRollFeePercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    reRollFeePercent = arg1
}

function setWithdrawFeePercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    withdrawFeePercent = arg1
}

function setRankingsPoolTaxPercent(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    uint8(stor108.field_0) = arg1
}

function setMaxTopCharactersPerTier(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    uint8(stor108.field_32) = arg1
}

function setPrizePercentage(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    require arg1 < prizePercentages.length
    prizePercentages[arg1].field_0 = arg2
}

function isCharacterWithinDecisionTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if decisionSeconds + matchByFinder[arg1].field_512 < matchByFinder[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (decisionSeconds + matchByFinder[arg1].field_512 > block.timestamp)
}

function setRankingPoints(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    rankingPointsByCharacter[arg1].field_0 = arg2
    rankingPointsByCharacter[arg1].field_8 = 0
}

function getArenaTier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(charactersAddress))
    staticcall address(charactersAddress).getLevel(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint8(ext_call.return_data[31 len 1] / 10)
}

function isCharacterUnderAttack(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if finderByOpponent[arg1]:
        if decisionSeconds + matchByFinder[stor126[arg1]].field_512 < matchByFinder[stor126[arg1]].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return (decisionSeconds + matchByFinder[stor126[arg1]].field_512 > block.timestamp)
    if arg1 != storA16C:
        return 0
    if decisionSeconds + matchByFinder[0].field_512 < matchByFinder[0].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (decisionSeconds + matchByFinder[0].field_512 > block.timestamp)
}

function getDuelQueue() payable {
    require stor118.length <= test266151307()
    if stor118.length:
        mem[128 len 32 * stor118.length] = call.data[calldata.size len 32 * stor118.length]
    idx = 0
    while idx < stor118.length:
        mem[0] = 118
        require idx < stor118.length
        mem[(32 * idx) + 128] = stor118[idx]
        idx = idx + 1
        continue 
    mem[(32 * stor118.length) + 192 len floor32(stor118.length)] = mem[128 len floor32(stor118.length)]
    return Array(len=stor118.length, data=mem[128 len floor32(stor118.length)], mem[(32 * stor118.length) + floor32(stor118.length) + 192 len (32 * stor118.length) - floor32(stor118.length)]), 
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function getPrizePercentages() payable {
    if not prizePercentages.length:
        mem[(32 * prizePercentages.length) + 128] = 32
        mem[(32 * prizePercentages.length) + 160] = prizePercentages.length
        mem[(32 * prizePercentages.length) + 192 len floor32(prizePercentages.length)] = mem[128 len floor32(prizePercentages.length)]
        return memory
          from (32 * prizePercentages.length) + 128
           len (96 * prizePercentages.length) + 64
    mem[128] = uint256(prizePercentages.field_0)
    idx = 128
    s = 0
    while (32 * prizePercentages.length) + 96 > idx:
        mem[idx + 32] = prizePercentages[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * prizePercentages.length) + 192 len floor32(prizePercentages.length)] = mem[128 len floor32(prizePercentages.length)]
    return Array(len=prizePercentages.length, data=mem[128 len floor32(prizePercentages.length)], mem[(32 * prizePercentages.length) + floor32(prizePercentages.length) + 192 len (32 * prizePercentages.length) - floor32(prizePercentages.length)]), 
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6c416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function prepareDuel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(charactersAddress))
    staticcall address(charactersAddress).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    if not stor122[arg1]:
        revert with 0, 'Char not in arena'
    if decisionSeconds + matchByFinder[arg1].field_512 < matchByFinder[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if decisionSeconds + matchByFinder[arg1].field_512 <= block.timestamp:
        revert with 0, 'Decision time expired'
    if stor119[arg1]:
        revert with 0, 'In duel queue'
    if stor125[arg1]:
        revert with 0, 'In duel queue'
    if bool(stor116) != 1:
        revert with 0, 'Arena locked'
    if currentRankedSeason != seasonByCharacter[arg1]:
        rankingPointsByCharacter[arg1].field_0 = 0
        seasonByCharacter[arg1] = currentRankedSeason
    if seasonByCharacter[stor121[arg1].field_256] != currentRankedSeason:
        rankingPointsByCharacter[stor121[arg1].field_256].field_0 = 0
        seasonByCharacter[stor121[arg1].field_256] = currentRankedSeason
    stor125[stor121[arg1].field_256] = 1
    if not stor119[arg1]:
        stor118.length++
        stor118[stor118.length] = arg1
        stor119[arg1] = stor118.length
}

function clearDuelQueue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    idx = 0
    while idx < arg1:
        if idx >= stor118.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        if idx >= stor118.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        if matchByFinder[stor118[idx]].field_256 <= 0:
        else:
            stor125[stor121[stor118[idx]].field_256] = 0
        mem[0] = stor118[idx]
        mem[32] = 119
        if stor119[stor118[idx]]:
            require stor118.length - 1 < stor118.length
            require stor119[stor118[idx]] - 1 < stor118.length
            stor118[stor119[stor118[idx]]] = stor118[stor118.length]
            stor119[stor118[stor118.length]] = stor119[stor118[idx]]
            require stor118.length
            stor118[stor118.length] = 0
            stor118.length--
            mem[0] = stor118[idx]
            mem[32] = 119
            stor119[stor118[idx]] = 0
        idx = idx + 1
        continue 
    stor5837 = 0
}

function getTierTopCharacters(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor108.field_32) != stor133[arg1 << 248]:
        require stor133[arg1 << 248] <= test266151307()
        if stor133[arg1 << 248]:
            mem[128 len 32 * stor133[arg1 << 248]] = call.data[calldata.size len 32 * stor133[arg1 << 248]]
        idx = 0
        while idx < stor133[arg1 << 248]:
            mem[32] = 133
            require idx < stor133[arg1 << 248]
            mem[0] = sha3(arg1 << 248, 133)
            require idx < stor133[arg1 << 248]
            mem[(32 * idx) + 128] = stor133[arg1 << 248][idx]
            idx = idx + 1
            continue 
        mem[(32 * stor133[arg1 << 248]) + 192 len floor32(stor133[arg1 << 248])] = mem[128 len floor32(stor133[arg1 << 248])]
        return Array(len=stor133[arg1 << 248], data=mem[128 len floor32(stor133[arg1 << 248])], mem[(32 * stor133[arg1 << 248]) + floor32(stor133[arg1 << 248]) + 192 len (32 * stor133[arg1 << 248]) - floor32(stor133[arg1 << 248])]), 
    require stor133[arg1 << 248] - 1 <= test266151307()
    mem[96] = stor133[arg1 << 248] - 1
    if stor133[arg1 << 248] - 1:
        mem[128 len 32 * stor133[arg1 << 248] - 1] = call.data[calldata.size len 32 * stor133[arg1 << 248] - 1]
    idx = 0
    while idx < stor133[arg1 << 248] - 1:
        mem[32] = 133
        require idx < stor133[arg1 << 248]
        mem[0] = sha3(arg1 << 248, 133)
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor133[arg1 << 248][idx]
        idx = idx + 1
        continue 
    mem[(32 * stor133[arg1 << 248] - 1) + 128] = 32
    mem[(32 * stor133[arg1 << 248] - 1) + 160] = mem[96]
    mem[(32 * stor133[arg1 << 248] - 1) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * stor133[arg1 << 248] - 1) + 160 len (32 * mem[96]) + 32]
}

function withdrawRankedRewards() payable {
    if playerPrizePoolRewards[msg.sender].field_0:
        playerPrizePoolRewards[msg.sender].field_0 = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(address(skillTokenAddress)):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, playerPrizePoolRewards[msg.sender].field_32
        call address(skillTokenAddress) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args playerPrizePoolRewards[msg.sender].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, playerPrizePoolRewards[msg.sender].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function fillGameCoffers() payable {
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(skillTokenAddress)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor101), uint32(stor101), Mask(224, 0, stor115.field_32)
    call address(skillTokenAddress) with:
       funct uint32(stor101)
         gas gas_remaining wei
        args Mask(480, 0, stor115.field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor101), uint32(stor101), gameCofferTaxDue
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor101):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(gameAddress))
    call address(gameAddress).trackIncome(uint256 arg1) with:
         gas gas_remaining wei
        args gameCofferTaxDue
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    gameCofferTaxDue = 0
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = msg.sender
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(msg.sender)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, msg.sender, msg.sender);
    address(gameAddress) = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xd070bb54 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor102) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor102))
    require ext_code.size(address(gameAddress))
    staticcall address(gameAddress).0xb7e1cd86 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
    shieldsAddress = arg2
    require ext_code.size(address(gameAddress))
    staticcall address(gameAddress).0xd1ebdfd3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor105) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor105))
    randomsAddress = arg3
    uint64(stor107.field_0) = 0
    uint8(stor107.field_64) = 5
    stor107.field_72 % 72057594037927936 = 0
    stor107.field_128 % 72057594037927936 = 0
    uint8(stor107.field_184) = 128
    uint64(stor107.field_192) = 0
    uint8(stor108.field_0) = 15
    wageringFactor = 3
    winningPoints = 5
    losingPoints = 3
    uint8(stor108.field_32) = 4
    stor108.field_256 % 1 = 0
    stor108.field_256 % 1 = 0
    stor108.field_256 % 1 = 0
    stor108.field_256 % 1 = 0
    reRollFeePercent = 25
    withdrawFeePercent = 25
    currentRankedSeason = 1
    seasonStartedAt = block.timestamp
    seasonDuration = 24 * 3600
    decisionSeconds = 120
    prizePercentages.length++
    stor9A8D[stor117.length] = 60
    prizePercentages.length++
    stor9A8D[stor117.length] = 30
    prizePercentages.length++
    stor9A8D[stor117.length] = 10
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getPVPTraitBonusAgainst(uint8 arg1, uint8 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(gameAddress))
    staticcall address(gameAddress).fightTraitBonus() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != arg2:
        require ext_code.size(address(gameAddress))
        staticcall address(gameAddress).isTraitEffectiveAgainst(uint8 arg1, uint8 arg2) with:
                gas gas_remaining wei
               args arg1 << 248, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require Mask(129, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))) >> 1 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
            require Mask(129, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))) >> 1 <= 0x7fffffffffffffffffffffffffffffff
            require ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))) + 18446744073709551616 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
            require ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))) + 18446744073709551616 <= 0x7fffffffffffffffffffffffffffffff
            return ('signextend', 15, ('signextend', 15, ('add', 18446744073709551616, ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))))))
        require ext_code.size(address(gameAddress))
        staticcall address(gameAddress).isTraitEffectiveAgainst(uint8 arg1, uint8 arg2) with:
                gas gas_remaining wei
               args arg3 << 248, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 18446744073709551616
        require Mask(129, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))) >> 1 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(129, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))) >> 1 <= 0x7fffffffffffffffffffffffffffffff
        require -('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))) + 18446744073709551616 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require -('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))) + 18446744073709551616 <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('add', 18446744073709551616, ('mul', -1, ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))))))))
    require ('signextend', 15, ('ext_call.return_data', 0, 32)) + 18446744073709551616 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
    require ('signextend', 15, ('ext_call.return_data', 0, 32)) + 18446744073709551616 <= 0x7fffffffffffffffffffffffffffffff
    require ext_code.size(address(gameAddress))
    staticcall address(gameAddress).isTraitEffectiveAgainst(uint8 arg1, uint8 arg2) with:
            gas gas_remaining wei
           args arg1 << 248, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require Mask(129, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))) >> 1 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(129, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))) >> 1 <= 0x7fffffffffffffffffffffffffffffff
        require ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))) + ('signextend', 15, ('signextend', 15, ('add', 18446744073709551616, ('signextend', 15, ('ext_call.return_data', 0, 32))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))) + ('signextend', 15, ('signextend', 15, ('add', 18446744073709551616, ('signextend', 15, ('ext_call.return_data', 0, 32))))) <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))), ('signextend', 15, ('signextend', 15, ('add', 18446744073709551616, ('signextend', 15, ('ext_call.return_data', 0, 32))))))))
    require ext_code.size(address(gameAddress))
    staticcall address(gameAddress).isTraitEffectiveAgainst(uint8 arg1, uint8 arg2) with:
            gas gas_remaining wei
           args arg3 << 248, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ('signextend', 15, ('signextend', 15, ('add', 18446744073709551616, ('signextend', 15, ('ext_call.return_data', 0, 32)))))
    require Mask(129, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))) >> 1 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
    require Mask(129, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))) >> 1 <= 0x7fffffffffffffffffffffffffffffff
    require ('signextend', 15, ('signextend', 15, ('add', 18446744073709551616, ('signextend', 15, ('ext_call.return_data', 0, 32))))) - ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
    require ('signextend', 15, ('signextend', 15, ('add', 18446744073709551616, ('signextend', 15, ('ext_call.return_data', 0, 32))))) - ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))))) <= 0x7fffffffffffffffffffffffffffffff
    return ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('add', 18446744073709551616, ('signextend', 15, ('ext_call.return_data', 0, 32))))), ('mul', -1, ('signextend', 15, ('mask_shl', 129, 0, -1, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32)))))))))
}

function setBaseWagerInCents(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require arg1 << 64 / 100 <= test266151307()
        require uint128(arg1 << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
        uint128(stor107.field_0) = uint128(('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)))
    else:
        if uint64(arg1) >> 192 >= 4294967296:
            require arg1 << 31 <= test266151307()
            if arg1 << 64 >= 100 * arg1 << 31:
                if (arg1 << 64) - (100 * arg1 << 31) >= 0:
                    require not Mask(256, -192, arg1)
                else:
                    require not (uint64(arg1) >> 192) - 1
            else:
                if (arg1 << 64) - (100 * arg1 << 31) >= 0:
                    require not (uint64(arg1) >> 192) - 1
                else:
                    require not (uint64(arg1) >> 192) - 2
            require (arg1 << 31) + ((arg1 << 64) - (100 * arg1 << 31) / 100) <= test266151307()
            require uint128((arg1 << 31) + ((arg1 << 64) - (100 * arg1 << 31) / 100)) <= 0x7fffffffffffffffffffffffffffffff
            uint128(stor107.field_0) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))))
        else:
            if uint64(arg1) >> 192 >= 65536:
                require arg1 << 47 <= test266151307()
                if arg1 << 64 >= 100 * arg1 << 47:
                    if (arg1 << 64) - (100 * arg1 << 47) >= 0:
                        require not Mask(256, -192, arg1)
                    else:
                        require not (uint64(arg1) >> 192) - 1
                else:
                    if (arg1 << 64) - (100 * arg1 << 47) >= 0:
                        require not (uint64(arg1) >> 192) - 1
                    else:
                        require not (uint64(arg1) >> 192) - 2
                require (arg1 << 47) + ((arg1 << 64) - (100 * arg1 << 47) / 100) <= test266151307()
                require uint128((arg1 << 47) + ((arg1 << 64) - (100 * arg1 << 47) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                uint128(stor107.field_0) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))))
            else:
                if uint64(arg1) >> 192 >= 256:
                    require arg1 << 55 <= test266151307()
                    if arg1 << 64 >= 100 * arg1 << 55:
                        if (arg1 << 64) - (100 * arg1 << 55) >= 0:
                            require not Mask(256, -192, arg1)
                        else:
                            require not (uint64(arg1) >> 192) - 1
                    else:
                        if (arg1 << 64) - (100 * arg1 << 55) >= 0:
                            require not (uint64(arg1) >> 192) - 1
                        else:
                            require not (uint64(arg1) >> 192) - 2
                    require (arg1 << 55) + ((arg1 << 64) - (100 * arg1 << 55) / 100) <= test266151307()
                    require uint128((arg1 << 55) + ((arg1 << 64) - (100 * arg1 << 55) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                    uint128(stor107.field_0) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))))
                else:
                    if uint64(arg1) >> 192 >= 16:
                        require Mask(197, 0, arg1) << 57 <= test266151307()
                        if arg1 << 64 >= 100 * Mask(197, 0, arg1) << 57:
                            if (arg1 << 64) - (100 * Mask(197, 0, arg1) << 57) >= 0:
                                require not Mask(256, -192, arg1)
                            else:
                                require not (uint64(arg1) >> 192) - 1
                        else:
                            if (arg1 << 64) - (100 * Mask(197, 0, arg1) << 57) >= 0:
                                require not (uint64(arg1) >> 192) - 1
                            else:
                                require not (uint64(arg1) >> 192) - 2
                        require (Mask(197, 0, arg1) << 57) + ((arg1 << 64) - (100 * Mask(197, 0, arg1) << 57) / 100) <= test266151307()
                        require uint128((Mask(197, 0, arg1) << 57) + ((arg1 << 64) - (100 * Mask(197, 0, arg1) << 57) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                        uint128(stor107.field_0) = uint128(('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))))
                    else:
                        if uint64(arg1) >> 192 >= 4:
                            require arg1 << 61 / 13 <= test266151307()
                            if arg1 << 64 >= 100 * arg1 << 61 / 13:
                                if (arg1 << 64) - (100 * arg1 << 61 / 13) >= 0:
                                    require not Mask(256, -192, arg1)
                                else:
                                    require not (uint64(arg1) >> 192) - 1
                            else:
                                if (arg1 << 64) - (100 * arg1 << 61 / 13) >= 0:
                                    require not (uint64(arg1) >> 192) - 1
                                else:
                                    require not (uint64(arg1) >> 192) - 2
                            require (arg1 << 61 / 13) + ((arg1 << 64) - (100 * arg1 << 61 / 13) / 100) <= test266151307()
                            require uint128((arg1 << 61 / 13) + ((arg1 << 64) - (100 * arg1 << 61 / 13) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                            uint128(stor107.field_0) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))))
                        else:
                            if uint64(arg1) >> 192 < 2:
                                require arg1 << 63 / 50 <= test266151307()
                                if arg1 << 64 >= 100 * arg1 << 63 / 50:
                                    if (arg1 << 64) - (100 * arg1 << 63 / 50) >= 0:
                                        require not Mask(256, -192, arg1)
                                    else:
                                        require not (uint64(arg1) >> 192) - 1
                                else:
                                    if (arg1 << 64) - (100 * arg1 << 63 / 50) >= 0:
                                        require not (uint64(arg1) >> 192) - 1
                                    else:
                                        require not (uint64(arg1) >> 192) - 2
                                require (arg1 << 63 / 50) + ((arg1 << 64) - (100 * arg1 << 63 / 50) / 100) <= test266151307()
                                require uint128((arg1 << 63 / 50) + ((arg1 << 64) - (100 * arg1 << 63 / 50) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                uint128(stor107.field_0) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))))
                            else:
                                require arg1 << 62 / 25 <= test266151307()
                                if arg1 << 64 >= 100 * arg1 << 62 / 25:
                                    if (arg1 << 64) - (100 * arg1 << 62 / 25) >= 0:
                                        require not Mask(256, -192, arg1)
                                    else:
                                        require not (uint64(arg1) >> 192) - 1
                                else:
                                    if (arg1 << 64) - (100 * arg1 << 62 / 25) >= 0:
                                        require not (uint64(arg1) >> 192) - 1
                                    else:
                                        require not (uint64(arg1) >> 192) - 2
                                require (arg1 << 62 / 25) + ((arg1 << 64) - (100 * arg1 << 62 / 25) / 100) <= test266151307()
                                require uint128((arg1 << 62 / 25) + ((arg1 << 64) - (100 * arg1 << 62 / 25) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                uint128(stor107.field_0) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))))
}

function setTierWagerInCents(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require arg1 << 64 / 100 <= test266151307()
        require uint128(arg1 << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
        uint128(stor107.field_128) = uint128(('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)))
    else:
        if uint64(arg1) >> 192 >= 4294967296:
            require arg1 << 31 <= test266151307()
            if arg1 << 64 >= 100 * arg1 << 31:
                if (arg1 << 64) - (100 * arg1 << 31) >= 0:
                    require not Mask(256, -192, arg1)
                else:
                    require not (uint64(arg1) >> 192) - 1
            else:
                if (arg1 << 64) - (100 * arg1 << 31) >= 0:
                    require not (uint64(arg1) >> 192) - 1
                else:
                    require not (uint64(arg1) >> 192) - 2
            require (arg1 << 31) + ((arg1 << 64) - (100 * arg1 << 31) / 100) <= test266151307()
            require uint128((arg1 << 31) + ((arg1 << 64) - (100 * arg1 << 31) / 100)) <= 0x7fffffffffffffffffffffffffffffff
            uint128(stor107.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))))
        else:
            if uint64(arg1) >> 192 >= 65536:
                require arg1 << 47 <= test266151307()
                if arg1 << 64 >= 100 * arg1 << 47:
                    if (arg1 << 64) - (100 * arg1 << 47) >= 0:
                        require not Mask(256, -192, arg1)
                    else:
                        require not (uint64(arg1) >> 192) - 1
                else:
                    if (arg1 << 64) - (100 * arg1 << 47) >= 0:
                        require not (uint64(arg1) >> 192) - 1
                    else:
                        require not (uint64(arg1) >> 192) - 2
                require (arg1 << 47) + ((arg1 << 64) - (100 * arg1 << 47) / 100) <= test266151307()
                require uint128((arg1 << 47) + ((arg1 << 64) - (100 * arg1 << 47) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                uint128(stor107.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))))
            else:
                if uint64(arg1) >> 192 >= 256:
                    require arg1 << 55 <= test266151307()
                    if arg1 << 64 >= 100 * arg1 << 55:
                        if (arg1 << 64) - (100 * arg1 << 55) >= 0:
                            require not Mask(256, -192, arg1)
                        else:
                            require not (uint64(arg1) >> 192) - 1
                    else:
                        if (arg1 << 64) - (100 * arg1 << 55) >= 0:
                            require not (uint64(arg1) >> 192) - 1
                        else:
                            require not (uint64(arg1) >> 192) - 2
                    require (arg1 << 55) + ((arg1 << 64) - (100 * arg1 << 55) / 100) <= test266151307()
                    require uint128((arg1 << 55) + ((arg1 << 64) - (100 * arg1 << 55) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                    uint128(stor107.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))))
                else:
                    if uint64(arg1) >> 192 >= 16:
                        require Mask(197, 0, arg1) << 57 <= test266151307()
                        if arg1 << 64 >= 100 * Mask(197, 0, arg1) << 57:
                            if (arg1 << 64) - (100 * Mask(197, 0, arg1) << 57) >= 0:
                                require not Mask(256, -192, arg1)
                            else:
                                require not (uint64(arg1) >> 192) - 1
                        else:
                            if (arg1 << 64) - (100 * Mask(197, 0, arg1) << 57) >= 0:
                                require not (uint64(arg1) >> 192) - 1
                            else:
                                require not (uint64(arg1) >> 192) - 2
                        require (Mask(197, 0, arg1) << 57) + ((arg1 << 64) - (100 * Mask(197, 0, arg1) << 57) / 100) <= test266151307()
                        require uint128((Mask(197, 0, arg1) << 57) + ((arg1 << 64) - (100 * Mask(197, 0, arg1) << 57) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                        uint128(stor107.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))))
                    else:
                        if uint64(arg1) >> 192 >= 4:
                            require arg1 << 61 / 13 <= test266151307()
                            if arg1 << 64 >= 100 * arg1 << 61 / 13:
                                if (arg1 << 64) - (100 * arg1 << 61 / 13) >= 0:
                                    require not Mask(256, -192, arg1)
                                else:
                                    require not (uint64(arg1) >> 192) - 1
                            else:
                                if (arg1 << 64) - (100 * arg1 << 61 / 13) >= 0:
                                    require not (uint64(arg1) >> 192) - 1
                                else:
                                    require not (uint64(arg1) >> 192) - 2
                            require (arg1 << 61 / 13) + ((arg1 << 64) - (100 * arg1 << 61 / 13) / 100) <= test266151307()
                            require uint128((arg1 << 61 / 13) + ((arg1 << 64) - (100 * arg1 << 61 / 13) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                            uint128(stor107.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))))
                        else:
                            if uint64(arg1) >> 192 < 2:
                                require arg1 << 63 / 50 <= test266151307()
                                if arg1 << 64 >= 100 * arg1 << 63 / 50:
                                    if (arg1 << 64) - (100 * arg1 << 63 / 50) >= 0:
                                        require not Mask(256, -192, arg1)
                                    else:
                                        require not (uint64(arg1) >> 192) - 1
                                else:
                                    if (arg1 << 64) - (100 * arg1 << 63 / 50) >= 0:
                                        require not (uint64(arg1) >> 192) - 1
                                    else:
                                        require not (uint64(arg1) >> 192) - 2
                                require (arg1 << 63 / 50) + ((arg1 << 64) - (100 * arg1 << 63 / 50) / 100) <= test266151307()
                                require uint128((arg1 << 63 / 50) + ((arg1 << 64) - (100 * arg1 << 63 / 50) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                uint128(stor107.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))))
                            else:
                                require arg1 << 62 / 25 <= test266151307()
                                if arg1 << 64 >= 100 * arg1 << 62 / 25:
                                    if (arg1 << 64) - (100 * arg1 << 62 / 25) >= 0:
                                        require not Mask(256, -192, arg1)
                                    else:
                                        require not (uint64(arg1) >> 192) - 1
                                else:
                                    if (arg1 << 64) - (100 * arg1 << 62 / 25) >= 0:
                                        require not (uint64(arg1) >> 192) - 1
                                    else:
                                        require not (uint64(arg1) >> 192) - 2
                                require (arg1 << 62 / 25) + ((arg1 << 64) - (100 * arg1 << 62 / 25) / 100) <= test266151307()
                                require uint128((arg1 << 62 / 25) + ((arg1 << 64) - (100 * arg1 << 62 / 25) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                uint128(stor107.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))))
}

function findOpponent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(charactersAddress))
    staticcall address(charactersAddress).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    if not stor122[arg1]:
        revert with 0, 'Char not in arena'
    if finderByOpponent[arg1]:
        if decisionSeconds + matchByFinder[stor126[arg1]].field_512 < matchByFinder[stor126[arg1]].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if decisionSeconds + matchByFinder[stor126[arg1]].field_512 > block.timestamp:
            revert with 0, 'Under attack'
    else:
        if arg1 == storA16C:
            if decisionSeconds + matchByFinder[0].field_512 < matchByFinder[0].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if decisionSeconds + matchByFinder[0].field_512 > block.timestamp:
                revert with 0, 'Under attack'
    if stor119[arg1]:
        revert with 0, 'In duel queue'
    if stor125[arg1]:
        revert with 0, 'In duel queue'
    if matchByFinder[arg1].field_512:
        revert with 0, 'Already in match'
    require ext_code.size(address(charactersAddress))
    staticcall address(charactersAddress).getLevel(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0:
        revert with 0, 'No enemy in tier'
    require ext_code.size(randomsAddress)
    staticcall randomsAddress.getRandomSeed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0 - 1:
        revert with 0, 'SafeMath: subtraction overflow'
    if matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0 < matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0 - 1:
        revert with 0, 'SafeMath: addition overflow'
    if matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0 <= 0:
        revert with 0, 'SafeMath: modulo by zero'
    require matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0
    if sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0 < sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    while idx < matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0:
        require matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0
        if (sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0 >= matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[262 len 30]
        mem[0] = sha3(ext_call.return_data[31 len 1] / 10 << 248, 134)
        if matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0 != arg1:
            require ext_code.size(address(charactersAddress))
            staticcall address(charactersAddress).0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[164] = matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0
            require ext_code.size(address(charactersAddress))
            staticcall address(charactersAddress).0x6352211e with:
                    gas gas_remaining wei
                   args matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0
            mem[160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                idx = idx + 1
                continue 
            matchByFinder[arg1].field_0 = arg1
            matchByFinder[arg1].field_256 = matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0
            matchByFinder[arg1].field_512 = block.timestamp
            finderByOpponent[stor134[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % stor134[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % stor134[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0] = arg1
            if matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0:
                require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0
                require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0 = 0
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0--
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0 = 0
            if matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0].field_0:
                require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0].field_0
                require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0 = 0
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0--
                matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0].field_0 = 0
        else:
            if 1 == matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0:
                revert with 0, 'No enemy found'
            if matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0 - 1 >= matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[262 len 30]
            if matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0 != matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0:
                if ((sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + 1 >= matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[262 len 30]
                mem[0] = sha3(ext_call.return_data[31 len 1] / 10 << 248, 134)
                require ext_code.size(address(charactersAddress))
                staticcall address(charactersAddress).0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[164] = matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_256
                require ext_code.size(address(charactersAddress))
                staticcall address(charactersAddress).0x6352211e with:
                        gas gas_remaining wei
                       args matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_256
                mem[160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    idx = idx + 1
                    continue 
                matchByFinder[arg1].field_0 = arg1
                matchByFinder[arg1].field_256 = matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_256
                matchByFinder[arg1].field_512 = block.timestamp
                finderByOpponent[stor134[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % stor134[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % stor134[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_256] = arg1
                if matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0:
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0 = 0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0--
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0 = 0
                if matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_256].field_0:
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_256].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_256].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_256].field_0
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0 = 0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0--
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248][(sha3(ext_call.return_data[0]) % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0) + idx % matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_256].field_0 = 0
            else:
                if 0 >= matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[262 len 30]
                mem[0] = sha3(ext_call.return_data[31 len 1] / 10 << 248, 134)
                require ext_code.size(address(charactersAddress))
                staticcall address(charactersAddress).0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[164] = matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0
                require ext_code.size(address(charactersAddress))
                staticcall address(charactersAddress).0x6352211e with:
                        gas gas_remaining wei
                       args matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0
                mem[160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    idx = idx + 1
                    continue 
                matchByFinder[arg1].field_0 = arg1
                matchByFinder[arg1].field_256 = matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0
                matchByFinder[arg1].field_512 = block.timestamp
                finderByOpponent[stor134[ext_call.return_data[31 len 1] / 10 << 248].field_0] = arg1
                if matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0:
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0 = 0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0--
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][arg1].field_0 = 0
                if matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0:
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0 - 1 < matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0].field_0 = matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0
                    require matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0].field_0 = 0
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248].field_0--
                    matchablePlayerCount[uint8(ext_call.return_data[0]) / 10 << 248][1][matchablePlayerCount[ext_call.return_data[31 len 1] / 10 << 248].field_0].field_0 = 0
    revert with 0, 'No enemy found'
}

function getDuelCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(charactersAddress))
    staticcall address(charactersAddress).getLevel(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(ext_call.return_data[31 len 1] / 10):
        require ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
        require ext_code.size(address(gameAddress))
        staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                gas gas_remaining wei
               args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107)))))))))
    else:
        if 100 * uint8(ext_call.return_data[31 len 1] / 10) / uint8(ext_call.return_data[31 len 1] / 10) != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 100 * uint8(ext_call.return_data[31 len 1] / 10) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 / 100 <= test266151307()
            require uint128(100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
            require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 100)))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
            require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 100)))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
            require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 100)))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
            require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 100)))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
            require ext_code.size(address(gameAddress))
            staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 100)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
        else:
            if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 4294967296:
                require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31 <= test266151307()
                if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31:
                    if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) >= 0:
                        require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                    else:
                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                else:
                    if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) >= 0:
                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                    else:
                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) / 100) <= test266151307()
                require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                require ext_code.size(address(gameAddress))
                staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
            else:
                if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 65536:
                    require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47 <= test266151307()
                    if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47:
                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) >= 0:
                            require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                        else:
                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                    else:
                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) >= 0:
                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                        else:
                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                    require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) / 100) <= test266151307()
                    require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                    require ext_code.size(address(gameAddress))
                    staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                else:
                    if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 256:
                        require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55 <= test266151307()
                        if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55:
                            if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) >= 0:
                                require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                            else:
                                require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                        else:
                            if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) >= 0:
                                require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                            else:
                                require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                        require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) / 100) <= test266151307()
                        require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                        require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                        require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                        require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                        require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                        require ext_code.size(address(gameAddress))
                        staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                    else:
                        if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 16:
                            require Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57 <= test266151307()
                            if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57:
                                if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) >= 0:
                                    require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                                else:
                                    require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                            else:
                                if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) >= 0:
                                    require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                else:
                                    require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                            require (Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) / 100) <= test266151307()
                            require uint128((Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                            require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                            require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                            require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                            require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                            require ext_code.size(address(gameAddress))
                            staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                        else:
                            if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 4:
                                require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13 <= test266151307()
                                if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13:
                                    if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) >= 0:
                                        require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                                    else:
                                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                else:
                                    if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) >= 0:
                                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                    else:
                                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                                require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) / 100) <= test266151307()
                                require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                                require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                                require ext_code.size(address(gameAddress))
                                staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 13))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                            else:
                                if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 < 2:
                                    require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50 <= test266151307()
                                    if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50:
                                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) >= 0:
                                            require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                                        else:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                    else:
                                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) >= 0:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                        else:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                                    require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) / 100) <= test266151307()
                                    require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                                    require ext_code.size(address(gameAddress))
                                    staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 50))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                                else:
                                    require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25 <= test266151307()
                                    if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25:
                                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) >= 0:
                                            require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                                        else:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                    else:
                                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) >= 0:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                        else:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                                    require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) / 100) <= test266151307()
                                    require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                                    require ext_code.size(address(gameAddress))
                                    staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 25))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEntryWager(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(charactersAddress))
    staticcall address(charactersAddress).getLevel(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(ext_call.return_data[31 len 1] / 10):
        require ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
        require ext_code.size(address(gameAddress))
        staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                gas gas_remaining wei
               args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107)))))))))
    else:
        if 100 * uint8(ext_call.return_data[31 len 1] / 10) / uint8(ext_call.return_data[31 len 1] / 10) != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 100 * uint8(ext_call.return_data[31 len 1] / 10) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 / 100 <= test266151307()
            require uint128(100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
            require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 100)))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
            require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 100)))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
            require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 100)))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
            require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 100)))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
            require ext_code.size(address(gameAddress))
            staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 100)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
        else:
            if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 4294967296:
                require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31 <= test266151307()
                if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31:
                    if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) >= 0:
                        require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                    else:
                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                else:
                    if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) >= 0:
                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                    else:
                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) / 100) <= test266151307()
                require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 31) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                require ext_code.size(address(gameAddress))
                staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('mask_shl', 256, 0, 31, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
            else:
                if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 65536:
                    require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47 <= test266151307()
                    if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47:
                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) >= 0:
                            require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                        else:
                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                    else:
                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) >= 0:
                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                        else:
                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                    require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) / 100) <= test266151307()
                    require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 47) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                    require ext_code.size(address(gameAddress))
                    staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('mask_shl', 256, 0, 47, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                else:
                    if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 256:
                        require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55 <= test266151307()
                        if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55:
                            if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) >= 0:
                                require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                            else:
                                require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                        else:
                            if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) >= 0:
                                require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                            else:
                                require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                        require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) / 100) <= test266151307()
                        require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 55) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                        require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                        require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                        require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                        require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                        require ext_code.size(address(gameAddress))
                        staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('mask_shl', 256, 0, 55, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                    else:
                        if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 16:
                            require Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57 <= test266151307()
                            if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57:
                                if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) >= 0:
                                    require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                                else:
                                    require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                            else:
                                if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) >= 0:
                                    require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                else:
                                    require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                            require (Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) / 100) <= test266151307()
                            require uint128((Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * Mask(197, 0, 100 * uint8(ext_call.return_data[31 len 1] / 10)) << 57) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                            require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                            require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                            require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                            require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                            require ext_code.size(address(gameAddress))
                            staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('mask_shl', 197, 0, 57, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                        else:
                            if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 >= 4:
                                require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13 <= test266151307()
                                if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13:
                                    if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) >= 0:
                                        require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                                    else:
                                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                else:
                                    if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) >= 0:
                                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                    else:
                                        require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                                require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) / 100) <= test266151307()
                                require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 61 / 13) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                                require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 13))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                                require ext_code.size(address(gameAddress))
                                staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 13))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                            else:
                                if uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192 < 2:
                                    require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50 <= test266151307()
                                    if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50:
                                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) >= 0:
                                            require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                                        else:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                    else:
                                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) >= 0:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                        else:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                                    require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) / 100) <= test266151307()
                                    require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 63 / 50) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 50))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                                    require ext_code.size(address(gameAddress))
                                    staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 50))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
                                else:
                                    require 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25 <= test266151307()
                                    if 100 * uint8(ext_call.return_data[31 len 1] / 10) << 64 >= 100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25:
                                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) >= 0:
                                            require not Mask(256, -192, 100 * uint8(ext_call.return_data[31 len 1] / 10))
                                        else:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                    else:
                                        if (100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) >= 0:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 1
                                        else:
                                            require not (uint64(100 * uint8(ext_call.return_data[31 len 1] / 10)) >> 192) - 2
                                    require (100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) / 100) <= test266151307()
                                    require uint128((100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) + ((100 * uint8(ext_call.return_data[31 len 1] / 10) << 64) - (100 * 100 * uint8(ext_call.return_data[31 len 1] / 10) << 62 / 25) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25))), 100))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                    require Mask(192, 0, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))) * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25))), 100))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
                                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
                                    require ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('ext_call.return_data', 31, 1), 10)))), 25))), 100))))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))) <= 0x7fffffffffffffffffffffffffffffff
                                    require ext_code.size(address(gameAddress))
                                    staticcall address(gameAddress).usdToSkill(int128 arg1) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor107', 107)))))), ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('mul', 100, ('mask_shl', 8, 0, 0, ('div', ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)), 10)))), 25))), 100))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor107', 107))))))))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if wageringFactor * ext_call.return_data[0] / ext_call.return_data[0] != wageringFactor:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (wageringFactor * ext_call.return_data[0])
}



}
