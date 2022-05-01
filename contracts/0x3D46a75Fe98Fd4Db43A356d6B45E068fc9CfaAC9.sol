contract main {




// =====================  Runtime code  =====================


#
#  - reforgeWeaponUsingStakedSkill(uint256 arg1, uint256 arg2)
#  - claimTokenRewards()
#  - reforgeWeaponWithDustUsingStakedSkill(uint256 arg1, uint8 arg2, uint8 arg3, uint8 arg4)
#  - mintWeaponUsingStakedSkill(uint8 arg1)
#  - stakeUnclaimedRewards()
#  - trackIncome(uint256 arg1)
#  - reforgeWeaponWithDust(uint256 arg1, uint8 arg2, uint8 arg3, uint8 arg4)
#  - mintWeapon(uint8 arg1)
#  - mintWeaponN(uint32 arg1, uint8 arg2)
#  - payContractTokenOnly(address arg1, uint256 arg2)
#  - reforgeWeapon(uint256 arg1, uint256 arg2)
#  - payContractTokenOnly(address arg1, uint256 arg2, bool arg3)
#  - burnWeaponUsingStakedSkill(uint256 arg1)
#  - fight(uint256 arg1, uint256 arg2, uint32 arg3, uint8 arg4)
#  - burnWeaponsUsingStakedSkill(uint256[] arg1)
#  - mintWeaponNUsingStakedSkill(uint32 arg1, uint8 arg2)
#  - claimTokenRewards(uint256 arg1)
#  - burnWeapons(uint256[] arg1)
#  - burnWeapon(uint256 arg1)
#  - mintCharacter()
#
const VAR_HOURLY_PAY_PER_FIGHT = 5

const VAR_UNCLAIMED_SKILL = 14

const VAR_PARAM_DAILY_CLAIM_FIGHTS_LIMIT = 10

const VAR_DAILY_MAX_CLAIM = 7

const VAR_HOURLY_DISTRIBUTION = 13

const VAR_HOURLY_POWER_SUM = 3

const GAME_ADMIN = sha3(336492626609784167942478)

const VAR_PARAM_DAILY_CLAIM_DEPOSIT_PERCENT = 11

const VAR_PARAM_HOURLY_PAY_ALLOWANCE = 18

const VAR_PARAM_HOURLY_MAX_POWER_PERCENT = 16

const USERVAR_CLAIM_TIMESTAMP = 10002

const VAR_PARAM_MAX_FIGHT_PAYOUT = 12

const VAR_CLAIM_DEPOSIT_AMOUNT = 8

const DEFAULT_ADMIN_ROLE = 0

const VAR_PARAM_PAYOUT_INCOME_PERCENT = 9

const VAR_PARAM_SIGNIFICANT_HOUR_FIGHTS = 17

const VAR_HOURLY_POWER_AVERAGE = 4

const VAR_HOURLY_TIMESTAMP = 6

const PAYMENT_USING_STAKED_SKILL_COST_AFTER_DISCOUNT = 14757395258967641292

const VAR_HOURLY_MAX_POWER_AVERAGE = 15

const VAR_HOURLY_INCOME = 1

const VAR_HOURLY_FIGHTS = 2

const USERVAR_DAILY_CLAIMED_AMOUNT = 10001


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
address charactersAddress;
address weaponsAddress;
address skillTokenAddress;
address priceOracleSkillPerUsdAddress;
address randomsAddress;
uint8 stor107;
uint8 stor107; offset 72
uint64 stor107; offset 80
uint64 stor107; offset 8
uint128 stor107; offset 8
uint256 stor107; offset 8
uint64 stor108; offset 128
uint64 stor108; offset 192
uint128 stor108; offset 128
uint256 stor108;
uint8 stor109; offset 192
uint64 stor109; offset 200
uint64 stor109;
uint64 stor109; offset 64
uint64 stor109; offset 128
uint128 stor109; offset 128
uint256 stor109;
uint128 stor110;
uint256 stor110;
mapping of uint256 stor112;
uint256 fightXpGain;
mapping of uint256 tokenRewards;
mapping of uint256 xpRewards;
uint8 stor116; offset 64
uint64 stor116; offset 72
uint64 stor116;
uint64 stor116; offset 128
uint64 stor116; offset 192
uint128 stor116; offset 128
uint256 stor116;
mapping of uint256 inGameOnlyFunds;
uint256 totalInGameOnlyFunds;
address promosAddress;
mapping of uint256 stor120;
uint8 stor121; offset 160
address stakeFromGameImplAddress;
uint64 stor122;
uint64 stor122; offset 64
uint64 stor122; offset 128
uint64 stor122; offset 192
uint128 stor122;
uint128 stor122; offset 128
uint256 stor122;
address blacksmithAddress;
uint256 totalMintPaymentSkillRefundable;
uint128 stor127;
uint256 stor127;
uint128 stor128;
uint256 REWARDS_CLAIM_TAX_DURATION;
mapping of uint256 vars;
mapping of uint256 userVars;
array of struct stor336492626609784167942478;
uint128 stor13B5;
uint256 stor13B5;
uint128 stor315F;
uint256 stor315F;
uint256 stor67B9;
uint256 stor6E7F;
uint256 stor6E7F;
uint256 stor6E7F;
uint256 stor6E7F;
uint256 stor6E7F;
uint256 stor6E7F;
uint256 stor6E7F;
uint256 stor6E7F;
uint256 stor77F0;
uint256 stor8A5A;
uint256 storC45E;

function stakeFromGameImpl() payable {
    return stakeFromGameImplAddress
}

function userVars(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return userVars[arg1][arg2]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getTokenRewards() payable {
    return tokenRewards[msg.sender]
}

function REWARDS_CLAIM_TAX_DURATION() payable {
    return uint256(REWARDS_CLAIM_TAX_DURATION)
}

function priceOracleSkillPerUsd() payable {
    return priceOracleSkillPerUsdAddress
}

function promos() payable {
    return promosAddress
}

function totalMintPaymentSkillRefundable() payable {
    return totalMintPaymentSkillRefundable
}

function fightXpGain() payable {
    return fightXpGain
}

function getTokenRewardsFor(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenRewards[address(arg1)]
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

function getXpRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return xpRewards[arg1]
}

function inGameOnlyFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    return inGameOnlyFunds[arg1]
}

function totalInGameOnlyFunds() payable {
    return totalInGameOnlyFunds
}

function weapons() payable {
    return weaponsAddress
}

function randoms() payable {
    return randomsAddress
}

function blacksmith() payable {
    return blacksmithAddress
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function characters() payable {
    return charactersAddress
}

function skillToken() payable {
    return skillTokenAddress
}

function vars(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vars[arg1]
}

function _fallback() payable {
    revert
}

function getMonsterPower(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 % 16777216)
}

function isDailyTokenClaimAmountExpired() payable {
    return block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]
}

function isTraitEffectiveAgainst(uint8 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    return (arg1 + 1 % 4 == arg2)
}

function unpackFightData(uint96 arg1) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, Mask(24, 8, arg1) << 224, uint64(arg1)
}

function reforgeWeaponFee() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor110', 110))))))
}

function oneFrac() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116)))))))
}

function REWARDS_CLAIM_TAX_MAX() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))
}

function migrateRandoms(address arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0][1][address(msg.sender)].field_0
    randomsAddress = arg1
}

function getClaimedTokensToday() payable {
    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
        return 0
    return userVars[msg.sender][10001]
}

function migrateTo_ef994e2(address arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0][1][address(msg.sender)].field_0
    promosAddress = arg1
}

function burnWeaponFee() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122)))))))
}

function mintWeaponFee() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor109', 109)))))))
}

function mintCharacterFee() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 248, ('field', 8, ('stor', ('name', 'stor107', 107)))))))
}

function refillStaminaFee() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor108', 108)))))))
}

function migrateTo_60872c8(address arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0][1][address(msg.sender)].field_0
    blacksmithAddress = arg1
}

function fightTraitBonus() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))))
}

function fightRewardGasOffset() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor109', 109)))))))
}

function fightRewardBaseline() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor108', 108)))))))
}

function migrateTo_23b3a8b(address arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0][1][address(msg.sender)].field_0
    stakeFromGameImplAddress = arg1
}

function getSkillToSubtractSingle(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        return arg2, arg1 - arg2
    return arg1, 0
}

function reforgeWeaponWithDustFee() payable {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor122', 122)))))))
}

function migrateTo_6a97bd1() payable {
    require roleAdmin[0][1][address(msg.sender)].field_0
    uint256(stor127) = '&fffffff' or Mask(128, 128, uint256(stor127))
    uint256(REWARDS_CLAIM_TAX_DURATION) = 360 * 24 * 3600
}

function setFightXpGain(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    fightXpGain = arg1
}

function setDurabilityCostFight(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    stor121 = arg1
}

function setVar(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    vars[arg1] = arg2
}

function setStaminaCostFight(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    uint8(stor107.field_0) = arg1
}

function getSkillToSubtract(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 <= arg1:
        return arg3, 0, 0
    if arg3 - arg1 > arg2:
        return arg1, arg2, arg3 - arg1 - arg2
    return arg1, arg3 - arg1, 0
}

function setRewardsClaimTaxDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    uint256(REWARDS_CLAIM_TAX_DURATION) = arg1
}

function getTotalSkillOwnedBy(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(skillTokenAddress)
    staticcall skillTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (inGameOnlyFunds[address(arg1)] + tokenRewards[address(arg1)] + ext_call.return_data[0])
}

function payPlayerConverted(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    require ext_code.size(skillTokenAddress)
    call skillTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function migrateTo_801f279() payable {
    require roleAdmin[0][1][address(msg.sender)].field_0
    uint64(stor122.field_0) = 3689348814741910323
    uint64(stor122.field_64) = 0
    uint64(stor122.field_128) = 5534023222112865484
    uint64(stor122.field_192) = 0
    uint128(stor110) = uint128(('signextend', 15, ('add', ('signextend', 15, ('or', 1883130520616004228878510933425549154060006947393795784704, ('type', 128, ('field', 0, ('stor', ('name', 'stor122', 122)))))), ('signextend', 15, 5534023222112865484))))
}

function getSkillNeededFromUserWallet(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if not arg3:
        if arg2 > 0:
            if arg2 > tokenRewards[address(arg1)]:
                return (arg2 - tokenRewards[address(arg1)])
    else:
        if arg2 > inGameOnlyFunds[address(arg1)]:
            if arg2 - inGameOnlyFunds[address(arg1)] > tokenRewards[address(arg1)]:
                return (arg2 - inGameOnlyFunds[address(arg1)] - tokenRewards[address(arg1)])
    return 0
}

function giveInGameOnlyFundsFromContractBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    if arg2 + totalInGameOnlyFunds < totalInGameOnlyFunds:
        revert with 0, 'SafeMath: addition overflow'
    totalInGameOnlyFunds += arg2
    if arg2 + inGameOnlyFunds[address(arg1)] < inGameOnlyFunds[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    inGameOnlyFunds[address(arg1)] += arg2
    emit InGameOnlyFundsGiven(arg2, arg1);
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

function setVars(uint256[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 129
        vars[cd[((32 * idx) + arg1 + 36)]] = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
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

function getPlayerPower(uint24 arg1, int128 arg2, uint24 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1 % 16777216:
        if arg3 % 16777216 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg3 % 16777216)
    require ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) >= 0
    require arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
    require arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64)
    if arg3 % 16777216 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216)
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

function usdToSkill(int128 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(priceOracleSkillPerUsdAddress)
    staticcall priceOracleSkillPerUsdAddress.0x9d1b464a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) >= 0
    require uint128(ext_call.return_data[0]) >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
    require uint128(ext_call.return_data[0]) >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) * ext_call.return_data[16 len 16]) >> 64)
    return ((uint128(ext_call.return_data[0]) >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) * ext_call.return_data[16 len 16]) >> 64))
}

function recoverSkill(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0][1][address(msg.sender)].field_0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(skillTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call skillTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xbd5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xbd5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function giveInGameOnlyFunds(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    if arg2 + totalInGameOnlyFunds < totalInGameOnlyFunds:
        revert with 0, 'SafeMath: addition overflow'
    totalInGameOnlyFunds += arg2
    if arg2 + inGameOnlyFunds[address(arg1)] < inGameOnlyFunds[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    inGameOnlyFunds[address(arg1)] += arg2
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(skillTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call skillTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xbd5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
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
                            0xbd5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit InGameOnlyFundsGiven(arg2, arg1);
}

function mintWeaponNforAddress(address arg1, uint32 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if tx.origin != msg.sender:
        revert with 0, 'ONC'
    if block.number <= stor112[address(arg1)]:
        revert with 0, 'OCB'
    stor112[address(arg1)] = block.number
    mem[0] = msg.sender
    mem[32] = sha3(0, 51) + 1
    if roleAdmin[0][1][address(msg.sender)].field_0:
        require arg2 > 0
        require arg2 <= 50
        idx = 0
        while idx < arg2:
            _26 = mem[64]
            mem[mem[64] + 32] = block.hash(block.number - 1)
            mem[mem[64] + 64] = address(arg1)
            mem[mem[64] + 84] = idx
            _27 = mem[64]
            mem[mem[64]] = 84
            mem[64] = mem[64] + 116
            _29 = sha3(mem[_27 + 32 len mem[_27]])
            mem[_26 + 120] = arg1
            mem[_26 + 152] = _29
            mem[_26 + 184] = 100
            require ext_code.size(weaponsAddress)
            call weaponsAddress.0x6112e8ac with:
                 gas gas_remaining wei
                args address(arg1), _29, 100
            mem[_26 + 116] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
        mem[0] = msg.sender
        mem[32] = sha3(sha3(336492626609784167942478), 51) + 1
        require stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0
        require arg2 > 0
        require arg2 <= 50
        idx = 0
        while idx < arg2:
            _31 = mem[64]
            mem[mem[64] + 32] = block.hash(block.number - 1)
            mem[mem[64] + 64] = address(arg1)
            mem[mem[64] + 84] = idx
            _32 = mem[64]
            mem[mem[64]] = 84
            mem[64] = mem[64] + 116
            _34 = sha3(mem[_32 + 32 len mem[_32]])
            mem[_31 + 120] = arg1
            mem[_31 + 152] = _34
            mem[_31 + 184] = 100
            require ext_code.size(weaponsAddress)
            call weaponsAddress.0x6112e8ac with:
                 gas gas_remaining wei
                args address(arg1), _34, 100
            mem[_31 + 116] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
}

function claimXpRewards() payable {
    mem[64] = 96
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(charactersAddress)
    staticcall charactersAddress.mem[var17003 len 4] with:
            gas gas_remaining wei
           args mem[var17003 + 4 len var17004 - 4]
    mem[var17005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var21003 >= mem[var21002]:
    mem[96] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = var23001
    require ext_code.size(charactersAddress)
    staticcall charactersAddress.mem[var25003 len 4] with:
            gas gas_remaining wei
           args mem[var25003 + 4 len var25004 - 4]
    mem[var25005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = mem[var29002]
    mem[32] = 115
    xpRewards[mem[0]] = 0
    mem[96] = 0xfc0057500000000000000000000000000000000000000000000000000000000
    if xpRewards[mem[0]] > 65535:
        mem[100] = var32002
        mem[132] = uint16(var32001)
        require ext_code.size(charactersAddress)
        call charactersAddress.mem[var34004 len 4] with:
             gas gas_remaining wei
            args mem[var34004 + 4 len var34005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.mem[var40003 len 4] with:
                gas gas_remaining wei
               args mem[var40003 + 4 len var40004 - 4]
        mem[var40005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var44003 >= mem[var44002]:
        mem[96] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = var46001
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.mem[var48003 len 4] with:
                gas gas_remaining wei
               args mem[var48003 + 4 len var48004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        # nil
    else:
        mem[100] = var31002
        mem[132] = uint16(var31001)
        require ext_code.size(charactersAddress)
        call charactersAddress.mem[var33004 len 4] with:
             gas gas_remaining wei
            args mem[var33004 + 4 len var33005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.mem[var39003 len 4] with:
                gas gas_remaining wei
               args mem[var39003 + 4 len var39004 - 4]
        mem[var39005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var43003 >= mem[var43002]:
        mem[96] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = var45001
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.mem[var47003 len 4] with:
                gas gas_remaining wei
               args mem[var47003 + 4 len var47004 - 4]
        mem[var47005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = mem[var51002]
        xpRewards[mem[0]] = 0
        # nil
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
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
                        uint8(stor0.field_8) = 0
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = msg.sender
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(msg.sender)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, msg.sender, msg.sender);
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        stor51[('name', 'stor4741', 336492626609784167942478)].field_0++
        stor51[('name', 'stor4741', 336492626609784167942478)][stor51[('name', 'stor4741', 336492626609784167942478)].field_0].field_0 = msg.sender
        stor51[('name', 'stor4741', 336492626609784167942478)][stor51[('name', 'stor4741', 336492626609784167942478)].field_0].field_160 = 0
        stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0 = stor51[('name', 'stor4741', 336492626609784167942478)].field_0
        emit RoleGranted(sha3(336492626609784167942478), msg.sender, msg.sender);
    skillTokenAddress = arg1
    charactersAddress = arg2
    weaponsAddress = arg3
    priceOracleSkillPerUsdAddress = arg4
    randomsAddress = arg5
    uint8(stor107.field_0) = 40
    uint64(stor107.field_8) = 0
    uint8(stor107.field_72) = 10
    stor107.field_80 % 72057594037927936 = 0
    uint64(stor109.field_128) = 0
    uint8(stor109.field_192) = 3
    stor109.field_200 % 72057594037927936 = 0
    fightXpGain = 32
    uint64(stor116.field_0) = 0
    uint8(stor116.field_64) = 1
    stor116.field_72 % 72057594037927936 = 0
    uint64(stor116.field_128) = 1383505805528216371
    uint64(stor116.field_192) = 0
    uint64(stor109.field_0) = 4275401873963662778
    uint64(stor109.field_64) = 0
    uint64(stor108.field_128) = 6345679961356085755
    uint64(stor108.field_192) = 0
    stor121 = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getPlayerTraitBonusAgainst(uint24 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(arg1) != uint8(arg1):
        if uint8(arg1) + 1 % 4 == uint8(arg1):
            require ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
            require ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116))))))) <= 0x7fffffffffffffffffffffffffffffff
            return ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116))))))))))
        if (arg1 % 16777216 >> 16) + 1 % 4 != uint8(arg1):
            return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116)))))))
        require ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116))))))) - ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116))))))) - ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116))))))), ('mul', -1, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116))))))))))
    require ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
    require ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) + ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116))))))) <= 0x7fffffffffffffffffffffffffffffff
    if uint8(arg1) + 1 % 4 == uint8(arg1):
        require ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) + ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116)))))))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) + ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116)))))))))) <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))), ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116)))))))))))))
    if (arg1 % 16777216 >> 16) + 1 % 4 != uint8(arg1):
        return ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116))))))))))
    require ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116)))))))))) - ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
    require ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116)))))))))) - ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))) <= 0x7fffffffffffffffffffffffffffffff
    return ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('add', ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor116', 116)))))))))), ('mul', -1, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor116', 116))))))))))
}

function setRewardsClaimTaxMaxAsPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    if arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require arg1 << 64 / 100 <= test266151307()
        require uint128(arg1 << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
        uint128(stor127) = uint128(('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)))
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
            uint128(stor127) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))))
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
                uint128(stor127) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))))
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
                    uint128(stor127) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))))
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
                        uint128(stor127) = uint128(('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))))
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
                            uint128(stor127) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))))
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
                                uint128(stor127) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))))
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
                                uint128(stor127) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))))
}

function setBurnWeaponValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    if arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require arg1 << 64 / 100 <= test266151307()
        require uint128(arg1 << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
        uint128(stor122.field_0) = uint128(('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)))
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
            uint128(stor122.field_0) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))))
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
                uint128(stor122.field_0) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))))
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
                    uint128(stor122.field_0) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))))
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
                        uint128(stor122.field_0) = uint128(('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))))
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
                            uint128(stor122.field_0) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))))
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
                                uint128(stor122.field_0) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))))
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
                                uint128(stor122.field_0) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))))
}

function setCharacterMintValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    if arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require arg1 << 64 / 100 <= test266151307()
        require uint128(arg1 << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
        uint128(stor107.field_8) = uint128(('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)))
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
            uint128(stor107.field_8) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))))
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
                uint128(stor107.field_8) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))))
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
                    uint128(stor107.field_8) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))))
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
                        uint128(stor107.field_8) = uint128(('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))))
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
                            uint128(stor107.field_8) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))))
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
                                uint128(stor107.field_8) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))))
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
                                uint128(stor107.field_8) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))))
}

function setWeaponMintValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    if arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require arg1 << 64 / 100 <= test266151307()
        require uint128(arg1 << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
        uint128(stor109.field_128) = uint128(('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)))
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
            uint128(stor109.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))))
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
                uint128(stor109.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))))
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
                    uint128(stor109.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))))
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
                        uint128(stor109.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))))
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
                            uint128(stor109.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))))
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
                                uint128(stor109.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))))
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
                                uint128(stor109.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))))
}

function verifyFight(uint24 arg1, int128 arg2, uint24 arg3, uint64 arg4, uint256 arg5, uint32 arg6) payable {
    require calldata.size - 4 >= 192
    mem[96 len 128] = call.data[calldata.size len 128]
    if not arg1 % 16777216:
        if arg3 % 16777216 < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[224 len 128] = call.data[calldata.size len 128]
        mem[384] = arg4
        mem[416] = arg5
        mem[352] = 64
        mem[480] = sha3(arg4 << 192, arg5)
        mem[512] = arg3 % 16777216
        mem[448] = 64
        mem[64] = 672
        mem[544 len 128] = call.data[calldata.size len 128]
        idx = 0
        while idx < 4:
            _94 = mem[64]
            mem[mem[64] + 32] = sha3(sha3(arg4 << 192, arg5), arg3 % 16777216)
            mem[mem[64] + 64] = idx
            _95 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _97 = sha3(mem[_95 + 32 len mem[_95]])
            if not arg3 % 16777216 / 10:
                mem[_94 + 128] = sha3(mem[_95 + 32 len mem[_95]])
                mem[_94 + 96] = 32
                mem[64] = _94 + 160
                if sha3(mem[_94 + 128]) % 1 < sha3(mem[_94 + 128]) % 1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 % 16777216 / 10 > arg3 % 16777216:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sha3(mem[_94 + 128]) % 1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 4
                mem[(32 * idx) + 544] = uint32((sha3(mem[_94 + 128]) % 1) + (arg3 % 16777216) - (arg3 % 16777216 / 10)) or _97 % 4 << 24
            else:
                if 2 * arg3 % 16777216 / 10 / arg3 % 16777216 / 10 != 2:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_94 + 197 len 31]
                if 0 > 2 * arg3 % 16777216 / 10:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (2 * arg3 % 16777216 / 10) + 1 < 2 * arg3 % 16777216 / 10:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_94 + 128] = sha3(mem[_95 + 32 len mem[_95]])
                mem[_94 + 96] = 32
                mem[64] = _94 + 160
                if (2 * arg3 % 16777216 / 10) + 1 <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require (2 * arg3 % 16777216 / 10) + 1
                if sha3(mem[_94 + 128]) % (2 * arg3 % 16777216 / 10) + 1 < sha3(mem[_94 + 128]) % (2 * arg3 % 16777216 / 10) + 1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 % 16777216 / 10 > arg3 % 16777216:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sha3(mem[_94 + 128]) % (2 * arg3 % 16777216 / 10) + 1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 4
                mem[(32 * idx) + 544] = uint32((sha3(mem[_94 + 128]) % (2 * arg3 % 16777216 / 10) + 1) + (arg3 % 16777216) - (arg3 % 16777216 / 10)) or _97 % 4 << 24
            idx = idx + 1
            continue 
    else:
        require ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) >= 0
        require arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
        require arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64)
        if arg3 % 16777216 < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[224 len 128] = call.data[calldata.size len 128]
        mem[384] = arg4
        mem[416] = arg5
        mem[352] = 64
        mem[480] = sha3(arg4 << 192, arg5)
        mem[512] = (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216
        mem[448] = 64
        mem[64] = 672
        mem[544 len 128] = call.data[calldata.size len 128]
        idx = 0
        while idx < 4:
            _90 = mem[64]
            mem[mem[64] + 32] = sha3(sha3(arg4 << 192, arg5), (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216)
            mem[mem[64] + 64] = idx
            _91 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _93 = sha3(mem[_91 + 32 len mem[_91]])
            if not (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10:
                mem[_90 + 128] = sha3(mem[_91 + 32 len mem[_91]])
                mem[_90 + 96] = 32
                mem[64] = _90 + 160
                if sha3(mem[_90 + 128]) % 1 < sha3(mem[_90 + 128]) % 1:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10 > (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sha3(mem[_90 + 128]) % 1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 4
                mem[(32 * idx) + 544] = uint32((sha3(mem[_90 + 128]) % 1) + ((arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216) - ((arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10)) or _93 % 4 << 24
            else:
                if 2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10 / (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10 != 2:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_90 + 197 len 31]
                if 0 > 2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10) + 1 < 2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_90 + 128] = sha3(mem[_91 + 32 len mem[_91]])
                mem[_90 + 96] = 32
                mem[64] = _90 + 160
                if (2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10) + 1 <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require (2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10) + 1
                if sha3(mem[_90 + 128]) % (2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10) + 1 < sha3(mem[_90 + 128]) % (2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10) + 1:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10 > (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sha3(mem[_90 + 128]) % (2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10) + 1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 4
                mem[(32 * idx) + 544] = uint32((sha3(mem[_90 + 128]) % (2 * (arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10) + 1) + ((arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216) - ((arg3 % 16777216) + (arg1 % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg2')))) * arg1 % 16777216) >> 64) % 16777216 / 10)) or _93 % 4 << 24
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    while idx < 4:
        if mem[(32 * idx) + 572 len 4] != arg6:
            idx = idx + 1
            s = s
            continue 
        idx = 5
        s = 1
        continue 
    require s
}

function setReforgeWeaponWithDustValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    if arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require arg1 << 64 / 100 <= test266151307()
        require uint128(arg1 << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
        uint128(stor122.field_128) = uint128(('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)))
        uint128(stor110) = uint128(('signextend', 15, ('add', ('signextend', 15, ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100))), ('type', 128, ('field', 0, ('stor', ('name', 'stor122', 122)))))), ('signextend', 15, ('mask_shl', 128, 0, 0, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)))))))
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
            uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))))
            uint128(stor110) = uint128(('signextend', 15, ('add', ('signextend', 15, ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100)))), ('type', 128, ('field', 0, ('stor', ('name', 'stor122', 122)))))), ('signextend', 15, ('mask_shl', 128, 0, 0, ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))))))))
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
                uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))))
                uint128(stor110) = uint128(('signextend', 15, ('add', ('signextend', 15, ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100)))), ('type', 128, ('field', 0, ('stor', ('name', 'stor122', 122)))))), ('signextend', 15, ('mask_shl', 128, 0, 0, ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))))))))
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
                    uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))))
                    uint128(stor110) = uint128(('signextend', 15, ('add', ('signextend', 15, ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100)))), ('type', 128, ('field', 0, ('stor', ('name', 'stor122', 122)))))), ('signextend', 15, ('mask_shl', 128, 0, 0, ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))))))))
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
                        uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))))
                        uint128(stor110) = uint128(('signextend', 15, ('add', ('signextend', 15, ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100)))), ('type', 128, ('field', 0, ('stor', ('name', 'stor122', 122)))))), ('signextend', 15, ('mask_shl', 128, 0, 0, ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))))))))
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
                            uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))))
                            uint128(stor110) = uint128(('signextend', 15, ('add', ('signextend', 15, ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100)))), ('type', 128, ('field', 0, ('stor', ('name', 'stor122', 122)))))), ('signextend', 15, ('mask_shl', 128, 0, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))))))))
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
                                uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))))
                                uint128(stor110) = uint128(('signextend', 15, ('add', ('signextend', 15, ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100)))), ('type', 128, ('field', 0, ('stor', ('name', 'stor122', 122)))))), ('signextend', 15, ('mask_shl', 128, 0, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))))))))
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
                                uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))))
                                uint128(stor110) = uint128(('signextend', 15, ('add', ('signextend', 15, ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100)))), ('type', 128, ('field', 0, ('stor', ('name', 'stor122', 122)))))), ('signextend', 15, ('mask_shl', 128, 0, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))))))))
}

function setReforgeWeaponValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    if arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require arg1 << 64 / 100 <= test266151307()
        require uint128(arg1 << 64 / 100) <= 0x7fffffffffffffffffffffffffffffff
        require ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)) > ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122))))))
        uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100), ('mul', -1, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122)))))))))
        uint128(stor110) = uint128(('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('param', 'arg1')), 100)))
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
            require ('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))) > ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122))))))
            uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100), ('mul', -1, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122)))))))))
            uint128(stor110) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 31, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 31, ('param', 'arg1')))), 100))))
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
                require ('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))) > ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122))))))
                uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100), ('mul', -1, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122)))))))))
                uint128(stor110) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 47, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 47, ('param', 'arg1')))), 100))))
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
                    require ('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))) > ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122))))))
                    uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100), ('mul', -1, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122)))))))))
                    uint128(stor110) = uint128(('signextend', 15, ('add', ('mask_shl', 256, 0, 55, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 256, 0, 55, ('param', 'arg1')))), 100))))
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
                        require ('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))) > ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122))))))
                        uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100), ('mul', -1, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122)))))))))
                        uint128(stor110) = uint128(('signextend', 15, ('add', ('mask_shl', 197, 0, 57, ('param', 'arg1')), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('mask_shl', 197, 0, 57, ('param', 'arg1')))), 100))))
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
                            require ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))) > ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122))))))
                            uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100), ('mul', -1, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122)))))))))
                            uint128(stor110) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 61, ('param', 'arg1')), 13))), 100))))
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
                                require ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))) > ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122))))))
                                uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100), ('mul', -1, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122)))))))))
                                uint128(stor110) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 63, ('param', 'arg1')), 50))), 100))))
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
                                require ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))) > ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122))))))
                                uint128(stor122.field_128) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100), ('mul', -1, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor122', 122)))))))))
                                uint128(stor110) = uint128(('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25), ('div', ('add', ('mask_shl', 256, 0, 64, ('param', 'arg1')), ('mul', -100, ('div', ('mask_shl', 256, 0, 62, ('param', 'arg1')), 25))), 100))))
}

function getTargets(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[96 len 128] = call.data[calldata.size len 128]
    require ext_code.size(charactersAddress)
    staticcall charactersAddress.0xacb586df with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(weaponsAddress)
    staticcall weaponsAddress.0xd58227c8 with:
            gas gas_remaining wei
           args arg2, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(charactersAddress)
    staticcall charactersAddress.getPower(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[29 len 3]:
        if ext_call.return_data[64] % 16777216 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.0x54ec7fc0 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[224 len 128] = call.data[calldata.size len 128]
        mem[384] = uint64(ext_call.return_data[0])
        mem[416] = block.timestamp / 3600
        mem[352] = 64
        mem[480] = sha3(ext_call.return_data[0] << 192, block.timestamp / 3600)
        mem[512] = ext_call.return_data[64] % 16777216
        mem[448] = 64
        mem[64] = 672
        mem[544 len 128] = call.data[calldata.size len 128]
        idx = 0
        while idx < 4:
            _115 = mem[64]
            mem[mem[64] + 32] = sha3(sha3(ext_call.return_data[0] << 192, block.timestamp / 3600), ext_call.return_data[64] % 16777216)
            mem[mem[64] + 64] = idx
            _116 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _118 = sha3(mem[_116 + 32 len mem[_116]])
            if not ext_call.return_data[64] % 16777216 / 10:
                mem[_115 + 128] = sha3(mem[_116 + 32 len mem[_116]])
                mem[_115 + 96] = 32
                mem[64] = _115 + 160
                if sha3(mem[_115 + 128]) % 1 < sha3(mem[_115 + 128]) % 1:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[64] % 16777216 / 10 > ext_call.return_data[64] % 16777216:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sha3(mem[_115 + 128]) % 1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 4
                mem[(32 * idx) + 544] = uint32((sha3(mem[_115 + 128]) % 1) + (ext_call.return_data[64] % 16777216) - (ext_call.return_data[64] % 16777216 / 10)) or _118 % 4 << 24
            else:
                if 2 * ext_call.return_data[64] % 16777216 / 10 / ext_call.return_data[64] % 16777216 / 10 != 2:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_115 + 197 len 31]
                if 0 > 2 * ext_call.return_data[64] % 16777216 / 10:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (2 * ext_call.return_data[64] % 16777216 / 10) + 1 < 2 * ext_call.return_data[64] % 16777216 / 10:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_115 + 128] = sha3(mem[_116 + 32 len mem[_116]])
                mem[_115 + 96] = 32
                mem[64] = _115 + 160
                if (2 * ext_call.return_data[64] % 16777216 / 10) + 1 <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require (2 * ext_call.return_data[64] % 16777216 / 10) + 1
                if sha3(mem[_115 + 128]) % (2 * ext_call.return_data[64] % 16777216 / 10) + 1 < sha3(mem[_115 + 128]) % (2 * ext_call.return_data[64] % 16777216 / 10) + 1:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[64] % 16777216 / 10 > ext_call.return_data[64] % 16777216:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sha3(mem[_115 + 128]) % (2 * ext_call.return_data[64] % 16777216 / 10) + 1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 4
                mem[(32 * idx) + 544] = uint32((sha3(mem[_115 + 128]) % (2 * ext_call.return_data[64] % 16777216 / 10) + 1) + (ext_call.return_data[64] % 16777216) - (ext_call.return_data[64] % 16777216 / 10)) or _118 % 4 << 24
            idx = idx + 1
            continue 
    else:
        require ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) >= 0
        require ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
        require ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[29 len 3]) >> 64)
        if ext_call.return_data[64] % 16777216 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.0x54ec7fc0 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[224 len 128] = call.data[calldata.size len 128]
        mem[384] = uint64(ext_call.return_data[0])
        mem[416] = block.timestamp / 3600
        mem[352] = 64
        mem[480] = sha3(ext_call.return_data[0] << 192, block.timestamp / 3600)
        mem[512] = (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216
        mem[448] = 64
        mem[64] = 672
        mem[544 len 128] = call.data[calldata.size len 128]
        idx = 0
        while idx < 4:
            _111 = mem[64]
            mem[mem[64] + 32] = sha3(sha3(ext_call.return_data[0] << 192, block.timestamp / 3600), (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216)
            mem[mem[64] + 64] = idx
            _112 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _114 = sha3(mem[_112 + 32 len mem[_112]])
            if not (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10:
                mem[_111 + 128] = sha3(mem[_112 + 32 len mem[_112]])
                mem[_111 + 96] = 32
                mem[64] = _111 + 160
                if sha3(mem[_111 + 128]) % 1 < sha3(mem[_111 + 128]) % 1:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10 > (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sha3(mem[_111 + 128]) % 1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 4
                mem[(32 * idx) + 544] = uint32((sha3(mem[_111 + 128]) % 1) + ((ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216) - ((ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10)) or _114 % 4 << 24
            else:
                if 2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10 / (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10 != 2:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_111 + 197 len 31]
                if 0 > 2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10) + 1 < 2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_111 + 128] = sha3(mem[_112 + 32 len mem[_112]])
                mem[_111 + 96] = 32
                mem[64] = _111 + 160
                if (2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10) + 1 <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require (2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10) + 1
                if sha3(mem[_111 + 128]) % (2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10) + 1 < sha3(mem[_111 + 128]) % (2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10) + 1:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10 > (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sha3(mem[_111 + 128]) % (2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10) + 1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 4
                mem[(32 * idx) + 544] = uint32((sha3(mem[_111 + 128]) % (2 * (ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10) + 1) + ((ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216) - ((ext_call.return_data[64] % 16777216) + (ext_call.return_data[0] % 16777216 >> 128 * ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('ext_call.return_data', 0, 32))) * ext_call.return_data[0] % 16777216) >> 64) % 16777216 / 10)) or _114 % 4 << 24
            idx = idx + 1
            continue 
    mem[mem[64] len 128] = mem[544 len 128]
    return memory
      from mem[64]
       len 128
}

function getMaxTokenClaimAmountPreTax() payable {
    if stor8A5A > tokenRewards[msg.sender]:
        return stor77F0
    if uint256(stor6E7F) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require Mask(192, 0, stor6E7F) / 100 <= test266151307()
        require uint128(Mask(192, 0, stor6E7F) / 100) <= 0x7fffffffffffffffffffffffffffffff
        if not tokenRewards[msg.sender] - stor8A5A:
            if 0 <= 2 * stor77F0:
                return (2 * stor77F0)
            else:
                return 0
        require ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) >= 0
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
            return (2 * stor77F0)
        return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
    if uint64(uint256(stor6E7F)) >> 192 >= 4294967296:
        require Mask(225, 0, stor6E7F) <= test266151307()
        if Mask(192, 0, stor6E7F) >= 100 * Mask(225, 0, stor6E7F):
            if Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) >= 0:
                require not Mask(256, -192, uint256(stor6E7F))
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
        else:
            if Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) >= 0:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 2
        require Mask(225, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) / 100) <= test266151307()
        require uint128(Mask(225, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
        if not tokenRewards[msg.sender] - stor8A5A:
            if 0 <= 2 * stor77F0:
                return (2 * stor77F0)
            else:
                return 0
        require ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
            return (2 * stor77F0)
        return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
    if uint64(uint256(stor6E7F)) >> 192 >= 65536:
        require Mask(209, 0, stor6E7F) <= test266151307()
        if Mask(192, 0, stor6E7F) >= 100 * Mask(209, 0, stor6E7F):
            if Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) >= 0:
                require not Mask(256, -192, uint256(stor6E7F))
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
        else:
            if Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) >= 0:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 2
        require Mask(209, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) / 100) <= test266151307()
        require uint128(Mask(209, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
        if not tokenRewards[msg.sender] - stor8A5A:
            if 0 <= 2 * stor77F0:
                return (2 * stor77F0)
            else:
                return 0
        require ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
            return (2 * stor77F0)
        return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
    if uint64(uint256(stor6E7F)) >> 192 >= 256:
        require Mask(201, 0, stor6E7F) <= test266151307()
        if Mask(192, 0, stor6E7F) >= 100 * Mask(201, 0, stor6E7F):
            if Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) >= 0:
                require not Mask(256, -192, uint256(stor6E7F))
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
        else:
            if Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) >= 0:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 2
        require Mask(201, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) / 100) <= test266151307()
        require uint128(Mask(201, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
        if not tokenRewards[msg.sender] - stor8A5A:
            if 0 <= 2 * stor77F0:
                return (2 * stor77F0)
            else:
                return 0
        require ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
            return (2 * stor77F0)
        return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
    if uint64(uint256(stor6E7F)) >> 192 >= 16:
        require Mask(195, 0, stor6E7F) <= test266151307()
        if Mask(192, 0, stor6E7F) >= 100 * Mask(195, 0, stor6E7F):
            if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) >= 0:
                require not Mask(256, -192, uint256(stor6E7F))
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
        else:
            if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) >= 0:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 2
        require Mask(195, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) / 100) <= test266151307()
        require uint128(Mask(195, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
        if not tokenRewards[msg.sender] - stor8A5A:
            if 0 <= 2 * stor77F0:
                return (2 * stor77F0)
            else:
                return 0
        require ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
            return (2 * stor77F0)
        return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
    if uint64(uint256(stor6E7F)) >> 192 >= 4:
        require Mask(195, 0, stor6E7F) / 13 <= test266151307()
        if Mask(192, 0, stor6E7F) >= 100 * Mask(195, 0, stor6E7F) / 13:
            if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) >= 0:
                require not Mask(256, -192, uint256(stor6E7F))
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
        else:
            if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) >= 0:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 2
        require (Mask(195, 0, stor6E7F) / 13) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) / 100) <= test266151307()
        require uint128((Mask(195, 0, stor6E7F) / 13) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) / 100)) <= 0x7fffffffffffffffffffffffffffffff
        if not tokenRewards[msg.sender] - stor8A5A:
            if 0 <= 2 * stor77F0:
                return (2 * stor77F0)
            else:
                return 0
        require ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) >= 0
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
            return (2 * stor77F0)
        return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
    if uint64(uint256(stor6E7F)) >> 192 < 2:
        require Mask(193, 0, stor6E7F) / 50 <= test266151307()
        if Mask(192, 0, stor6E7F) >= 100 * Mask(193, 0, stor6E7F) / 50:
            if Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) >= 0:
                require not Mask(256, -192, uint256(stor6E7F))
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
        else:
            if Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) >= 0:
                require not (uint64(uint256(stor6E7F)) >> 192) - 1
            else:
                require not (uint64(uint256(stor6E7F)) >> 192) - 2
        require (Mask(193, 0, stor6E7F) / 50) + (Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) / 100) <= test266151307()
        require uint128((Mask(193, 0, stor6E7F) / 50) + (Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) / 100)) <= 0x7fffffffffffffffffffffffffffffff
        if not tokenRewards[msg.sender] - stor8A5A:
            if 0 <= 2 * stor77F0:
                return (2 * stor77F0)
            else:
                return 0
        require ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) >= 0
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
            return (2 * stor77F0)
        return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
    require Mask(194, 0, stor6E7F) / 25 <= test266151307()
    if Mask(192, 0, stor6E7F) >= 100 * Mask(194, 0, stor6E7F) / 25:
        if Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) >= 0:
            require not Mask(256, -192, uint256(stor6E7F))
        else:
            require not (uint64(uint256(stor6E7F)) >> 192) - 1
    else:
        if Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) >= 0:
            require not (uint64(uint256(stor6E7F)) >> 192) - 1
        else:
            require not (uint64(uint256(stor6E7F)) >> 192) - 2
    require (Mask(194, 0, stor6E7F) / 25) + (Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) / 100) <= test266151307()
    require uint128((Mask(194, 0, stor6E7F) / 25) + (Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) / 100)) <= 0x7fffffffffffffffffffffffffffffff
    if not tokenRewards[msg.sender] - stor8A5A:
        if 0 <= 2 * stor77F0:
            return (2 * stor77F0)
        else:
            return 0
    require ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) >= 0
    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
    if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
        return (2 * stor77F0)
    return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
}

function getOwnRewardsClaimTax() payable {
    require block.timestamp >= stor120[address(msg.sender)]
    if uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] < stor120[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)]:
        require 0 <= uint256(REWARDS_CLAIM_TAX_DURATION)
        require uint256(REWARDS_CLAIM_TAX_DURATION)
        require uint256(REWARDS_CLAIM_TAX_DURATION)
        require 0 / uint256(REWARDS_CLAIM_TAX_DURATION) <= test266151307()
        require uint128(0 / uint256(REWARDS_CLAIM_TAX_DURATION)) <= 0x7fffffffffffffffffffffffffffffff
        require Mask(192, 0, ('signextend', 15, ('div', 0, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(192, 0, ('signextend', 15, ('div', 0, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('div', 0, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))))))
    require uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp <= uint256(REWARDS_CLAIM_TAX_DURATION)
    require uint256(REWARDS_CLAIM_TAX_DURATION)
    if uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require uint256(REWARDS_CLAIM_TAX_DURATION)
        require uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64 / uint256(REWARDS_CLAIM_TAX_DURATION) <= test266151307()
        require uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64 / uint256(REWARDS_CLAIM_TAX_DURATION)) <= 0x7fffffffffffffffffffffffffffffff
        require Mask(192, 0, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(192, 0, ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('div', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))))))
    if uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 >= 4294967296:
        require (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1
        require uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 <= test266151307()
        if uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64 >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(stor128):
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        else:
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 2 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        require uint256(REWARDS_CLAIM_TAX_DURATION)
        require (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION)) <= test266151307()
        require uint128((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 31 / (Mask(223, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 33) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION))) <= 0x7fffffffffffffffffffffffffffffff
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 31, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 31, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 31, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 31, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 31, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 31, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 31, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 31, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 31, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))))))
    if uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 >= 65536:
        require (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1
        require uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 <= test266151307()
        if uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64 >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(stor128):
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        else:
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 2 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        require uint256(REWARDS_CLAIM_TAX_DURATION)
        require (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION)) <= test266151307()
        require uint128((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 47 / (Mask(239, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 17) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION))) <= 0x7fffffffffffffffffffffffffffffff
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 47, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 47, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 47, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 47, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 47, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 47, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 47, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 47, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 47, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))))))
    if uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 >= 256:
        require (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1
        require uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 <= test266151307()
        if uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64 >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(stor128):
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        else:
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 2 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        require uint256(REWARDS_CLAIM_TAX_DURATION)
        require (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION)) <= test266151307()
        require uint128((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 55 / (Mask(247, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) >> 9) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION))) <= 0x7fffffffffffffffffffffffffffffff
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 55, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 55, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 55, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 55, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 55, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 55, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 55, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 55, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 55, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))))))
    if uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 >= 16:
        require (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1
        require uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 <= test266151307()
        if uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64 >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(stor128):
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        else:
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 2 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        require uint256(REWARDS_CLAIM_TAX_DURATION)
        require (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION)) <= test266151307()
        require uint128((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 59 / (Mask(251, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.03125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION))) <= 0x7fffffffffffffffffffffffffffffff
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 59, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 59, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 59, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 59, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 59, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 59, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 59, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 59, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 59, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))))))
    if uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 >= 4:
        require (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1
        require uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 <= test266151307()
        if uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64 >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(stor128):
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        else:
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 2 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        require uint256(REWARDS_CLAIM_TAX_DURATION)
        require (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION)) <= test266151307()
        require uint128((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 61 / (Mask(253, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.125) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION))) <= 0x7fffffffffffffffffffffffffffffff
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 61, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 61, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 61, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 61, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 61, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 61, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 61, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))))))
    if uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 < 2:
        require (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1
        require uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 <= test266151307()
        if uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64 >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(stor128):
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        else:
            if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
            else:
                require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 2 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        require uint256(REWARDS_CLAIM_TAX_DURATION)
        require (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION)) <= test266151307()
        require uint128((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 63 / (uint255(uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.5) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION))) <= 0x7fffffffffffffffffffffffffffffff
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 63, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 63, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
        require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 63, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 63, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
        return ('signextend', 15, ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 63, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 63, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 63, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))))))
    require (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1
    require uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 <= test266151307()
    if uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64 >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(stor128):
        if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
            require uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        else:
            require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
    else:
        if (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(stor128)) >= uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128:
            require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 1 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
        else:
            require (uint64(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp) >> 192) - 2 == uint128(uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128) >> 128
    require uint256(REWARDS_CLAIM_TAX_DURATION)
    require (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION)) <= test266151307()
    require uint128((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1) + ((uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 64) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(stor128)) - (uint256(REWARDS_CLAIM_TAX_DURATION) + stor120[address(msg.sender)] - block.timestamp << 62 / (Mask(254, 0, uint256(REWARDS_CLAIM_TAX_DURATION) - 1) * 0.25) + 1 * uint128(uint256(REWARDS_CLAIM_TAX_DURATION)) >> 128 << 128) / uint256(REWARDS_CLAIM_TAX_DURATION))) <= 0x7fffffffffffffffffffffffffffffff
    require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 62, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 62, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 >= 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000
    require Mask(192, 0, ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 62, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 62, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))) * ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))) >> 64 <= 0x7fffffffffffffffffffffffffffffff
    return ('signextend', 15, ('signextend', 15, ('mask_shl', 256, -64, -64, ('mul', ('signextend', 15, ('add', ('div', ('mask_shl', 256, 0, 62, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('div', ('add', ('mask_shl', 256, 0, 64, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('mul', -1, ('div', ('mask_shl', 256, 0, 62, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('type', 128, ('stor', ('name', 'stor128', 128)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 256, 0, 62, ('add', ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor120', 120))), ('mul', -1, 'timestamp'))), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))))), ('type', 256, ('stor', ('name', 'REWARDS_CLAIM_TAX_DURATION', 128)))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('stor', ('name', 'stor127', 127))))))))))
}

function getRemainingTokenClaimAmountPreTax() payable {
    if stor8A5A > tokenRewards[msg.sender]:
        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
            if 0 >= stor77F0:
                return 0
            if stor77F0 <= tokenRewards[msg.sender]:
                return stor77F0
        else:
            if userVars[msg.sender][10001] >= stor77F0:
                return 0
            if stor77F0 - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                return (stor77F0 - userVars[msg.sender][10001])
    else:
        if uint256(stor6E7F) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            require Mask(192, 0, stor6E7F) / 100 <= test266151307()
            require uint128(Mask(192, 0, stor6E7F) / 100) <= 0x7fffffffffffffffffffffffffffffff
            if not tokenRewards[msg.sender] - stor8A5A:
                if 0 <= 2 * stor77F0:
                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                        if 0 >= 2 * stor77F0:
                            return 0
                        if 2 * stor77F0 <= tokenRewards[msg.sender]:
                            return (2 * stor77F0)
                    else:
                        if userVars[msg.sender][10001] >= 2 * stor77F0:
                            return 0
                        if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                            return ((2 * stor77F0) - userVars[msg.sender][10001])
                else:
                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                        return 0
                    if userVars[msg.sender][10001] >= 0:
                        return 0
                    if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                        return -userVars[msg.sender][10001]
            else:
                require ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) >= 0
                require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                        if 0 >= 2 * stor77F0:
                            return 0
                        if 2 * stor77F0 <= tokenRewards[msg.sender]:
                            return (2 * stor77F0)
                    else:
                        if userVars[msg.sender][10001] >= 2 * stor77F0:
                            return 0
                        if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                            return ((2 * stor77F0) - userVars[msg.sender][10001])
                else:
                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                        if 0 >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                            return 0
                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                            return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
                    else:
                        if userVars[msg.sender][10001] >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                            return 0
                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                            return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001])
        else:
            if uint64(uint256(stor6E7F)) >> 192 >= 4294967296:
                require Mask(225, 0, stor6E7F) <= test266151307()
                if Mask(192, 0, stor6E7F) >= 100 * Mask(225, 0, stor6E7F):
                    if Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) >= 0:
                        require not Mask(256, -192, uint256(stor6E7F))
                    else:
                        require not (uint64(uint256(stor6E7F)) >> 192) - 1
                else:
                    if Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) >= 0:
                        require not (uint64(uint256(stor6E7F)) >> 192) - 1
                    else:
                        require not (uint64(uint256(stor6E7F)) >> 192) - 2
                require Mask(225, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) / 100) <= test266151307()
                require uint128(Mask(225, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                if not tokenRewards[msg.sender] - stor8A5A:
                    if 0 <= 2 * stor77F0:
                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                            if 0 >= 2 * stor77F0:
                                return 0
                            if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                return (2 * stor77F0)
                        else:
                            if userVars[msg.sender][10001] >= 2 * stor77F0:
                                return 0
                            if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                return ((2 * stor77F0) - userVars[msg.sender][10001])
                    else:
                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                            return 0
                        if userVars[msg.sender][10001] >= 0:
                            return 0
                        if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                            return -userVars[msg.sender][10001]
                else:
                    require ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
                    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                    if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                            if 0 >= 2 * stor77F0:
                                return 0
                            if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                return (2 * stor77F0)
                        else:
                            if userVars[msg.sender][10001] >= 2 * stor77F0:
                                return 0
                            if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                return ((2 * stor77F0) - userVars[msg.sender][10001])
                    else:
                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                            if 0 >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                return 0
                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
                        else:
                            if userVars[msg.sender][10001] >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                return 0
                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001])
            else:
                if uint64(uint256(stor6E7F)) >> 192 >= 65536:
                    require Mask(209, 0, stor6E7F) <= test266151307()
                    if Mask(192, 0, stor6E7F) >= 100 * Mask(209, 0, stor6E7F):
                        if Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) >= 0:
                            require not Mask(256, -192, uint256(stor6E7F))
                        else:
                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                    else:
                        if Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) >= 0:
                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                        else:
                            require not (uint64(uint256(stor6E7F)) >> 192) - 2
                    require Mask(209, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) / 100) <= test266151307()
                    require uint128(Mask(209, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                    if not tokenRewards[msg.sender] - stor8A5A:
                        if 0 <= 2 * stor77F0:
                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                if 0 >= 2 * stor77F0:
                                    return 0
                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                    return (2 * stor77F0)
                            else:
                                if userVars[msg.sender][10001] >= 2 * stor77F0:
                                    return 0
                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                    return ((2 * stor77F0) - userVars[msg.sender][10001])
                        else:
                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                return 0
                            if userVars[msg.sender][10001] >= 0:
                                return 0
                            if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                return -userVars[msg.sender][10001]
                    else:
                        require ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                if 0 >= 2 * stor77F0:
                                    return 0
                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                    return (2 * stor77F0)
                            else:
                                if userVars[msg.sender][10001] >= 2 * stor77F0:
                                    return 0
                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                    return ((2 * stor77F0) - userVars[msg.sender][10001])
                        else:
                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                if 0 >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                    return 0
                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                    return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
                            else:
                                if userVars[msg.sender][10001] >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                    return 0
                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                    return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001])
                else:
                    if uint64(uint256(stor6E7F)) >> 192 >= 256:
                        require Mask(201, 0, stor6E7F) <= test266151307()
                        if Mask(192, 0, stor6E7F) >= 100 * Mask(201, 0, stor6E7F):
                            if Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) >= 0:
                                require not Mask(256, -192, uint256(stor6E7F))
                            else:
                                require not (uint64(uint256(stor6E7F)) >> 192) - 1
                        else:
                            if Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) >= 0:
                                require not (uint64(uint256(stor6E7F)) >> 192) - 1
                            else:
                                require not (uint64(uint256(stor6E7F)) >> 192) - 2
                        require Mask(201, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) / 100) <= test266151307()
                        require uint128(Mask(201, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                        if not tokenRewards[msg.sender] - stor8A5A:
                            if 0 <= 2 * stor77F0:
                                if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                    if 0 >= 2 * stor77F0:
                                        return 0
                                    if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                        return (2 * stor77F0)
                                else:
                                    if userVars[msg.sender][10001] >= 2 * stor77F0:
                                        return 0
                                    if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                        return ((2 * stor77F0) - userVars[msg.sender][10001])
                            else:
                                if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                    return 0
                                if userVars[msg.sender][10001] >= 0:
                                    return 0
                                if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                    return -userVars[msg.sender][10001]
                        else:
                            require ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
                            require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                            require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                    if 0 >= 2 * stor77F0:
                                        return 0
                                    if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                        return (2 * stor77F0)
                                else:
                                    if userVars[msg.sender][10001] >= 2 * stor77F0:
                                        return 0
                                    if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                        return ((2 * stor77F0) - userVars[msg.sender][10001])
                            else:
                                if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                    if 0 >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                        return 0
                                    if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                        return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
                                else:
                                    if userVars[msg.sender][10001] >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                        return 0
                                    if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                        return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001])
                    else:
                        if uint64(uint256(stor6E7F)) >> 192 >= 16:
                            require Mask(195, 0, stor6E7F) <= test266151307()
                            if Mask(192, 0, stor6E7F) >= 100 * Mask(195, 0, stor6E7F):
                                if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) >= 0:
                                    require not Mask(256, -192, uint256(stor6E7F))
                                else:
                                    require not (uint64(uint256(stor6E7F)) >> 192) - 1
                            else:
                                if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) >= 0:
                                    require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                else:
                                    require not (uint64(uint256(stor6E7F)) >> 192) - 2
                            require Mask(195, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) / 100) <= test266151307()
                            require uint128(Mask(195, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                            if not tokenRewards[msg.sender] - stor8A5A:
                                if 0 <= 2 * stor77F0:
                                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                        if 0 >= 2 * stor77F0:
                                            return 0
                                        if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                            return (2 * stor77F0)
                                    else:
                                        if userVars[msg.sender][10001] >= 2 * stor77F0:
                                            return 0
                                        if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                            return ((2 * stor77F0) - userVars[msg.sender][10001])
                                else:
                                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                        return 0
                                    if userVars[msg.sender][10001] >= 0:
                                        return 0
                                    if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                        return -userVars[msg.sender][10001]
                            else:
                                require ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
                                require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                        if 0 >= 2 * stor77F0:
                                            return 0
                                        if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                            return (2 * stor77F0)
                                    else:
                                        if userVars[msg.sender][10001] >= 2 * stor77F0:
                                            return 0
                                        if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                            return ((2 * stor77F0) - userVars[msg.sender][10001])
                                else:
                                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                        if 0 >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                            return 0
                                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                            return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
                                    else:
                                        if userVars[msg.sender][10001] >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                            return 0
                                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                            return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001])
                        else:
                            if uint64(uint256(stor6E7F)) >> 192 >= 4:
                                require Mask(195, 0, stor6E7F) / 13 <= test266151307()
                                if Mask(192, 0, stor6E7F) >= 100 * Mask(195, 0, stor6E7F) / 13:
                                    if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) >= 0:
                                        require not Mask(256, -192, uint256(stor6E7F))
                                    else:
                                        require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                else:
                                    if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) >= 0:
                                        require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                    else:
                                        require not (uint64(uint256(stor6E7F)) >> 192) - 2
                                require (Mask(195, 0, stor6E7F) / 13) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) / 100) <= test266151307()
                                require uint128((Mask(195, 0, stor6E7F) / 13) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                if not tokenRewards[msg.sender] - stor8A5A:
                                    if 0 <= 2 * stor77F0:
                                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                            if 0 >= 2 * stor77F0:
                                                return 0
                                            if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                return (2 * stor77F0)
                                        else:
                                            if userVars[msg.sender][10001] >= 2 * stor77F0:
                                                return 0
                                            if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                return ((2 * stor77F0) - userVars[msg.sender][10001])
                                    else:
                                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                            return 0
                                        if userVars[msg.sender][10001] >= 0:
                                            return 0
                                        if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                            return -userVars[msg.sender][10001]
                                else:
                                    require ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) >= 0
                                    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                    if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                            if 0 >= 2 * stor77F0:
                                                return 0
                                            if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                return (2 * stor77F0)
                                        else:
                                            if userVars[msg.sender][10001] >= 2 * stor77F0:
                                                return 0
                                            if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                return ((2 * stor77F0) - userVars[msg.sender][10001])
                                    else:
                                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                            if 0 >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                                return 0
                                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                                return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
                                        else:
                                            if userVars[msg.sender][10001] >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                                return 0
                                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001])
                            else:
                                if uint64(uint256(stor6E7F)) >> 192 < 2:
                                    require Mask(193, 0, stor6E7F) / 50 <= test266151307()
                                    if Mask(192, 0, stor6E7F) >= 100 * Mask(193, 0, stor6E7F) / 50:
                                        if Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) >= 0:
                                            require not Mask(256, -192, uint256(stor6E7F))
                                        else:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                    else:
                                        if Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) >= 0:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                        else:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 2
                                    require (Mask(193, 0, stor6E7F) / 50) + (Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) / 100) <= test266151307()
                                    require uint128((Mask(193, 0, stor6E7F) / 50) + (Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                    if not tokenRewards[msg.sender] - stor8A5A:
                                        if 0 <= 2 * stor77F0:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                if 0 >= 2 * stor77F0:
                                                    return 0
                                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                    return (2 * stor77F0)
                                            else:
                                                if userVars[msg.sender][10001] >= 2 * stor77F0:
                                                    return 0
                                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    return ((2 * stor77F0) - userVars[msg.sender][10001])
                                        else:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                return 0
                                            if userVars[msg.sender][10001] >= 0:
                                                return 0
                                            if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                return -userVars[msg.sender][10001]
                                    else:
                                        require ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) >= 0
                                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                if 0 >= 2 * stor77F0:
                                                    return 0
                                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                    return (2 * stor77F0)
                                            else:
                                                if userVars[msg.sender][10001] >= 2 * stor77F0:
                                                    return 0
                                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    return ((2 * stor77F0) - userVars[msg.sender][10001])
                                        else:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                if 0 >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                                    return 0
                                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                                    return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
                                            else:
                                                if userVars[msg.sender][10001] >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                                    return 0
                                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001])
                                else:
                                    require Mask(194, 0, stor6E7F) / 25 <= test266151307()
                                    if Mask(192, 0, stor6E7F) >= 100 * Mask(194, 0, stor6E7F) / 25:
                                        if Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) >= 0:
                                            require not Mask(256, -192, uint256(stor6E7F))
                                        else:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                    else:
                                        if Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) >= 0:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                        else:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 2
                                    require (Mask(194, 0, stor6E7F) / 25) + (Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) / 100) <= test266151307()
                                    require uint128((Mask(194, 0, stor6E7F) / 25) + (Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                    if not tokenRewards[msg.sender] - stor8A5A:
                                        if 0 <= 2 * stor77F0:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                if 0 >= 2 * stor77F0:
                                                    return 0
                                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                    return (2 * stor77F0)
                                            else:
                                                if userVars[msg.sender][10001] >= 2 * stor77F0:
                                                    return 0
                                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    return ((2 * stor77F0) - userVars[msg.sender][10001])
                                        else:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                return 0
                                            if userVars[msg.sender][10001] >= 0:
                                                return 0
                                            if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                return -userVars[msg.sender][10001]
                                    else:
                                        require ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) >= 0
                                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                if 0 >= 2 * stor77F0:
                                                    return 0
                                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                    return (2 * stor77F0)
                                            else:
                                                if userVars[msg.sender][10001] >= 2 * stor77F0:
                                                    return 0
                                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    return ((2 * stor77F0) - userVars[msg.sender][10001])
                                        else:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                if 0 >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                                    return 0
                                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                                    return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64))
                                            else:
                                                if userVars[msg.sender][10001] >= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64):
                                                    return 0
                                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    return ((uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001])
    return tokenRewards[msg.sender]
}

function stakeUnclaimedRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
        userVars[msg.sender][10002] = block.timestamp
        userVars[msg.sender][10001] = 0
    if stor8A5A > tokenRewards[msg.sender]:
        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
            require 0 < stor77F0
            if stor77F0 <= tokenRewards[msg.sender]:
                require arg1 <= stor77F0
            else:
                require arg1 <= tokenRewards[msg.sender]
        else:
            require userVars[msg.sender][10001] < stor77F0
            if stor77F0 - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                require arg1 <= stor77F0 - userVars[msg.sender][10001]
            else:
                require arg1 <= tokenRewards[msg.sender]
    else:
        if uint256(stor6E7F) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            require Mask(192, 0, stor6E7F) / 100 <= test266151307()
            require uint128(Mask(192, 0, stor6E7F) / 100) <= 0x7fffffffffffffffffffffffffffffff
            if not tokenRewards[msg.sender] - stor8A5A:
                if 0 <= 2 * stor77F0:
                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                        require 0 < 2 * stor77F0
                        if 2 * stor77F0 <= tokenRewards[msg.sender]:
                            require arg1 <= 2 * stor77F0
                        else:
                            require arg1 <= tokenRewards[msg.sender]
                    else:
                        require userVars[msg.sender][10001] < 2 * stor77F0
                        if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                            require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                        else:
                            require arg1 <= tokenRewards[msg.sender]
                else:
                    require block.timestamp - (24 * 3600) < userVars[msg.sender][10002]
                    require userVars[msg.sender][10001] < 0
                    if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                        require arg1 <= -userVars[msg.sender][10001]
                    else:
                        require arg1 <= tokenRewards[msg.sender]
            else:
                require ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) >= 0
                require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                        require 0 < 2 * stor77F0
                        if 2 * stor77F0 <= tokenRewards[msg.sender]:
                            require arg1 <= 2 * stor77F0
                        else:
                            require arg1 <= tokenRewards[msg.sender]
                    else:
                        require userVars[msg.sender][10001] < 2 * stor77F0
                        if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                            require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                        else:
                            require arg1 <= tokenRewards[msg.sender]
                else:
                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                        require 0 < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                            require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                        else:
                            require arg1 <= tokenRewards[msg.sender]
                    else:
                        require userVars[msg.sender][10001] < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                            require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 100))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001]
                        else:
                            require arg1 <= tokenRewards[msg.sender]
        else:
            if uint64(uint256(stor6E7F)) >> 192 >= 4294967296:
                require Mask(225, 0, stor6E7F) <= test266151307()
                if Mask(192, 0, stor6E7F) >= 100 * Mask(225, 0, stor6E7F):
                    if Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) >= 0:
                        require not Mask(256, -192, uint256(stor6E7F))
                    else:
                        require not (uint64(uint256(stor6E7F)) >> 192) - 1
                else:
                    if Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) >= 0:
                        require not (uint64(uint256(stor6E7F)) >> 192) - 1
                    else:
                        require not (uint64(uint256(stor6E7F)) >> 192) - 2
                require Mask(225, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) / 100) <= test266151307()
                require uint128(Mask(225, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(225, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                if not tokenRewards[msg.sender] - stor8A5A:
                    if 0 <= 2 * stor77F0:
                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                            require 0 < 2 * stor77F0
                            if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                require arg1 <= 2 * stor77F0
                            else:
                                require arg1 <= tokenRewards[msg.sender]
                        else:
                            require userVars[msg.sender][10001] < 2 * stor77F0
                            if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                            else:
                                require arg1 <= tokenRewards[msg.sender]
                    else:
                        require block.timestamp - (24 * 3600) < userVars[msg.sender][10002]
                        require userVars[msg.sender][10001] < 0
                        if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                            require arg1 <= -userVars[msg.sender][10001]
                        else:
                            require arg1 <= tokenRewards[msg.sender]
                else:
                    require ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
                    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                    if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                            require 0 < 2 * stor77F0
                            if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                require arg1 <= 2 * stor77F0
                            else:
                                require arg1 <= tokenRewards[msg.sender]
                        else:
                            require userVars[msg.sender][10001] < 2 * stor77F0
                            if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                            else:
                                require arg1 <= tokenRewards[msg.sender]
                    else:
                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                            require 0 < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                            else:
                                require arg1 <= tokenRewards[msg.sender]
                        else:
                            require userVars[msg.sender][10001] < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 225, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001]
                            else:
                                require arg1 <= tokenRewards[msg.sender]
            else:
                if uint64(uint256(stor6E7F)) >> 192 >= 65536:
                    require Mask(209, 0, stor6E7F) <= test266151307()
                    if Mask(192, 0, stor6E7F) >= 100 * Mask(209, 0, stor6E7F):
                        if Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) >= 0:
                            require not Mask(256, -192, uint256(stor6E7F))
                        else:
                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                    else:
                        if Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) >= 0:
                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                        else:
                            require not (uint64(uint256(stor6E7F)) >> 192) - 2
                    require Mask(209, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) / 100) <= test266151307()
                    require uint128(Mask(209, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(209, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                    if not tokenRewards[msg.sender] - stor8A5A:
                        if 0 <= 2 * stor77F0:
                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                require 0 < 2 * stor77F0
                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                    require arg1 <= 2 * stor77F0
                                else:
                                    require arg1 <= tokenRewards[msg.sender]
                            else:
                                require userVars[msg.sender][10001] < 2 * stor77F0
                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                    require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                else:
                                    require arg1 <= tokenRewards[msg.sender]
                        else:
                            require block.timestamp - (24 * 3600) < userVars[msg.sender][10002]
                            require userVars[msg.sender][10001] < 0
                            if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                require arg1 <= -userVars[msg.sender][10001]
                            else:
                                require arg1 <= tokenRewards[msg.sender]
                    else:
                        require ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                require 0 < 2 * stor77F0
                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                    require arg1 <= 2 * stor77F0
                                else:
                                    require arg1 <= tokenRewards[msg.sender]
                            else:
                                require userVars[msg.sender][10001] < 2 * stor77F0
                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                    require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                else:
                                    require arg1 <= tokenRewards[msg.sender]
                        else:
                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                require 0 < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                    require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                else:
                                    require arg1 <= tokenRewards[msg.sender]
                            else:
                                require userVars[msg.sender][10001] < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                    require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 209, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001]
                                else:
                                    require arg1 <= tokenRewards[msg.sender]
                else:
                    if uint64(uint256(stor6E7F)) >> 192 >= 256:
                        require Mask(201, 0, stor6E7F) <= test266151307()
                        if Mask(192, 0, stor6E7F) >= 100 * Mask(201, 0, stor6E7F):
                            if Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) >= 0:
                                require not Mask(256, -192, uint256(stor6E7F))
                            else:
                                require not (uint64(uint256(stor6E7F)) >> 192) - 1
                        else:
                            if Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) >= 0:
                                require not (uint64(uint256(stor6E7F)) >> 192) - 1
                            else:
                                require not (uint64(uint256(stor6E7F)) >> 192) - 2
                        require Mask(201, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) / 100) <= test266151307()
                        require uint128(Mask(201, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(201, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                        if not tokenRewards[msg.sender] - stor8A5A:
                            if 0 <= 2 * stor77F0:
                                if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                    require 0 < 2 * stor77F0
                                    if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                        require arg1 <= 2 * stor77F0
                                    else:
                                        require arg1 <= tokenRewards[msg.sender]
                                else:
                                    require userVars[msg.sender][10001] < 2 * stor77F0
                                    if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                        require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                    else:
                                        require arg1 <= tokenRewards[msg.sender]
                            else:
                                require block.timestamp - (24 * 3600) < userVars[msg.sender][10002]
                                require userVars[msg.sender][10001] < 0
                                if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                    require arg1 <= -userVars[msg.sender][10001]
                                else:
                                    require arg1 <= tokenRewards[msg.sender]
                        else:
                            require ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
                            require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                            require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                    require 0 < 2 * stor77F0
                                    if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                        require arg1 <= 2 * stor77F0
                                    else:
                                        require arg1 <= tokenRewards[msg.sender]
                                else:
                                    require userVars[msg.sender][10001] < 2 * stor77F0
                                    if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                        require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                    else:
                                        require arg1 <= tokenRewards[msg.sender]
                            else:
                                if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                    require 0 < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                    if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                        require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                    else:
                                        require arg1 <= tokenRewards[msg.sender]
                                else:
                                    require userVars[msg.sender][10001] < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                    if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                        require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 201, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001]
                                    else:
                                        require arg1 <= tokenRewards[msg.sender]
                    else:
                        if uint64(uint256(stor6E7F)) >> 192 >= 16:
                            require Mask(195, 0, stor6E7F) <= test266151307()
                            if Mask(192, 0, stor6E7F) >= 100 * Mask(195, 0, stor6E7F):
                                if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) >= 0:
                                    require not Mask(256, -192, uint256(stor6E7F))
                                else:
                                    require not (uint64(uint256(stor6E7F)) >> 192) - 1
                            else:
                                if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) >= 0:
                                    require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                else:
                                    require not (uint64(uint256(stor6E7F)) >> 192) - 2
                            require Mask(195, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) / 100) <= test266151307()
                            require uint128(Mask(195, 0, stor6E7F) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F)) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                            if not tokenRewards[msg.sender] - stor8A5A:
                                if 0 <= 2 * stor77F0:
                                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                        require 0 < 2 * stor77F0
                                        if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                            require arg1 <= 2 * stor77F0
                                        else:
                                            require arg1 <= tokenRewards[msg.sender]
                                    else:
                                        require userVars[msg.sender][10001] < 2 * stor77F0
                                        if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                            require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                        else:
                                            require arg1 <= tokenRewards[msg.sender]
                                else:
                                    require block.timestamp - (24 * 3600) < userVars[msg.sender][10002]
                                    require userVars[msg.sender][10001] < 0
                                    if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                        require arg1 <= -userVars[msg.sender][10001]
                                    else:
                                        require arg1 <= tokenRewards[msg.sender]
                            else:
                                require ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) >= 0
                                require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                        require 0 < 2 * stor77F0
                                        if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                            require arg1 <= 2 * stor77F0
                                        else:
                                            require arg1 <= tokenRewards[msg.sender]
                                    else:
                                        require userVars[msg.sender][10001] < 2 * stor77F0
                                        if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                            require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                        else:
                                            require arg1 <= tokenRewards[msg.sender]
                                else:
                                    if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                        require 0 < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                            require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                        else:
                                            require arg1 <= tokenRewards[msg.sender]
                                    else:
                                        require userVars[msg.sender][10001] < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                            require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001]
                                        else:
                                            require arg1 <= tokenRewards[msg.sender]
                        else:
                            if uint64(uint256(stor6E7F)) >> 192 >= 4:
                                require Mask(195, 0, stor6E7F) / 13 <= test266151307()
                                if Mask(192, 0, stor6E7F) >= 100 * Mask(195, 0, stor6E7F) / 13:
                                    if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) >= 0:
                                        require not Mask(256, -192, uint256(stor6E7F))
                                    else:
                                        require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                else:
                                    if Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) >= 0:
                                        require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                    else:
                                        require not (uint64(uint256(stor6E7F)) >> 192) - 2
                                require (Mask(195, 0, stor6E7F) / 13) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) / 100) <= test266151307()
                                require uint128((Mask(195, 0, stor6E7F) / 13) + (Mask(192, 0, stor6E7F) - (100 * Mask(195, 0, stor6E7F) / 13) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                if not tokenRewards[msg.sender] - stor8A5A:
                                    if 0 <= 2 * stor77F0:
                                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                            require 0 < 2 * stor77F0
                                            if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                require arg1 <= 2 * stor77F0
                                            else:
                                                require arg1 <= tokenRewards[msg.sender]
                                        else:
                                            require userVars[msg.sender][10001] < 2 * stor77F0
                                            if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                            else:
                                                require arg1 <= tokenRewards[msg.sender]
                                    else:
                                        require block.timestamp - (24 * 3600) < userVars[msg.sender][10002]
                                        require userVars[msg.sender][10001] < 0
                                        if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                            require arg1 <= -userVars[msg.sender][10001]
                                        else:
                                            require arg1 <= tokenRewards[msg.sender]
                                else:
                                    require ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) >= 0
                                    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                    require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                    if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                            require 0 < 2 * stor77F0
                                            if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                require arg1 <= 2 * stor77F0
                                            else:
                                                require arg1 <= tokenRewards[msg.sender]
                                        else:
                                            require userVars[msg.sender][10001] < 2 * stor77F0
                                            if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                            else:
                                                require arg1 <= tokenRewards[msg.sender]
                                    else:
                                        if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                            require 0 < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                                require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                            else:
                                                require arg1 <= tokenRewards[msg.sender]
                                        else:
                                            require userVars[msg.sender][10001] < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                            if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 195, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 13))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001]
                                            else:
                                                require arg1 <= tokenRewards[msg.sender]
                            else:
                                if uint64(uint256(stor6E7F)) >> 192 < 2:
                                    require Mask(193, 0, stor6E7F) / 50 <= test266151307()
                                    if Mask(192, 0, stor6E7F) >= 100 * Mask(193, 0, stor6E7F) / 50:
                                        if Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) >= 0:
                                            require not Mask(256, -192, uint256(stor6E7F))
                                        else:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                    else:
                                        if Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) >= 0:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                        else:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 2
                                    require (Mask(193, 0, stor6E7F) / 50) + (Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) / 100) <= test266151307()
                                    require uint128((Mask(193, 0, stor6E7F) / 50) + (Mask(192, 0, stor6E7F) - (100 * Mask(193, 0, stor6E7F) / 50) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                    if not tokenRewards[msg.sender] - stor8A5A:
                                        if 0 <= 2 * stor77F0:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                require 0 < 2 * stor77F0
                                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                    require arg1 <= 2 * stor77F0
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                            else:
                                                require userVars[msg.sender][10001] < 2 * stor77F0
                                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                        else:
                                            require block.timestamp - (24 * 3600) < userVars[msg.sender][10002]
                                            require userVars[msg.sender][10001] < 0
                                            if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                require arg1 <= -userVars[msg.sender][10001]
                                            else:
                                                require arg1 <= tokenRewards[msg.sender]
                                    else:
                                        require ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) >= 0
                                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                require 0 < 2 * stor77F0
                                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                    require arg1 <= 2 * stor77F0
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                            else:
                                                require userVars[msg.sender][10001] < 2 * stor77F0
                                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                        else:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                require 0 < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                                    require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                            else:
                                                require userVars[msg.sender][10001] < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 193, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 50))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001]
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                else:
                                    require Mask(194, 0, stor6E7F) / 25 <= test266151307()
                                    if Mask(192, 0, stor6E7F) >= 100 * Mask(194, 0, stor6E7F) / 25:
                                        if Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) >= 0:
                                            require not Mask(256, -192, uint256(stor6E7F))
                                        else:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                    else:
                                        if Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) >= 0:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 1
                                        else:
                                            require not (uint64(uint256(stor6E7F)) >> 192) - 2
                                    require (Mask(194, 0, stor6E7F) / 25) + (Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) / 100) <= test266151307()
                                    require uint128((Mask(194, 0, stor6E7F) / 25) + (Mask(192, 0, stor6E7F) - (100 * Mask(194, 0, stor6E7F) / 25) / 100)) <= 0x7fffffffffffffffffffffffffffffff
                                    if not tokenRewards[msg.sender] - stor8A5A:
                                        if 0 <= 2 * stor77F0:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                require 0 < 2 * stor77F0
                                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                    require arg1 <= 2 * stor77F0
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                            else:
                                                require userVars[msg.sender][10001] < 2 * stor77F0
                                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                        else:
                                            require block.timestamp - (24 * 3600) < userVars[msg.sender][10002]
                                            require userVars[msg.sender][10001] < 0
                                            if -userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                require arg1 <= -userVars[msg.sender][10001]
                                            else:
                                                require arg1 <= tokenRewards[msg.sender]
                                    else:
                                        require ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) >= 0
                                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                        require uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                        if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= 2 * stor77F0:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                require 0 < 2 * stor77F0
                                                if 2 * stor77F0 <= tokenRewards[msg.sender]:
                                                    require arg1 <= 2 * stor77F0
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                            else:
                                                require userVars[msg.sender][10001] < 2 * stor77F0
                                                if (2 * stor77F0) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    require arg1 <= (2 * stor77F0) - userVars[msg.sender][10001]
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                        else:
                                            if block.timestamp - (24 * 3600) >= userVars[msg.sender][10002]:
                                                require 0 < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) <= tokenRewards[msg.sender]:
                                                    require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
                                            else:
                                                require userVars[msg.sender][10001] < (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64)
                                                if (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001] <= tokenRewards[msg.sender]:
                                                    require arg1 <= (uint128(tokenRewards[msg.sender] - stor8A5A) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25), ('div', ('add', ('type', 192, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), ('mul', -100, ('div', ('type', 194, ('stor', ('name', 'stor6E7F', 49979242443362758370813548328753801177270426060922154390155180721761695510955))), 25))), 100)))) * uint128(tokenRewards[msg.sender] - stor8A5A)) >> 64) - userVars[msg.sender][10001]
                                                else:
                                                    require arg1 <= tokenRewards[msg.sender]
    require arg1 > 0
    if arg1 > tokenRewards[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenRewards[msg.sender] -= arg1
    userVars[msg.sender][10001] += arg1
    require ext_code.size(promosAddress)
    staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(skillTokenAddress)
        call skillTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stakeFromGameImplAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stakeFromGameImplAddress)
        call stakeFromGameImplAddress.stakeFromGame(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getTokenGainForFight(uint24 arg1) payable {
    require calldata.size - 4 >= 32
    require uint256(stor315F)
    if arg1 % 16777216 <= 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        require uint256(stor315F)
        require arg1 % 16777216 << 64 / uint256(stor315F) <= test266151307()
        require uint128(arg1 % 16777216 << 64 / uint256(stor315F)) <= 0x7fffffffffffffffffffffffffffffff
        if not uint256(stor13B5):
            if 0 > stor67B9:
                if 5 * stor67B9 <= storC45E:
                    return stor67B9
        else:
            require ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) >= 0
            require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
            require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) * uint128(stor13B5)) >> 64)
            if (uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) * uint128(stor13B5)) >> 64) <= stor67B9:
                if (5 * uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) << 64) + (5 * Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) * uint128(stor13B5)) >> 64) <= storC45E:
                    return ((uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('div', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))) * uint128(stor13B5)) >> 64))
            else:
                if 5 * stor67B9 <= storC45E:
                    return stor67B9
    else:
        if arg1 % 16777216 >> 192 >= 4294967296:
            require (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1
            require arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 <= test266151307()
            if arg1 % 16777216 << 64 >= arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(stor315F):
                if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                    require arg1 % 16777216 >> 192 == uint128(arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                else:
                    require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
            else:
                if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                    require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                else:
                    require (arg1 % 16777216 >> 192) - 2 == uint128(arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
            require uint256(stor315F)
            require (arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F)) <= test266151307()
            require uint128((arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 31 / (Mask(223, 0, uint256(stor315F) - 1) >> 33) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F))) <= 0x7fffffffffffffffffffffffffffffff
            if not uint256(stor13B5):
                if 0 > stor67B9:
                    if 5 * stor67B9 <= storC45E:
                        return stor67B9
            else:
                require ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) >= 0
                require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64)
                if (uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= stor67B9:
                    if (5 * uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (5 * Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= storC45E:
                        return ((uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 31, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -33, -33, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64))
                else:
                    if 5 * stor67B9 <= storC45E:
                        return stor67B9
        else:
            if arg1 % 16777216 >> 192 >= 65536:
                require (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1
                require arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 <= test266151307()
                if arg1 % 16777216 << 64 >= arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(stor315F):
                    if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                        require arg1 % 16777216 >> 192 == uint128(arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                    else:
                        require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                else:
                    if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                        require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                    else:
                        require (arg1 % 16777216 >> 192) - 2 == uint128(arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                require uint256(stor315F)
                require (arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F)) <= test266151307()
                require uint128((arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 47 / (Mask(239, 0, uint256(stor315F) - 1) >> 17) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F))) <= 0x7fffffffffffffffffffffffffffffff
                if not uint256(stor13B5):
                    if 0 > stor67B9:
                        if 5 * stor67B9 <= storC45E:
                            return stor67B9
                else:
                    require ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) >= 0
                    require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                    require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64)
                    if (uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= stor67B9:
                        if (5 * uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (5 * Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= storC45E:
                            return ((uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 47, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -17, -17, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64))
                    else:
                        if 5 * stor67B9 <= storC45E:
                            return stor67B9
            else:
                if arg1 % 16777216 >> 192 >= 256:
                    require (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1
                    require arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 <= test266151307()
                    if arg1 % 16777216 << 64 >= arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(stor315F):
                        if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                            require arg1 % 16777216 >> 192 == uint128(arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                        else:
                            require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                    else:
                        if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                            require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                        else:
                            require (arg1 % 16777216 >> 192) - 2 == uint128(arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                    require uint256(stor315F)
                    require (arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F)) <= test266151307()
                    require uint128((arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 55 / (Mask(247, 0, uint256(stor315F) - 1) >> 9) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F))) <= 0x7fffffffffffffffffffffffffffffff
                    if not uint256(stor13B5):
                        if 0 > stor67B9:
                            if 5 * stor67B9 <= storC45E:
                                return stor67B9
                    else:
                        require ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) >= 0
                        require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                        require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64)
                        if (uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= stor67B9:
                            if (5 * uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (5 * Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= storC45E:
                                return ((uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 55, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -9, -9, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64))
                        else:
                            if 5 * stor67B9 <= storC45E:
                                return stor67B9
                else:
                    if arg1 % 16777216 >> 192 >= 16:
                        require (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1
                        require arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 <= test266151307()
                        if arg1 % 16777216 << 64 >= arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(stor315F):
                            if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                                require arg1 % 16777216 >> 192 == uint128(arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                            else:
                                require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                        else:
                            if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                                require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                            else:
                                require (arg1 % 16777216 >> 192) - 2 == uint128(arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                        require uint256(stor315F)
                        require (arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F)) <= test266151307()
                        require uint128((arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 59 / (Mask(251, 0, uint256(stor315F) - 1) * 0.03125) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F))) <= 0x7fffffffffffffffffffffffffffffff
                        if not uint256(stor13B5):
                            if 0 > stor67B9:
                                if 5 * stor67B9 <= storC45E:
                                    return stor67B9
                        else:
                            require ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) >= 0
                            require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                            require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64)
                            if (uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= stor67B9:
                                if (5 * uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (5 * Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= storC45E:
                                    return ((uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 59, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -5, -5, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64))
                            else:
                                if 5 * stor67B9 <= storC45E:
                                    return stor67B9
                    else:
                        if arg1 % 16777216 >> 192 >= 4:
                            require (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1
                            require arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 <= test266151307()
                            if arg1 % 16777216 << 64 >= arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(stor315F):
                                if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                                    require arg1 % 16777216 >> 192 == uint128(arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                else:
                                    require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                            else:
                                if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                                    require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                else:
                                    require (arg1 % 16777216 >> 192) - 2 == uint128(arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                            require uint256(stor315F)
                            require (arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F)) <= test266151307()
                            require uint128((arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 61 / (Mask(253, 0, uint256(stor315F) - 1) * 0.125) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F))) <= 0x7fffffffffffffffffffffffffffffff
                            if not uint256(stor13B5):
                                if 0 > stor67B9:
                                    if 5 * stor67B9 <= storC45E:
                                        return stor67B9
                            else:
                                require ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) >= 0
                                require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64)
                                if (uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= stor67B9:
                                    if (5 * uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (5 * Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= storC45E:
                                        return ((uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 61, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -3, -3, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64))
                                else:
                                    if 5 * stor67B9 <= storC45E:
                                        return stor67B9
                        else:
                            if arg1 % 16777216 >> 192 < 2:
                                require (uint255(uint256(stor315F) - 1) * 0.5) + 1
                                require arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 <= test266151307()
                                if arg1 % 16777216 << 64 >= arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(stor315F):
                                    if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                                        require arg1 % 16777216 >> 192 == uint128(arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                    else:
                                        require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                else:
                                    if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                                        require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                    else:
                                        require (arg1 % 16777216 >> 192) - 2 == uint128(arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                require uint256(stor315F)
                                require (arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F)) <= test266151307()
                                require uint128((arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 63 / (uint255(uint256(stor315F) - 1) * 0.5) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F))) <= 0x7fffffffffffffffffffffffffffffff
                                if not uint256(stor13B5):
                                    if 0 > stor67B9:
                                        if 5 * stor67B9 <= storC45E:
                                            return stor67B9
                                else:
                                    require ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) >= 0
                                    require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                    require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64)
                                    if (uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= stor67B9:
                                        if (5 * uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (5 * Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= storC45E:
                                            return ((uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 63, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -1, -1, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64))
                                    else:
                                        if 5 * stor67B9 <= storC45E:
                                            return stor67B9
                            else:
                                require (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1
                                require arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 <= test266151307()
                                if arg1 % 16777216 << 64 >= arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(stor315F):
                                    if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                                        require arg1 % 16777216 >> 192 == uint128(arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                    else:
                                        require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                else:
                                    if (arg1 % 16777216 << 64) - (arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(stor315F)) >= arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(uint256(stor315F)) >> 128 << 128:
                                        require (arg1 % 16777216 >> 192) - 1 == uint128(arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                    else:
                                        require (arg1 % 16777216 >> 192) - 2 == uint128(arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(uint256(stor315F)) >> 128) >> 128
                                require uint256(stor315F)
                                require (arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F)) <= test266151307()
                                require uint128((arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1) + ((arg1 % 16777216 << 64) - (arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(stor315F)) - (arg1 % 16777216 << 62 / (Mask(254, 0, uint256(stor315F) - 1) * 0.25) + 1 * uint128(uint256(stor315F)) >> 128 << 128) / uint256(stor315F))) <= 0x7fffffffffffffffffffffffffffffff
                                if not uint256(stor13B5):
                                    if 0 > stor67B9:
                                        if 5 * stor67B9 <= storC45E:
                                            return stor67B9
                                else:
                                    require ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) >= 0
                                    require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) <= 0xffffffffffffffffffffffffffffffffffffffffffffffff
                                    require uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64 <= !(Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64)
                                    if (uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= stor67B9:
                                        if (5 * uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (5 * Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64) <= storC45E:
                                            return ((uint128(uint256(stor13B5)) >> 128 * ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) << 64) + (Mask(192, 0, ('signextend', 15, ('signextend', 15, ('add', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('div', ('add', ('mask_shl', 24, 0, 64, ('param', 'arg1')), ('mul', -1, ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('type', 128, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))), ('mul', -1, ('mask_shl', 256, 0, 128, ('mul', ('div', ('mask_shl', 24, 0, 62, ('param', 'arg1')), ('add', 1, ('mask_shl', 256, -2, -2, ('add', -1, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))), ('mask_shl', 256, -128, -128, ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691)))))))), ('type', 256, ('stor', ('name', 'stor315F', 22331277510986619745933508175444455345448867131162016066260175236457566399691))))))) * uint128(stor13B5)) >> 64))
                                    else:
                                        if 5 * stor67B9 <= storC45E:
                                            return stor67B9
    return 0
}



}
