contract main {




// =====================  Runtime code  =====================


#
#  - sub_050ba6ff(?)
#  - sub_a9c7a752(?)
#  - sub_ac02a4c0(?)
#
const getTimeStamp = block.timestamp


address sub_e8614140Address;
uint256 sub_921f4cb4;
uint256 sub_c06b0cc2;
uint256 sub_c63568c7;
uint256 PERCENTS_DIVIDER;
uint256 LOTTERY;
uint256 sub_1714d7f3;
uint256 sub_cf1cdecd;
uint256 MARKETING;
uint256 sub_c580606d;
uint256 sub_d7d23a80;
uint256 sub_d7206d5d;
uint256 sub_c688f0fb;
uint256 sub_752a2628;
uint256 sub_0420c98e;
uint256 sub_ea4319b3;
uint256 sub_878fc432;
uint256 sub_99212eba;
uint256 sub_6cf46a5c;
uint8 sub_e159a338;
uint256 sub_360498d1;
uint256 sub_699b7c4f;
uint256 sub_bdb6ce3d;
uint256 sub_8d1cad09;
uint256 sub_e07661c1;
uint256 sub_e2662c6b;
uint256 sub_c5196426;
uint256 currentPot;
uint256 participants;
uint256 totalTickets;
uint256 totalStaked;
uint256 totalDeposits;
uint256 sub_7db07c9d;
uint256 totalRefBonus;
uint256 totalWithdrawn;
uint256 sub_474a5ec1;
uint256 sub_d4a74553;
uint256 sub_028ef4a5;
uint256 stor39;
uint256 stor40;
uint8 contractStarted;
uint8 sub_bc13e89e; offset 8
uint256 stor41; offset 8
uint256 CUTOFF_STEP;
uint256 MIN_INVEST;
uint256 sub_950d91e9;
uint256 sub_94c2c612;
uint256 sub_1848b8dc;
address owner;
address marketingAddress;
address buybackAddress;
array of struct sub_2a3a0571;
mapping of struct users;
mapping of uint256 userTickets;
mapping of address sub_c361c14d;
array of uint256 stor8083829663499540375293078538272204454004709170470281553193592663933231036055;
array of address stor8083829663499540375293078538272204454004709170470281553193592663933231036056;
array of uint256 stor8083829663499540375293078538272204454004709170470281553193592663933231036057;
array of uint256 stor8083829663499540375293078538272204454004709170470281553193592663933231036058;
array of uint256 stor8083829663499540375293078538272204454004709170470281553193592663933231036059;

function PERCENTS_DIVIDER() {
    return PERCENTS_DIVIDER
}

function sub_028ef4a5(?) {
    return sub_028ef4a5
}

function sub_0420c98e(?) {
    return sub_0420c98e
}

function getUserTickets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userTickets[stor27][address(arg1)]
}

function sub_1714d7f3(?) {
    return sub_1714d7f3
}

function sub_1848b8dc(?) {
    return sub_1848b8dc
}

function MIN_INVEST() {
    return MIN_INVEST
}

function sub_256fd6cc(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return userTickets[arg1][arg2]
}

function sub_2a3a0571(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_2a3a0571.length:
        revert with 0, 50
    return sub_2a3a0571[arg1].field_0, 
           sub_2a3a0571[arg1].field_256,
           sub_2a3a0571[arg1].field_512,
           sub_2a3a0571[arg1].field_768,
           sub_2a3a0571[arg1].field_1024
}

function marketing() {
    return marketingAddress
}

function contractStarted() {
    return bool(contractStarted)
}

function CUTOFF_STEP() {
    return CUTOFF_STEP
}

function sub_360498d1(?) {
    return sub_360498d1
}

function sub_474a5ec1(?) {
    return sub_474a5ec1
}

function LOTTERY() {
    return LOTTERY
}

function totalWithdrawn() {
    return totalWithdrawn
}

function currentPot() {
    return currentPot
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[address(arg1)].field_0, 
           users[address(arg1)].field_256,
           users[address(arg1)].field_512,
           users[address(arg1)].field_768,
           users[address(arg1)].field_1024,
           users[address(arg1)].field_1280,
           users[address(arg1)].field_1536,
           users[address(arg1)].field_1792,
           users[address(arg1)].field_2304,
           users[address(arg1)].field_2048,
           users[address(arg1)].field_2560,
           users[address(arg1)].field_3072,
           users[address(arg1)].field_2816
}

function sub_699b7c4f(?) {
    return sub_699b7c4f
}

function totalRefBonus() {
    return totalRefBonus
}

function participants() {
    return participants
}

function sub_6cf46a5c(?) {
    return sub_6cf46a5c
}

function sub_752a2628(?) {
    return sub_752a2628
}

function totalDeposits() {
    return totalDeposits
}

function sub_7db07c9d(?) {
    return sub_7db07c9d
}

function totalStaked() {
    return totalStaked
}

function sub_878fc432(?) {
    return sub_878fc432
}

function sub_8d1cad09(?) {
    return sub_8d1cad09
}

function owner() {
    return owner
}

function sub_921f4cb4(?) {
    return sub_921f4cb4
}

function sub_94c2c612(?) {
    return sub_94c2c612
}

function sub_950d91e9(?) {
    return sub_950d91e9
}

function sub_99212eba(?) {
    return sub_99212eba
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           users[arg1].field_1024,
           users[arg1].field_1280,
           users[arg1].field_1536,
           users[arg1].field_1792,
           users[arg1].field_2048,
           users[arg1].field_2304,
           users[arg1].field_2560,
           users[arg1].field_2816,
           users[arg1].field_3072
}

function sub_bc13e89e(?) {
    return bool(sub_bc13e89e)
}

function sub_bdb6ce3d(?) {
    return sub_bdb6ce3d
}

function sub_c06b0cc2(?) {
    return sub_c06b0cc2
}

function sub_c361c14d(?) {
    require calldata.size - 4 >= 64
    return sub_c361c14d[arg1][arg2]
}

function sub_c5196426(?) {
    return sub_c5196426
}

function sub_c580606d(?) {
    return sub_c580606d
}

function sub_c63568c7(?) {
    return sub_c63568c7
}

function sub_c688f0fb(?) {
    return sub_c688f0fb
}

function sub_cf1cdecd(?) {
    return sub_cf1cdecd
}

function sub_d4a74553(?) {
    return sub_d4a74553
}

function sub_d7206d5d(?) {
    return sub_d7206d5d
}

function sub_d7d23a80(?) {
    return sub_d7d23a80
}

function totalTickets() {
    return totalTickets
}

function sub_e07661c1(?) {
    return sub_e07661c1
}

function sub_e159a338(?) {
    return bool(sub_e159a338)
}

function getMyWorkers() {
    return users[msg.sender].field_512
}

function sub_e2662c6b(?) {
    return sub_e2662c6b
}

function MARKETING() {
    return MARKETING
}

function sub_e8614140(?) {
    return sub_e8614140Address
}

function sub_ea4319b3(?) {
    return sub_ea4319b3
}

function buyback() {
    return buybackAddress
}

function _fallback() payable {
    revert
}

function getSiteInfo() {
    return totalStaked, totalDeposits, sub_7db07c9d, totalRefBonus, sub_474a5ec1
}

function sub_9a8253c6(?) {
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require contractStarted
    sub_e159a338 = 0
}

function sub_27ce6ee7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 20
    MARKETING = arg1
}

function sub_e6fe62c7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 2
    sub_ea4319b3 = arg1
}

function sub_9b9cb69f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 30
    sub_c688f0fb = arg1
}

function sub_a86b760e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 50
    sub_d7d23a80 = arg1
}

function sub_d4e6ffa6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 50
    sub_c580606d = arg1
}

function sub_bfa9f304(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 500
    sub_0420c98e = arg1
}

function sub_c5ed9050(?) {
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require contractStarted
    sub_e159a338 = 1
    sub_360498d1 = block.timestamp
}

function sub_721253dd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 70000
    sub_028ef4a5 = arg1
}

function sub_2b039d0e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    owner = address(arg1)
}

function sub_e8c2e7f5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 100
    LOTTERY = arg1
}

function sub_78dd52a6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 10
    require arg1 <= 50
    sub_699b7c4f = arg1
}

function sub_b8c770da(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 1
    require arg1 <= 100
    sub_e07661c1 = arg1
}

function sub_e0f5d697(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 2
    require arg1 <= 200
    sub_e2662c6b = arg1
}

function sub_4eba4970(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    marketingAddress = address(arg1)
}

function sub_570c2979(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 100
    sub_c63568c7 = arg1
}

function sub_593c62b3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 100
    sub_1714d7f3 = arg1
}

function sub_6f969d28(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 900
    sub_d7206d5d = arg1
}

function getLotteryTimer() {
    if sub_360498d1 > !sub_bdb6ce3d:
        revert with 0, 17
    if sub_360498d1 + sub_bdb6ce3d < sub_360498d1:
        revert with 0, 1
    return (sub_360498d1 + sub_bdb6ce3d)
}

function sub_93c0d611(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 479520
    require arg1 <= 720 * 24 * 3600
    sub_c06b0cc2 = arg1
}

function sub_f5f50e51(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 479520
    require arg1 <= 720 * 24 * 3600
    sub_921f4cb4 = arg1
}

function sub_45f98c29(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    MIN_INVEST = 10^18 * arg1
}

function sub_bcc20aee(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_8d1cad09 = 10^18 * arg1
}

function getLotteryInfo() {
    return sub_360498d1, 
           sub_bdb6ce3d,
           currentPot,
           participants,
           sub_e2662c6b,
           totalTickets,
           sub_8d1cad09,
           sub_e07661c1,
           sub_699b7c4f,
           sub_c5196426
}

function sub_7ee28e3c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 20
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_1848b8dc = 10^18 * arg1
}

function sub_ad42bfa0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    if arg1:
        require arg1 >= 1
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_94c2c612 = 10^18 * arg1
}

function sub_45a6a6e0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 <= 24
    if 60 * arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    sub_950d91e9 = 3600 * arg1
}

function getBalance() {
    require ext_code.size(sub_e8614140Address)
    staticcall sub_e8614140Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7c8e4b4c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 60 * arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    CUTOFF_STEP = 3600 * arg1
}

function sub_6e65e616(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 60 * arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    sub_bdb6ce3d = 3600 * arg1
}

function sub_959c95b3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 60 * arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    sub_752a2628 = 3600 * arg1
}

function sub_57581209(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg2
    require arg2 <= sub_028ef4a5
    if users[address(arg1)].field_512 > !arg2:
        revert with 0, 17
    if users[address(arg1)].field_512 + arg2 < users[address(arg1)].field_512:
        revert with 0, 1
    users[address(arg1)].field_512 += arg2
}

function getFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        if not PERCENTS_DIVIDER:
            revert with 0, 18
        return (0 / PERCENTS_DIVIDER)
    if arg1 and sub_1714d7f3 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * sub_1714d7f3 / arg1 != sub_1714d7f3:
        revert with 0, 1
    if not PERCENTS_DIVIDER:
        revert with 0, 18
    return (arg1 * sub_1714d7f3 / PERCENTS_DIVIDER)
}

function sub_df8300e1(?) {
    require calldata.size - 4 >= 128
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg2 > 900:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Additional compound bonus max value is 900(90%).'
    if arg3 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Additional referral bonus max value is 100(10%).'
    if arg4 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Additional ticket bonus max value is 100 tickets.'
    stor41 = Mask(248, 0, bool(arg1))
    sub_878fc432 = arg2
    sub_99212eba = arg3
    sub_6cf46a5c = arg4
    return bool(arg1)
}

function sub_50637dbd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not users[address(arg1)].field_2560:
        return 0
    if not users[address(arg1)].field_2560:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 1
        if not PERCENTS_DIVIDER:
            revert with 0, 18
        return (0 / PERCENTS_DIVIDER)
    if users[address(arg1)].field_2560 and sub_d7206d5d > -1 / users[address(arg1)].field_2560:
        revert with 0, 17
    if not users[address(arg1)].field_2560:
        revert with 0, 18
    if users[address(arg1)].field_2560 * sub_d7206d5d / users[address(arg1)].field_2560 != sub_d7206d5d:
        revert with 0, 1
    if not arg2:
        if not PERCENTS_DIVIDER:
            revert with 0, 18
        return (0 / PERCENTS_DIVIDER)
    if arg2 and users[address(arg1)].field_2560 * sub_d7206d5d > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * users[address(arg1)].field_2560 * sub_d7206d5d / arg2 != users[address(arg1)].field_2560 * sub_d7206d5d:
        revert with 0, 1
    if not PERCENTS_DIVIDER:
        revert with 0, 18
    return (arg2 * users[address(arg1)].field_2560 * sub_d7206d5d / PERCENTS_DIVIDER)
}

function sub_94c531b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if users[address(arg1)].field_1280 > block.timestamp:
        revert with 0, 1
    if block.timestamp < users[address(arg1)].field_1280:
        revert with 0, 17
    if block.timestamp - users[address(arg1)].field_1280 < CUTOFF_STEP:
        if sub_921f4cb4 < block.timestamp - users[address(arg1)].field_1280:
            if not sub_921f4cb4:
                return 0
            if sub_921f4cb4 and users[address(arg1)].field_512 > -1 / sub_921f4cb4:
                revert with 0, 17
            if not sub_921f4cb4:
                revert with 0, 18
            if sub_921f4cb4 * users[address(arg1)].field_512 / sub_921f4cb4 != users[address(arg1)].field_512:
                revert with 0, 1
            return (sub_921f4cb4 * users[address(arg1)].field_512)
        if not block.timestamp - users[address(arg1)].field_1280:
            return 0
        if block.timestamp - users[address(arg1)].field_1280 and users[address(arg1)].field_512 > -1 / block.timestamp - users[address(arg1)].field_1280:
            revert with 0, 17
        if not block.timestamp - users[address(arg1)].field_1280:
            revert with 0, 18
        if (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512) / block.timestamp - users[address(arg1)].field_1280 != users[address(arg1)].field_512:
            revert with 0, 1
        return ((block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512))
    if sub_921f4cb4 < CUTOFF_STEP:
        if not sub_921f4cb4:
            return 0
        if sub_921f4cb4 and users[address(arg1)].field_512 > -1 / sub_921f4cb4:
            revert with 0, 17
        if not sub_921f4cb4:
            revert with 0, 18
        if sub_921f4cb4 * users[address(arg1)].field_512 / sub_921f4cb4 != users[address(arg1)].field_512:
            revert with 0, 1
        return (sub_921f4cb4 * users[address(arg1)].field_512)
    if not CUTOFF_STEP:
        return 0
    if CUTOFF_STEP and users[address(arg1)].field_512 > -1 / CUTOFF_STEP:
        revert with 0, 17
    if not CUTOFF_STEP:
        revert with 0, 18
    if CUTOFF_STEP * users[address(arg1)].field_512 / CUTOFF_STEP != users[address(arg1)].field_512:
        revert with 0, 1
    return (CUTOFF_STEP * users[address(arg1)].field_512)
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return (0 / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor40 + (stor40 * arg1 / arg1))
    if stor39 and arg3 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * arg3 / stor39 != arg3:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return (stor39 * arg3 / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return (stor39 * arg3 / stor40 + (stor40 * arg1 / arg1))
    if stor39 and arg2 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * arg2 / stor39 != arg2:
        revert with 0, 1
    if not stor40:
        if stor39 * arg2 > -1:
            revert with 0, 17
        if stor39 * arg2 < stor39 * arg2:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor39 * arg2 / arg1):
            revert with 0, 17
        if stor40 + (stor39 * arg2 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor39 * arg2 / arg1):
            revert with 0, 18
        return (stor39 * arg3 / stor40 + (stor39 * arg2 / arg1))
    if stor40 and arg1 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * arg1 / stor40 != arg1:
        revert with 0, 1
    if stor39 * arg2 > !(stor40 * arg1):
        revert with 0, 17
    if (stor39 * arg2) + (stor40 * arg1) < stor39 * arg2:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor40 > !((stor39 * arg2) + (stor40 * arg1) / arg1):
        revert with 0, 17
    if stor40 + ((stor39 * arg2) + (stor40 * arg1) / arg1) < stor40:
        revert with 0, 1
    if not stor40 + ((stor39 * arg2) + (stor40 * arg1) / arg1):
        revert with 0, 18
    return (stor39 * arg3 / stor40 + ((stor39 * arg2) + (stor40 * arg1) / arg1))
}

function sub_45cdfbe6(?) {
    require calldata.size - 4 >= 64
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return (0 / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor40 + (stor40 * arg1 / arg1))
    if stor39 and sub_d4a74553 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return (stor39 * sub_d4a74553 / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return (stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1))
    if stor39 and arg2 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * arg2 / stor39 != arg2:
        revert with 0, 1
    if not stor40:
        if stor39 * arg2 > -1:
            revert with 0, 17
        if stor39 * arg2 < stor39 * arg2:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor39 * arg2 / arg1):
            revert with 0, 17
        if stor40 + (stor39 * arg2 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor39 * arg2 / arg1):
            revert with 0, 18
        return (stor39 * sub_d4a74553 / stor40 + (stor39 * arg2 / arg1))
    if stor40 and arg1 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * arg1 / stor40 != arg1:
        revert with 0, 1
    if stor39 * arg2 > !(stor40 * arg1):
        revert with 0, 17
    if (stor39 * arg2) + (stor40 * arg1) < stor39 * arg2:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor40 > !((stor39 * arg2) + (stor40 * arg1) / arg1):
        revert with 0, 17
    if stor40 + ((stor39 * arg2) + (stor40 * arg1) / arg1) < stor40:
        revert with 0, 1
    if not stor40 + ((stor39 * arg2) + (stor40 * arg1) / arg1):
        revert with 0, 18
    return (stor39 * sub_d4a74553 / stor40 + ((stor39 * arg2) + (stor40 * arg1) / arg1))
}

function sub_62a06c33(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e8614140Address)
    staticcall sub_e8614140Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return (0 / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor40 + (stor40 * arg1 / arg1))
    if stor39 and ext_call.return_data[0] > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return (stor39 * ext_call.return_data[0] / stor40 + (stor40 * arg1 / arg1))
    if stor39 and sub_d4a74553 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
        revert with 0, 1
    if not stor40:
        if stor39 * sub_d4a74553 > -1:
            revert with 0, 17
        if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor39 * sub_d4a74553 / arg1):
            revert with 0, 17
        if stor40 + (stor39 * sub_d4a74553 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor39 * sub_d4a74553 / arg1):
            revert with 0, 18
        return (stor39 * ext_call.return_data[0] / stor40 + (stor39 * sub_d4a74553 / arg1))
    if stor40 and arg1 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * arg1 / stor40 != arg1:
        revert with 0, 1
    if stor39 * sub_d4a74553 > !(stor40 * arg1):
        revert with 0, 17
    if (stor39 * sub_d4a74553) + (stor40 * arg1) < stor39 * sub_d4a74553:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor40 > !((stor39 * sub_d4a74553) + (stor40 * arg1) / arg1):
        revert with 0, 17
    if stor40 + ((stor39 * sub_d4a74553) + (stor40 * arg1) / arg1) < stor40:
        revert with 0, 1
    if not stor40 + ((stor39 * sub_d4a74553) + (stor40 * arg1) / arg1):
        revert with 0, 18
    return (stor39 * ext_call.return_data[0] / stor40 + ((stor39 * sub_d4a74553) + (stor40 * arg1) / arg1))
}

function sub_98f10159(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e8614140Address)
    staticcall sub_e8614140Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return (0 / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor40 + (stor40 * arg1 / arg1))
    if stor39 and sub_d4a74553 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return (stor39 * sub_d4a74553 / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return (stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1))
    if stor39 and ext_call.return_data[0] > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
        revert with 0, 1
    if not stor40:
        if stor39 * ext_call.return_data[0] > -1:
            revert with 0, 17
        if stor39 * ext_call.return_data[0] < stor39 * ext_call.return_data[0]:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor39 * ext_call.return_data[0] / arg1):
            revert with 0, 17
        if stor40 + (stor39 * ext_call.return_data[0] / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor39 * ext_call.return_data[0] / arg1):
            revert with 0, 18
        return (stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1))
    if stor40 and arg1 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * arg1 / stor40 != arg1:
        revert with 0, 1
    if stor39 * ext_call.return_data[0] > !(stor40 * arg1):
        revert with 0, 17
    if (stor39 * ext_call.return_data[0]) + (stor40 * arg1) < stor39 * ext_call.return_data[0]:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor40 > !((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1):
        revert with 0, 17
    if stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) < stor40:
        revert with 0, 1
    if not stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1):
        revert with 0, 18
    return (stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1))
}

function sub_460d6451(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_e8614140Address)
    staticcall sub_e8614140Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg2:
        revert with 0, 17
    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return (0 / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor40 + (stor40 * arg1 / arg1))
    if stor39 and ext_call.return_data[0] + arg2 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if (ext_call.return_data[0] * stor39) + (arg2 * stor39) / stor39 != ext_call.return_data[0] + arg2:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            return ((ext_call.return_data[0] * stor39) + (arg2 * stor39) / stor40 + (0 / arg1))
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        return ((ext_call.return_data[0] * stor39) + (arg2 * stor39) / stor40 + (stor40 * arg1 / arg1))
    if stor39 and sub_d4a74553 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
        revert with 0, 1
    if not stor40:
        if stor39 * sub_d4a74553 > -1:
            revert with 0, 17
        if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor39 * sub_d4a74553 / arg1):
            revert with 0, 17
        if stor40 + (stor39 * sub_d4a74553 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor39 * sub_d4a74553 / arg1):
            revert with 0, 18
        return ((ext_call.return_data[0] * stor39) + (arg2 * stor39) / stor40 + (stor39 * sub_d4a74553 / arg1))
    if stor40 and arg1 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * arg1 / stor40 != arg1:
        revert with 0, 1
    if stor39 * sub_d4a74553 > !(stor40 * arg1):
        revert with 0, 17
    if (stor39 * sub_d4a74553) + (stor40 * arg1) < stor39 * sub_d4a74553:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor40 > !((stor39 * sub_d4a74553) + (stor40 * arg1) / arg1):
        revert with 0, 17
    if stor40 + ((stor39 * sub_d4a74553) + (stor40 * arg1) / arg1) < stor40:
        revert with 0, 1
    if not stor40 + ((stor39 * sub_d4a74553) + (stor40 * arg1) / arg1):
        revert with 0, 18
    return ((ext_call.return_data[0] * stor39) + (arg2 * stor39) / stor40 + ((stor39 * sub_d4a74553) + (stor40 * arg1) / arg1))
}

function sub_04edc848(?) {
    if users[address(msg.sender)].field_1280 > block.timestamp:
        revert with 0, 1
    if block.timestamp < users[address(msg.sender)].field_1280:
        revert with 0, 17
    if block.timestamp - users[address(msg.sender)].field_1280 < CUTOFF_STEP:
        if sub_921f4cb4 < block.timestamp - users[address(msg.sender)].field_1280:
            if not sub_921f4cb4:
                if users[msg.sender].field_768 > -1:
                    revert with 0, 17
                if users[msg.sender].field_768 < users[msg.sender].field_768:
                    revert with 0, 1
                return users[msg.sender].field_768
            if sub_921f4cb4 and users[address(msg.sender)].field_512 > -1 / sub_921f4cb4:
                revert with 0, 17
            if not sub_921f4cb4:
                revert with 0, 18
            if sub_921f4cb4 * users[address(msg.sender)].field_512 / sub_921f4cb4 != users[address(msg.sender)].field_512:
                revert with 0, 1
            if users[msg.sender].field_768 > !(sub_921f4cb4 * users[address(msg.sender)].field_512):
                revert with 0, 17
            if users[msg.sender].field_768 + (sub_921f4cb4 * users[address(msg.sender)].field_512) < users[msg.sender].field_768:
                revert with 0, 1
            return (users[msg.sender].field_768 + (sub_921f4cb4 * users[address(msg.sender)].field_512))
        if not block.timestamp - users[address(msg.sender)].field_1280:
            if users[msg.sender].field_768 > -1:
                revert with 0, 17
            if users[msg.sender].field_768 < users[msg.sender].field_768:
                revert with 0, 1
            return users[msg.sender].field_768
        if block.timestamp - users[address(msg.sender)].field_1280 and users[address(msg.sender)].field_512 > -1 / block.timestamp - users[address(msg.sender)].field_1280:
            revert with 0, 17
        if not block.timestamp - users[address(msg.sender)].field_1280:
            revert with 0, 18
        if (block.timestamp * users[address(msg.sender)].field_512) - (users[address(msg.sender)].field_1280 * users[address(msg.sender)].field_512) / block.timestamp - users[address(msg.sender)].field_1280 != users[address(msg.sender)].field_512:
            revert with 0, 1
        if users[msg.sender].field_768 > !((block.timestamp * users[address(msg.sender)].field_512) - (users[address(msg.sender)].field_1280 * users[address(msg.sender)].field_512)):
            revert with 0, 17
        if users[msg.sender].field_768 + (block.timestamp * users[address(msg.sender)].field_512) - (users[address(msg.sender)].field_1280 * users[address(msg.sender)].field_512) < users[msg.sender].field_768:
            revert with 0, 1
        return (users[msg.sender].field_768 + (block.timestamp * users[address(msg.sender)].field_512) - (users[address(msg.sender)].field_1280 * users[address(msg.sender)].field_512))
    if sub_921f4cb4 < CUTOFF_STEP:
        if not sub_921f4cb4:
            if users[msg.sender].field_768 > -1:
                revert with 0, 17
            if users[msg.sender].field_768 < users[msg.sender].field_768:
                revert with 0, 1
            return users[msg.sender].field_768
        if sub_921f4cb4 and users[address(msg.sender)].field_512 > -1 / sub_921f4cb4:
            revert with 0, 17
        if not sub_921f4cb4:
            revert with 0, 18
        if sub_921f4cb4 * users[address(msg.sender)].field_512 / sub_921f4cb4 != users[address(msg.sender)].field_512:
            revert with 0, 1
        if users[msg.sender].field_768 > !(sub_921f4cb4 * users[address(msg.sender)].field_512):
            revert with 0, 17
        if users[msg.sender].field_768 + (sub_921f4cb4 * users[address(msg.sender)].field_512) < users[msg.sender].field_768:
            revert with 0, 1
        return (users[msg.sender].field_768 + (sub_921f4cb4 * users[address(msg.sender)].field_512))
    if not CUTOFF_STEP:
        if users[msg.sender].field_768 > -1:
            revert with 0, 17
        if users[msg.sender].field_768 < users[msg.sender].field_768:
            revert with 0, 1
        return users[msg.sender].field_768
    if CUTOFF_STEP and users[address(msg.sender)].field_512 > -1 / CUTOFF_STEP:
        revert with 0, 17
    if not CUTOFF_STEP:
        revert with 0, 18
    if CUTOFF_STEP * users[address(msg.sender)].field_512 / CUTOFF_STEP != users[address(msg.sender)].field_512:
        revert with 0, 1
    if users[msg.sender].field_768 > !(CUTOFF_STEP * users[address(msg.sender)].field_512):
        revert with 0, 17
    if users[msg.sender].field_768 + (CUTOFF_STEP * users[address(msg.sender)].field_512) < users[msg.sender].field_768:
        revert with 0, 1
    return (users[msg.sender].field_768 + (CUTOFF_STEP * users[address(msg.sender)].field_512))
}

function chooseWinner() {
    if sub_360498d1 > block.timestamp:
        revert with 0, 1
    if block.timestamp < sub_360498d1:
        revert with 0, 17
    if block.timestamp - sub_360498d1 < sub_bdb6ce3d:
        if participants < sub_e2662c6b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Lottery must run for LOTTERY_STEP or there must be MAX_LOTTERY_PARTICIPANTS particpants'
    if not participants:
        sub_360498d1 = block.timestamp
    else:
        if participants > test266151307():
            revert with 0, 65
        if participants:
            mem[128 len 32 * participants] = call.data[calldata.size len 32 * participants]
        if participants > test266151307():
            revert with 0, 65
        mem[(32 * participants) + 128] = participants
        if participants:
            mem[(32 * participants) + 160 len 32 * participants] = call.data[calldata.size len 32 * participants]
        idx = 0
        s = 0
        while idx < participants:
            if s > -2:
                revert with 0, 17
            if s + 1 < s:
                revert with 0, 1
            mem[0] = sub_c361c14d[stor27][idx]
            mem[32] = sha3(sub_c5196426, 52)
            if s + 1 > !(userTickets[stor27][stor53[stor27][idx]] / 10^18):
                revert with 0, 17
            if userTickets[stor27][stor53[stor27][idx]] / 10^18 < 0:
                revert with 0, 1
            if idx >= participants:
                revert with 0, 50
            mem[(32 * idx) + 128] = s + 1
            if idx >= mem[(32 * participants) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * participants) + 160] = s + (userTickets[stor27][stor53[stor27][idx]] / 10^18) + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (userTickets[stor27][stor53[stor27][idx]] / 10^18) + 1
            continue 
        if block.number < 1:
            revert with 0, 17
        mem[(64 * participants) + 164] = this.address
        require ext_code.size(sub_e8614140Address)
        staticcall sub_e8614140Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(64 * participants) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * participants) + ceil32(return_data.size) + 192] = block.hash(block.number - 1)
        mem[(64 * participants) + ceil32(return_data.size) + 224] = block.timestamp
        mem[(64 * participants) + ceil32(return_data.size) + 256] = currentPot
        mem[(64 * participants) + ceil32(return_data.size) + 288] = block.difficulty
        mem[(64 * participants) + ceil32(return_data.size) + 320] = sub_d4a74553
        mem[(64 * participants) + ceil32(return_data.size) + 352] = ext_call.return_data[0]
        mem[(64 * participants) + ceil32(return_data.size) + 160] = 192
        require participants
        if sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, sub_d4a74553, ext_call.return_data[0]) % participants > -2:
            revert with 0, 17
        if (sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, sub_d4a74553, ext_call.return_data[0]) % participants) + 1 < sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, sub_d4a74553, ext_call.return_data[0]) % participants:
            revert with 0, 1
        idx = 0
        while idx < participants:
            if idx >= participants:
                revert with 0, 50
            if (sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, sub_d4a74553, ext_call.return_data[0]) % participants) + 1 < mem[(32 * idx) + 128]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[(32 * participants) + 128]:
                revert with 0, 50
            if (sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, sub_d4a74553, ext_call.return_data[0]) % participants) + 1 > mem[(32 * idx) + (32 * participants) + 160]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not currentPot:
                require ext_code.size(sub_e8614140Address)
                staticcall sub_e8614140Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                if not stor39:
                    if stor40:
                        if stor40 and 0 > -1 / stor40:
                            revert with 0, 17
                        if stor40:
                            if 0 / stor40:
                                revert with 0, 1
                else:
                    if stor39 and sub_d4a74553 > -1 / stor39:
                        revert with 0, 17
                    if stor39:
                        if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
                            revert with 0, 1
                        if not stor39:
                            if stor40:
                                if stor40 and 0 > -1 / stor40:
                                    revert with 0, 17
                                if stor40:
                                    if 0 / stor40:
                                        revert with 0, 1
                        else:
                            if stor39 and ext_call.return_data[0] > -1 / stor39:
                                revert with 0, 17
                            if stor39:
                                if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
                                    revert with 0, 1
                                if not stor40:
                                    if stor39 * ext_call.return_data[0] > -1:
                                        revert with 0, 17
                                    if stor39 * ext_call.return_data[0] < stor39 * ext_call.return_data[0]:
                                        revert with 0, 1
                                else:
                                    if stor40 and 0 > -1 / stor40:
                                        revert with 0, 17
                                    if stor40:
                                        if 0 / stor40:
                                            revert with 0, 1
                                        if stor39 * ext_call.return_data[0] > -1:
                                            revert with 0, 17
                                        if stor39 * ext_call.return_data[0] < stor39 * ext_call.return_data[0]:
                                            revert with 0, 1
                revert with 0, 18
            if currentPot and 9 > -1 / currentPot:
                revert with 0, 17
            if not currentPot:
                revert with 0, 18
            if 9 * currentPot / currentPot != 9:
                revert with 0, 1
            require ext_code.size(sub_e8614140Address)
            staticcall sub_e8614140Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 9 * currentPot / 10 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 9 * currentPot / 10:
                revert with 0, 17
            if not stor39:
                if not stor40:
                    if not 9 * currentPot / 10:
                        revert with 0, 18
                    if stor40 > !(0 / 9 * currentPot / 10):
                        revert with 0, 17
                    if stor40 + (0 / 9 * currentPot / 10) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / 9 * currentPot / 10):
                        revert with 0, 18
                    if not sub_c06b0cc2:
                        revert with 0, 18
                    if users[stor53[stor27][idx]].field_512 > !(0 / stor40 + (0 / 9 * currentPot / 10) / sub_c06b0cc2):
                        revert with 0, 17
                    if users[stor53[stor27][idx]].field_512 + (0 / stor40 + (0 / 9 * currentPot / 10) / sub_c06b0cc2) < users[stor53[stor27][idx]].field_512:
                        revert with 0, 1
                    users[stor53[stor27][idx]].field_512 += 0 / stor40 + (0 / 9 * currentPot / 10) / sub_c06b0cc2
                    if users[stor53[stor27][idx]].field_1024 > !(0 / stor40 + (0 / 9 * currentPot / 10)):
                        revert with 0, 17
                    if users[stor53[stor27][idx]].field_1024 + (0 / stor40 + (0 / 9 * currentPot / 10)) < users[stor53[stor27][idx]].field_1024:
                        revert with 0, 1
                    users[stor53[stor27][idx]].field_1024 += 0 / stor40 + (0 / 9 * currentPot / 10)
                    if sub_474a5ec1 > !(0 / stor40 + (0 / 9 * currentPot / 10)):
                        revert with 0, 17
                    if sub_474a5ec1 + (0 / stor40 + (0 / 9 * currentPot / 10)) < sub_474a5ec1:
                        revert with 0, 1
                    sub_474a5ec1 += 0 / stor40 + (0 / 9 * currentPot / 10)
                else:
                    if stor40 and 9 * currentPot / 10 > -1 / stor40:
                        revert with 0, 17
                    if not stor40:
                        revert with 0, 18
                    if stor40 * 9 * currentPot / 10 / stor40 != 9 * currentPot / 10:
                        revert with 0, 1
                    if 0 > !(stor40 * 9 * currentPot / 10):
                        revert with 0, 17
                    if stor40 * 9 * currentPot / 10 < 0:
                        revert with 0, 1
                    if not 9 * currentPot / 10:
                        revert with 0, 18
                    if stor40 > !(stor40 * 9 * currentPot / 10 / 9 * currentPot / 10):
                        revert with 0, 17
                    if stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10) < stor40:
                        revert with 0, 1
                    if not stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10):
                        revert with 0, 18
                    if not sub_c06b0cc2:
                        revert with 0, 18
                    if users[stor53[stor27][idx]].field_512 > !(0 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_c06b0cc2):
                        revert with 0, 17
                    if users[stor53[stor27][idx]].field_512 + (0 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_c06b0cc2) < users[stor53[stor27][idx]].field_512:
                        revert with 0, 1
                    users[stor53[stor27][idx]].field_512 += 0 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_c06b0cc2
                    if users[stor53[stor27][idx]].field_1024 > !(0 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)):
                        revert with 0, 17
                    if users[stor53[stor27][idx]].field_1024 + (0 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)) < users[stor53[stor27][idx]].field_1024:
                        revert with 0, 1
                    users[stor53[stor27][idx]].field_1024 += 0 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)
                    if sub_474a5ec1 > !(0 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)):
                        revert with 0, 17
                    if sub_474a5ec1 + (0 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)) < sub_474a5ec1:
                        revert with 0, 1
                    sub_474a5ec1 += 0 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)
            else:
                if stor39 and sub_d4a74553 > -1 / stor39:
                    revert with 0, 17
                if not stor39:
                    revert with 0, 18
                if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
                    revert with 0, 1
                if not stor39:
                    if not stor40:
                        if not 9 * currentPot / 10:
                            revert with 0, 18
                        if stor40 > !(0 / 9 * currentPot / 10):
                            revert with 0, 17
                        if stor40 + (0 / 9 * currentPot / 10) < stor40:
                            revert with 0, 1
                        if not stor40 + (0 / 9 * currentPot / 10):
                            revert with 0, 18
                        if not sub_c06b0cc2:
                            revert with 0, 18
                        if users[stor53[stor27][idx]].field_512 > !(stor39 * sub_d4a74553 / stor40 + (0 / 9 * currentPot / 10) / sub_c06b0cc2):
                            revert with 0, 17
                        if users[stor53[stor27][idx]].field_512 + (stor39 * sub_d4a74553 / stor40 + (0 / 9 * currentPot / 10) / sub_c06b0cc2) < users[stor53[stor27][idx]].field_512:
                            revert with 0, 1
                        users[stor53[stor27][idx]].field_512 += stor39 * sub_d4a74553 / stor40 + (0 / 9 * currentPot / 10) / sub_c06b0cc2
                        if users[stor53[stor27][idx]].field_1024 > !(stor39 * sub_d4a74553 / stor40 + (0 / 9 * currentPot / 10)):
                            revert with 0, 17
                        if users[stor53[stor27][idx]].field_1024 + (stor39 * sub_d4a74553 / stor40 + (0 / 9 * currentPot / 10)) < users[stor53[stor27][idx]].field_1024:
                            revert with 0, 1
                        users[stor53[stor27][idx]].field_1024 += stor39 * sub_d4a74553 / stor40 + (0 / 9 * currentPot / 10)
                        if sub_474a5ec1 > !(stor39 * sub_d4a74553 / stor40 + (0 / 9 * currentPot / 10)):
                            revert with 0, 17
                        if sub_474a5ec1 + (stor39 * sub_d4a74553 / stor40 + (0 / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 0, 1
                        sub_474a5ec1 += stor39 * sub_d4a74553 / stor40 + (0 / 9 * currentPot / 10)
                    else:
                        if stor40 and 9 * currentPot / 10 > -1 / stor40:
                            revert with 0, 17
                        if not stor40:
                            revert with 0, 18
                        if stor40 * 9 * currentPot / 10 / stor40 != 9 * currentPot / 10:
                            revert with 0, 1
                        if 0 > !(stor40 * 9 * currentPot / 10):
                            revert with 0, 17
                        if stor40 * 9 * currentPot / 10 < 0:
                            revert with 0, 1
                        if not 9 * currentPot / 10:
                            revert with 0, 18
                        if stor40 > !(stor40 * 9 * currentPot / 10 / 9 * currentPot / 10):
                            revert with 0, 17
                        if stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10) < stor40:
                            revert with 0, 1
                        if not stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10):
                            revert with 0, 18
                        if not sub_c06b0cc2:
                            revert with 0, 18
                        if users[stor53[stor27][idx]].field_512 > !(stor39 * sub_d4a74553 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_c06b0cc2):
                            revert with 0, 17
                        if users[stor53[stor27][idx]].field_512 + (stor39 * sub_d4a74553 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_c06b0cc2) < users[stor53[stor27][idx]].field_512:
                            revert with 0, 1
                        users[stor53[stor27][idx]].field_512 += stor39 * sub_d4a74553 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_c06b0cc2
                        if users[stor53[stor27][idx]].field_1024 > !(stor39 * sub_d4a74553 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)):
                            revert with 0, 17
                        if users[stor53[stor27][idx]].field_1024 + (stor39 * sub_d4a74553 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)) < users[stor53[stor27][idx]].field_1024:
                            revert with 0, 1
                        users[stor53[stor27][idx]].field_1024 += stor39 * sub_d4a74553 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)
                        if sub_474a5ec1 > !(stor39 * sub_d4a74553 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)):
                            revert with 0, 17
                        if sub_474a5ec1 + (stor39 * sub_d4a74553 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 0, 1
                        sub_474a5ec1 += stor39 * sub_d4a74553 / stor40 + (stor40 * 9 * currentPot / 10 / 9 * currentPot / 10)
                else:
                    if stor39 and ext_call.return_data[0] - (9 * currentPot / 10) > -1 / stor39:
                        revert with 0, 17
                    if not stor39:
                        revert with 0, 18
                    if (ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / stor39 != ext_call.return_data[0] - (9 * currentPot / 10):
                        revert with 0, 1
                    if not stor40:
                        if (ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) > -1:
                            revert with 0, 17
                        if not 9 * currentPot / 10:
                            revert with 0, 18
                        if stor40 > !((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10):
                            revert with 0, 17
                        if stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10) < stor40:
                            revert with 0, 1
                        if not stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10):
                            revert with 0, 18
                        if not sub_c06b0cc2:
                            revert with 0, 18
                        if users[stor53[stor27][idx]].field_512 > !(stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10) / sub_c06b0cc2):
                            revert with 0, 17
                        if users[stor53[stor27][idx]].field_512 + (stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10) / sub_c06b0cc2) < users[stor53[stor27][idx]].field_512:
                            revert with 0, 1
                        users[stor53[stor27][idx]].field_512 += stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10) / sub_c06b0cc2
                        if users[stor53[stor27][idx]].field_1024 > !(stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10)):
                            revert with 0, 17
                        if users[stor53[stor27][idx]].field_1024 + (stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10)) < users[stor53[stor27][idx]].field_1024:
                            revert with 0, 1
                        users[stor53[stor27][idx]].field_1024 += stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10)
                        if sub_474a5ec1 > !(stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10)):
                            revert with 0, 17
                        if sub_474a5ec1 + (stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 0, 1
                        sub_474a5ec1 += stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) / 9 * currentPot / 10)
                    else:
                        if stor40 and 9 * currentPot / 10 > -1 / stor40:
                            revert with 0, 17
                        if not stor40:
                            revert with 0, 18
                        if stor40 * 9 * currentPot / 10 / stor40 != 9 * currentPot / 10:
                            revert with 0, 1
                        if (ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) > !(stor40 * 9 * currentPot / 10):
                            revert with 0, 17
                        if stor40 * 9 * currentPot / 10 < 0:
                            revert with 0, 1
                        if not 9 * currentPot / 10:
                            revert with 0, 18
                        if stor40 > !((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10):
                            revert with 0, 17
                        if stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10) < stor40:
                            revert with 0, 1
                        if not stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10):
                            revert with 0, 18
                        if not sub_c06b0cc2:
                            revert with 0, 18
                        if users[stor53[stor27][idx]].field_512 > !(stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10) / sub_c06b0cc2):
                            revert with 0, 17
                        if users[stor53[stor27][idx]].field_512 + (stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10) / sub_c06b0cc2) < users[stor53[stor27][idx]].field_512:
                            revert with 0, 1
                        users[stor53[stor27][idx]].field_512 += stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10) / sub_c06b0cc2
                        if users[stor53[stor27][idx]].field_1024 > !(stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10)):
                            revert with 0, 17
                        if users[stor53[stor27][idx]].field_1024 + (stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10)) < users[stor53[stor27][idx]].field_1024:
                            revert with 0, 1
                        users[stor53[stor27][idx]].field_1024 += stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10)
                        if sub_474a5ec1 > !(stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10)):
                            revert with 0, 17
                        if sub_474a5ec1 + (stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 0, 1
                        sub_474a5ec1 += stor39 * sub_d4a74553 / stor40 + ((ext_call.return_data[0] * stor39) - (9 * currentPot / 10 * stor39) + (stor40 * 9 * currentPot / 10) / 9 * currentPot / 10)
            if not currentPot:
                if not PERCENTS_DIVIDER:
                    revert with 0, 18
                require ext_code.size(sub_e8614140Address)
                call sub_e8614140Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args buybackAddress, 0 / PERCENTS_DIVIDER
            else:
                if currentPot and LOTTERY > -1 / currentPot:
                    revert with 0, 17
                if not currentPot:
                    revert with 0, 18
                if currentPot * LOTTERY / currentPot != LOTTERY:
                    revert with 0, 1
                if not PERCENTS_DIVIDER:
                    revert with 0, 18
                require ext_code.size(sub_e8614140Address)
                call sub_e8614140Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args buybackAddress, currentPot * LOTTERY / PERCENTS_DIVIDER
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            sub_2a3a0571.length++
            stor11DF[stor50.length] = sub_c5196426
            stor11DF[stor50.length] = sub_c361c14d[stor27][idx]
            stor11DF[stor50.length] = 9 * currentPot / 10
            stor11DF[stor50.length] = participants
            stor11DF[stor50.length] = totalTickets
            emit LotteryWinner((9 * currentPot / 10), sub_c361c14d[stor27][idx], sub_c5196426);
            currentPot = 0
            participants = 0
            totalTickets = 0
            sub_360498d1 = block.timestamp
            if sub_c5196426 > -2:
                revert with 0, 17
            if sub_c5196426 + 1 < sub_c5196426:
                revert with 0, 1
            sub_c5196426++
}

function sub_f64ef654(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e8614140Address)
    staticcall sub_e8614140Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 1
    if arg1 > ext_call.return_data[0] + arg1:
        revert with 0, 1
    if ext_call.return_data[0] + arg1 < arg1:
        revert with 0, 17
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            if not sub_921f4cb4:
                revert with 0, 18
            if 0 / stor40 + (0 / arg1) / sub_921f4cb4 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 0, 17
            if 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 != 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                revert with 0, 1
            require ext_code.size(sub_e8614140Address)
            staticcall sub_e8614140Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !arg1:
                revert with 0, 17
            if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                revert with 0, 1
            if not stor39:
                if not stor40:
                    if not 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                        revert with 0, 18
                    if stor40 > !(0 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                        revert with 0, 17
                    if stor40 + (0 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                        revert with 0, 18
                    return 0 / stor40 + (0 / arg1) / sub_921f4cb4, 0 / stor40 + (0 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4)
                if stor40 and 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if 24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if 24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 < 0:
                    revert with 0, 1
                if not 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return 0 / stor40 + (0 / arg1) / sub_921f4cb4, 
                       0 / stor40 + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4)
            if stor39 and ext_call.return_data[0] + arg1 > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor39 != ext_call.return_data[0] + arg1:
                revert with 0, 1
            if not stor39:
                if not stor40:
                    if not 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                        revert with 0, 18
                    if stor40 > !(0 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                        revert with 0, 17
                    if stor40 + (0 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                        revert with 0, 18
                    return 0 / stor40 + (0 / arg1) / sub_921f4cb4, 
                           (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (0 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4)
                if stor40 and 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if 24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if 24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 < 0:
                    revert with 0, 1
                if not 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return 0 / stor40 + (0 / arg1) / sub_921f4cb4, 
                       (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4)
            if stor39 and sub_d4a74553 > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
                revert with 0, 1
            if not stor40:
                if stor39 * sub_d4a74553 > -1:
                    revert with 0, 17
                if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                    revert with 0, 1
                if not 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(stor39 * sub_d4a74553 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return 0 / stor40 + (0 / arg1) / sub_921f4cb4, 
                       (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4)
            if stor40 and 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if 24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                revert with 0, 1
            if stor39 * sub_d4a74553 > !(24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if (stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) < stor39 * sub_d4a74553:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4):
                revert with 0, 18
            return 0 / stor40 + (0 / arg1) / sub_921f4cb4, 
                   (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (0 / arg1) / sub_921f4cb4) / 24 * 3600 * 0 / stor40 + (0 / arg1) / sub_921f4cb4)
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        if not sub_921f4cb4:
            revert with 0, 18
        if 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 != 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
            revert with 0, 1
        require ext_code.size(sub_e8614140Address)
        staticcall sub_e8614140Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg1:
            revert with 0, 17
        if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
            revert with 0, 1
        if not stor39:
            if not stor40:
                if not 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(0 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (0 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                       0 / stor40 + (0 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
            if stor40 and 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if 24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if 24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 < 0:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 18
            return 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                   0 / stor40 + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
        if stor39 and ext_call.return_data[0] + arg1 > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor39 != ext_call.return_data[0] + arg1:
            revert with 0, 1
        if not stor39:
            if not stor40:
                if not 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(0 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (0 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                       (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (0 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
            if stor40 and 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if 24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if 24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 < 0:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 18
            return 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                   (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
        if stor39 and sub_d4a74553 > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
            revert with 0, 1
        if not stor40:
            if stor39 * sub_d4a74553 > -1:
                revert with 0, 17
            if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(stor39 * sub_d4a74553 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 18
            return 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                   (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
        if stor40 and 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if 24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
            revert with 0, 1
        if stor39 * sub_d4a74553 > !(24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
            revert with 0, 17
        if (stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor39 * sub_d4a74553:
            revert with 0, 1
        if not 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
            revert with 0, 18
        if stor40 > !((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
            revert with 0, 17
        if stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
            revert with 0, 1
        if not stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
            revert with 0, 18
        return 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
               (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) / 24 * 3600 * 0 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
    if stor39 and sub_d4a74553 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not arg1:
                revert with 0, 18
            if stor40 > !(0 / arg1):
                revert with 0, 17
            if stor40 + (0 / arg1) < stor40:
                revert with 0, 1
            if not stor40 + (0 / arg1):
                revert with 0, 18
            if not sub_921f4cb4:
                revert with 0, 18
            if stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 0, 17
            if 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 != stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                revert with 0, 1
            require ext_code.size(sub_e8614140Address)
            staticcall sub_e8614140Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !arg1:
                revert with 0, 17
            if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                revert with 0, 1
            if not stor39:
                if not stor40:
                    if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                        revert with 0, 18
                    if stor40 > !(0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                        revert with 0, 17
                    if stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                        revert with 0, 18
                    return stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4, 
                           0 / stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4)
                if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 < 0:
                    revert with 0, 1
                if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4, 
                       0 / stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4)
            if stor39 and ext_call.return_data[0] + arg1 > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor39 != ext_call.return_data[0] + arg1:
                revert with 0, 1
            if not stor39:
                if not stor40:
                    if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                        revert with 0, 18
                    if stor40 > !(0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                        revert with 0, 17
                    if stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                        revert with 0, 18
                    return stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4, 
                           (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4)
                if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 < 0:
                    revert with 0, 1
                if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4, 
                       (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4)
            if stor39 and sub_d4a74553 > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
                revert with 0, 1
            if not stor40:
                if stor39 * sub_d4a74553 > -1:
                    revert with 0, 17
                if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                    revert with 0, 1
                if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4, 
                       (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4)
            if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                revert with 0, 1
            if stor39 * sub_d4a74553 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if (stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) < stor39 * sub_d4a74553:
                revert with 0, 1
            if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4):
                revert with 0, 18
            return stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4, 
                   (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (0 / arg1) / sub_921f4cb4)
        if stor40 and arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * arg1 / stor40 != arg1:
            revert with 0, 1
        if 0 > !(stor40 * arg1):
            revert with 0, 17
        if stor40 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor40 * arg1 / arg1):
            revert with 0, 17
        if stor40 + (stor40 * arg1 / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor40 * arg1 / arg1):
            revert with 0, 18
        if not sub_921f4cb4:
            revert with 0, 18
        if stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 != stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
            revert with 0, 1
        require ext_code.size(sub_e8614140Address)
        staticcall sub_e8614140Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg1:
            revert with 0, 17
        if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
            revert with 0, 1
        if not stor39:
            if not stor40:
                if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                       0 / stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
            if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 18
            return stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                   0 / stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
        if stor39 and ext_call.return_data[0] + arg1 > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor39 != ext_call.return_data[0] + arg1:
            revert with 0, 1
        if not stor39:
            if not stor40:
                if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                       (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
            if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 18
            return stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                   (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
        if stor39 and sub_d4a74553 > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
            revert with 0, 1
        if not stor40:
            if stor39 * sub_d4a74553 > -1:
                revert with 0, 17
            if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                revert with 0, 1
            if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
                revert with 0, 18
            return stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
                   (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
        if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
            revert with 0, 1
        if stor39 * sub_d4a74553 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
            revert with 0, 17
        if (stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor39 * sub_d4a74553:
            revert with 0, 1
        if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4:
            revert with 0, 18
        if stor40 > !((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
            revert with 0, 17
        if stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) < stor40:
            revert with 0, 1
        if not stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4):
            revert with 0, 18
        return stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4, 
               (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor40 * arg1 / arg1) / sub_921f4cb4)
    if stor39 and ext_call.return_data[0] > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
        revert with 0, 1
    if not stor40:
        if stor39 * ext_call.return_data[0] > -1:
            revert with 0, 17
        if stor39 * ext_call.return_data[0] < stor39 * ext_call.return_data[0]:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor40 > !(stor39 * ext_call.return_data[0] / arg1):
            revert with 0, 17
        if stor40 + (stor39 * ext_call.return_data[0] / arg1) < stor40:
            revert with 0, 1
        if not stor40 + (stor39 * ext_call.return_data[0] / arg1):
            revert with 0, 18
        if not sub_921f4cb4:
            revert with 0, 18
        if stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / 24 * 3600 != stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
            revert with 0, 1
        require ext_code.size(sub_e8614140Address)
        staticcall sub_e8614140Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg1:
            revert with 0, 17
        if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
            revert with 0, 1
        if not stor39:
            if not stor40:
                if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4, 
                       0 / stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4)
            if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                revert with 0, 17
            if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                revert with 0, 18
            return stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4, 
                   0 / stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4)
        if stor39 and ext_call.return_data[0] + arg1 > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor39 != ext_call.return_data[0] + arg1:
            revert with 0, 1
        if not stor39:
            if not stor40:
                if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
                    revert with 0, 18
                if stor40 > !(0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                    revert with 0, 17
                if stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                    revert with 0, 18
                return stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4, 
                       (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4)
            if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                revert with 0, 17
            if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                revert with 0, 18
            return stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4, 
                   (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4)
        if stor39 and sub_d4a74553 > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
            revert with 0, 1
        if not stor40:
            if stor39 * sub_d4a74553 > -1:
                revert with 0, 17
            if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                revert with 0, 1
            if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
                revert with 0, 18
            return stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4, 
                   (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4)
        if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
            revert with 0, 1
        if stor39 * sub_d4a74553 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
            revert with 0, 17
        if (stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) < stor39 * sub_d4a74553:
            revert with 0, 1
        if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4:
            revert with 0, 18
        if stor40 > !((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
            revert with 0, 17
        if stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) < stor40:
            revert with 0, 1
        if not stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4):
            revert with 0, 18
        return stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4, 
               (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + (stor39 * ext_call.return_data[0] / arg1) / sub_921f4cb4)
    if stor40 and arg1 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * arg1 / stor40 != arg1:
        revert with 0, 1
    if stor39 * ext_call.return_data[0] > !(stor40 * arg1):
        revert with 0, 17
    if (stor39 * ext_call.return_data[0]) + (stor40 * arg1) < stor39 * ext_call.return_data[0]:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor40 > !((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1):
        revert with 0, 17
    if stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) < stor40:
        revert with 0, 1
    if not stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1):
        revert with 0, 18
    if not sub_921f4cb4:
        revert with 0, 18
    if stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
        revert with 0, 17
    if 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / 24 * 3600 != stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
        revert with 0, 1
    require ext_code.size(sub_e8614140Address)
    staticcall sub_e8614140Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
                revert with 0, 18
            return stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4, 
                   0 / stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4)
        if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
            revert with 0, 1
        if 0 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
            revert with 0, 17
        if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 < 0:
            revert with 0, 1
        if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
            revert with 0, 18
        if stor40 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
            revert with 0, 17
        if stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) < stor40:
            revert with 0, 1
        if not stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
            revert with 0, 18
        return stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4, 
               0 / stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4)
    if stor39 and ext_call.return_data[0] + arg1 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor39 != ext_call.return_data[0] + arg1:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
                revert with 0, 18
            if stor40 > !(0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
                revert with 0, 17
            if stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) < stor40:
                revert with 0, 1
            if not stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
                revert with 0, 18
            return stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4, 
                   (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (0 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4)
        if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
            revert with 0, 1
        if 0 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
            revert with 0, 17
        if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 < 0:
            revert with 0, 1
        if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
            revert with 0, 18
        if stor40 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
            revert with 0, 17
        if stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) < stor40:
            revert with 0, 1
        if not stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
            revert with 0, 18
        return stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4, 
               (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4)
    if stor39 and sub_d4a74553 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
        revert with 0, 1
    if not stor40:
        if stor39 * sub_d4a74553 > -1:
            revert with 0, 17
        if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
            revert with 0, 1
        if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
            revert with 0, 18
        if stor40 > !(stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
            revert with 0, 17
        if stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) < stor40:
            revert with 0, 1
        if not stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
            revert with 0, 18
        return stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4, 
               (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + (stor39 * sub_d4a74553 / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4)
    if stor40 and 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if 24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4 / stor40 != 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
        revert with 0, 1
    if stor39 * sub_d4a74553 > !(24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
        revert with 0, 17
    if (stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) < stor39 * sub_d4a74553:
        revert with 0, 1
    if not 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4:
        revert with 0, 18
    if stor40 > !((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
        revert with 0, 17
    if stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) < stor40:
        revert with 0, 1
    if not stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4):
        revert with 0, 18
    return stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4, 
           (ext_call.return_data[0] * stor39) + (arg1 * stor39) / stor40 + ((stor39 * sub_d4a74553) + (24 * 3600 * stor40 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4) / 24 * 3600 * stor39 * sub_d4a74553 / stor40 + ((stor39 * ext_call.return_data[0]) + (stor40 * arg1) / arg1) / sub_921f4cb4)
}

function sub_64c03a5e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if users[address(arg1)].field_1280 > block.timestamp:
        revert with 0, 1
    if block.timestamp < users[address(arg1)].field_1280:
        revert with 0, 17
    if block.timestamp - users[address(arg1)].field_1280 < CUTOFF_STEP:
        if sub_921f4cb4 < block.timestamp - users[address(arg1)].field_1280:
            if not sub_921f4cb4:
                if users[address(arg1)].field_768 > -1:
                    revert with 0, 17
                if users[address(arg1)].field_768 < users[address(arg1)].field_768:
                    revert with 0, 1
                require ext_code.size(sub_e8614140Address)
                staticcall sub_e8614140Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor39:
                    if not stor40:
                        if not users[address(arg1)].field_768:
                            revert with 0, 18
                        if stor40 > !(0 / users[address(arg1)].field_768):
                            revert with 0, 17
                        if stor40 + (0 / users[address(arg1)].field_768) < stor40:
                            revert with 0, 1
                        if not stor40 + (0 / users[address(arg1)].field_768):
                            revert with 0, 18
                        return (0 / stor40 + (0 / users[address(arg1)].field_768))
                    if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                        revert with 0, 17
                    if not stor40:
                        revert with 0, 18
                    if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                        revert with 0, 1
                    if 0 > !(stor40 * users[address(arg1)].field_768):
                        revert with 0, 17
                    if stor40 * users[address(arg1)].field_768 < 0:
                        revert with 0, 1
                    if not users[address(arg1)].field_768:
                        revert with 0, 18
                    if stor40 > !(stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                        revert with 0, 17
                    if stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768) < stor40:
                        revert with 0, 1
                    if not stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                        revert with 0, 18
                    return (0 / stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768))
                if stor39 and ext_call.return_data[0] > -1 / stor39:
                    revert with 0, 17
                if not stor39:
                    revert with 0, 18
                if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
                    revert with 0, 1
                if not stor39:
                    if not stor40:
                        if not users[address(arg1)].field_768:
                            revert with 0, 18
                        if stor40 > !(0 / users[address(arg1)].field_768):
                            revert with 0, 17
                        if stor40 + (0 / users[address(arg1)].field_768) < stor40:
                            revert with 0, 1
                        if not stor40 + (0 / users[address(arg1)].field_768):
                            revert with 0, 18
                        return (stor39 * ext_call.return_data[0] / stor40 + (0 / users[address(arg1)].field_768))
                    if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                        revert with 0, 17
                    if not stor40:
                        revert with 0, 18
                    if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                        revert with 0, 1
                    if 0 > !(stor40 * users[address(arg1)].field_768):
                        revert with 0, 17
                    if stor40 * users[address(arg1)].field_768 < 0:
                        revert with 0, 1
                    if not users[address(arg1)].field_768:
                        revert with 0, 18
                    if stor40 > !(stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                        revert with 0, 17
                    if stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768) < stor40:
                        revert with 0, 1
                    if not stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                        revert with 0, 18
                    return (stor39 * ext_call.return_data[0] / stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768))
                if stor39 and sub_d4a74553 > -1 / stor39:
                    revert with 0, 17
                if not stor39:
                    revert with 0, 18
                if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
                    revert with 0, 1
                if not stor40:
                    if stor39 * sub_d4a74553 > -1:
                        revert with 0, 17
                    if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                        revert with 0, 1
                    if not users[address(arg1)].field_768:
                        revert with 0, 18
                    if stor40 > !(stor39 * sub_d4a74553 / users[address(arg1)].field_768):
                        revert with 0, 17
                    if stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768) < stor40:
                        revert with 0, 1
                    if not stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768):
                        revert with 0, 18
                    return (stor39 * ext_call.return_data[0] / stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768))
                if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                    revert with 0, 1
                if stor39 * sub_d4a74553 > !(stor40 * users[address(arg1)].field_768):
                    revert with 0, 17
                if (stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) < stor39 * sub_d4a74553:
                    revert with 0, 1
                if not users[address(arg1)].field_768:
                    revert with 0, 18
                if stor40 > !((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768) < stor40:
                    revert with 0, 1
                if not stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768))
            if sub_921f4cb4 and users[address(arg1)].field_512 > -1 / sub_921f4cb4:
                revert with 0, 17
            if not sub_921f4cb4:
                revert with 0, 18
            if sub_921f4cb4 * users[address(arg1)].field_512 / sub_921f4cb4 != users[address(arg1)].field_512:
                revert with 0, 1
            if users[address(arg1)].field_768 > !(sub_921f4cb4 * users[address(arg1)].field_512):
                revert with 0, 17
            if users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512) < users[address(arg1)].field_768:
                revert with 0, 1
            require ext_code.size(sub_e8614140Address)
            staticcall sub_e8614140Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor39:
                if not stor40:
                    if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                        revert with 0, 18
                    if stor40 > !(0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                        revert with 0, 17
                    if stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                        revert with 0, 18
                    return (0 / stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
                if stor40 and users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512) > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                    revert with 0, 1
                if 0 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40)):
                    revert with 0, 17
                if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) < 0:
                    revert with 0, 1
                if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                    revert with 0, 18
                if stor40 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 17
                if stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                    revert with 0, 1
                if not stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 18
                return (0 / stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
            if stor39 and ext_call.return_data[0] > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
                revert with 0, 1
            if not stor39:
                if not stor40:
                    if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                        revert with 0, 18
                    if stor40 > !(0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                        revert with 0, 17
                    if stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                        revert with 0, 18
                    return (stor39 * ext_call.return_data[0] / stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
                if stor40 and users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512) > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                    revert with 0, 1
                if 0 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40)):
                    revert with 0, 17
                if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) < 0:
                    revert with 0, 1
                if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                    revert with 0, 18
                if stor40 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 17
                if stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                    revert with 0, 1
                if not stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
            if stor39 and sub_d4a74553 > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
                revert with 0, 1
            if not stor40:
                if stor39 * sub_d4a74553 > -1:
                    revert with 0, 17
                if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                    revert with 0, 1
                if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                    revert with 0, 18
                if stor40 > !(stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 17
                if stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                    revert with 0, 1
                if not stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
            if stor40 and users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512) > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                revert with 0, 1
            if stor39 * sub_d4a74553 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40)):
                revert with 0, 17
            if (stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) < stor39 * sub_d4a74553:
                revert with 0, 1
            if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                revert with 0, 18
            if stor40 > !((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                revert with 0, 17
            if stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                revert with 0, 1
            if not stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
        if not block.timestamp - users[address(arg1)].field_1280:
            if users[address(arg1)].field_768 > -1:
                revert with 0, 17
            if users[address(arg1)].field_768 < users[address(arg1)].field_768:
                revert with 0, 1
            require ext_code.size(sub_e8614140Address)
            staticcall sub_e8614140Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor39:
                if not stor40:
                    if not users[address(arg1)].field_768:
                        revert with 0, 18
                    if stor40 > !(0 / users[address(arg1)].field_768):
                        revert with 0, 17
                    if stor40 + (0 / users[address(arg1)].field_768) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / users[address(arg1)].field_768):
                        revert with 0, 18
                    return (0 / stor40 + (0 / users[address(arg1)].field_768))
                if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                    revert with 0, 1
                if 0 > !(stor40 * users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 * users[address(arg1)].field_768 < 0:
                    revert with 0, 1
                if not users[address(arg1)].field_768:
                    revert with 0, 18
                if stor40 > !(stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768) < stor40:
                    revert with 0, 1
                if not stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                    revert with 0, 18
                return (0 / stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768))
            if stor39 and ext_call.return_data[0] > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
                revert with 0, 1
            if not stor39:
                if not stor40:
                    if not users[address(arg1)].field_768:
                        revert with 0, 18
                    if stor40 > !(0 / users[address(arg1)].field_768):
                        revert with 0, 17
                    if stor40 + (0 / users[address(arg1)].field_768) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / users[address(arg1)].field_768):
                        revert with 0, 18
                    return (stor39 * ext_call.return_data[0] / stor40 + (0 / users[address(arg1)].field_768))
                if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                    revert with 0, 1
                if 0 > !(stor40 * users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 * users[address(arg1)].field_768 < 0:
                    revert with 0, 1
                if not users[address(arg1)].field_768:
                    revert with 0, 18
                if stor40 > !(stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768) < stor40:
                    revert with 0, 1
                if not stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768))
            if stor39 and sub_d4a74553 > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
                revert with 0, 1
            if not stor40:
                if stor39 * sub_d4a74553 > -1:
                    revert with 0, 17
                if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                    revert with 0, 1
                if not users[address(arg1)].field_768:
                    revert with 0, 18
                if stor40 > !(stor39 * sub_d4a74553 / users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768) < stor40:
                    revert with 0, 1
                if not stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768))
            if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                revert with 0, 1
            if stor39 * sub_d4a74553 > !(stor40 * users[address(arg1)].field_768):
                revert with 0, 17
            if (stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) < stor39 * sub_d4a74553:
                revert with 0, 1
            if not users[address(arg1)].field_768:
                revert with 0, 18
            if stor40 > !((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768):
                revert with 0, 17
            if stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768) < stor40:
                revert with 0, 1
            if not stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768))
        if block.timestamp - users[address(arg1)].field_1280 and users[address(arg1)].field_512 > -1 / block.timestamp - users[address(arg1)].field_1280:
            revert with 0, 17
        if not block.timestamp - users[address(arg1)].field_1280:
            revert with 0, 18
        if (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512) / block.timestamp - users[address(arg1)].field_1280 != users[address(arg1)].field_512:
            revert with 0, 1
        if users[address(arg1)].field_768 > !((block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
            revert with 0, 17
        if users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512) < users[address(arg1)].field_768:
            revert with 0, 1
        require ext_code.size(sub_e8614140Address)
        staticcall sub_e8614140Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor39:
            if not stor40:
                if not users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512):
                    revert with 0, 18
                if stor40 > !(0 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                    revert with 0, 17
                if stor40 + (0 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                    revert with 0, 18
                return (0 / stor40 + (0 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)))
            if stor40 and users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512) > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512):
                revert with 0, 1
            if 0 > !((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40)):
                revert with 0, 17
            if (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) < 0:
                revert with 0, 1
            if not users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512):
                revert with 0, 18
            if stor40 > !((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                revert with 0, 17
            if stor40 + ((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)) < stor40:
                revert with 0, 1
            if not stor40 + ((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                revert with 0, 18
            return (0 / stor40 + ((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)))
        if stor39 and ext_call.return_data[0] > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
            revert with 0, 1
        if not stor39:
            if not stor40:
                if not users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512):
                    revert with 0, 18
                if stor40 > !(0 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                    revert with 0, 17
                if stor40 + (0 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + (0 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)))
            if stor40 and users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512) > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512):
                revert with 0, 1
            if 0 > !((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40)):
                revert with 0, 17
            if (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) < 0:
                revert with 0, 1
            if not users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512):
                revert with 0, 18
            if stor40 > !((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                revert with 0, 17
            if stor40 + ((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)) < stor40:
                revert with 0, 1
            if not stor40 + ((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + ((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)))
        if stor39 and sub_d4a74553 > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
            revert with 0, 1
        if not stor40:
            if stor39 * sub_d4a74553 > -1:
                revert with 0, 17
            if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                revert with 0, 1
            if not users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512):
                revert with 0, 18
            if stor40 > !(stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                revert with 0, 17
            if stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)) < stor40:
                revert with 0, 1
            if not stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)))
        if stor40 and users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512) > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512):
            revert with 0, 1
        if stor39 * sub_d4a74553 > !((users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40)):
            revert with 0, 17
        if (stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) < stor39 * sub_d4a74553:
            revert with 0, 1
        if not users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512):
            revert with 0, 18
        if stor40 > !((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
            revert with 0, 17
        if stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)) < stor40:
            revert with 0, 1
        if not stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)):
            revert with 0, 18
        return (stor39 * ext_call.return_data[0] / stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (block.timestamp * users[address(arg1)].field_512 * stor40) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (block.timestamp * users[address(arg1)].field_512) - (users[address(arg1)].field_1280 * users[address(arg1)].field_512)))
    if sub_921f4cb4 < CUTOFF_STEP:
        if not sub_921f4cb4:
            if users[address(arg1)].field_768 > -1:
                revert with 0, 17
            if users[address(arg1)].field_768 < users[address(arg1)].field_768:
                revert with 0, 1
            require ext_code.size(sub_e8614140Address)
            staticcall sub_e8614140Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor39:
                if not stor40:
                    if not users[address(arg1)].field_768:
                        revert with 0, 18
                    if stor40 > !(0 / users[address(arg1)].field_768):
                        revert with 0, 17
                    if stor40 + (0 / users[address(arg1)].field_768) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / users[address(arg1)].field_768):
                        revert with 0, 18
                    return (0 / stor40 + (0 / users[address(arg1)].field_768))
                if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                    revert with 0, 1
                if 0 > !(stor40 * users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 * users[address(arg1)].field_768 < 0:
                    revert with 0, 1
                if not users[address(arg1)].field_768:
                    revert with 0, 18
                if stor40 > !(stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768) < stor40:
                    revert with 0, 1
                if not stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                    revert with 0, 18
                return (0 / stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768))
            if stor39 and ext_call.return_data[0] > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
                revert with 0, 1
            if not stor39:
                if not stor40:
                    if not users[address(arg1)].field_768:
                        revert with 0, 18
                    if stor40 > !(0 / users[address(arg1)].field_768):
                        revert with 0, 17
                    if stor40 + (0 / users[address(arg1)].field_768) < stor40:
                        revert with 0, 1
                    if not stor40 + (0 / users[address(arg1)].field_768):
                        revert with 0, 18
                    return (stor39 * ext_call.return_data[0] / stor40 + (0 / users[address(arg1)].field_768))
                if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                    revert with 0, 1
                if 0 > !(stor40 * users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 * users[address(arg1)].field_768 < 0:
                    revert with 0, 1
                if not users[address(arg1)].field_768:
                    revert with 0, 18
                if stor40 > !(stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768) < stor40:
                    revert with 0, 1
                if not stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768))
            if stor39 and sub_d4a74553 > -1 / stor39:
                revert with 0, 17
            if not stor39:
                revert with 0, 18
            if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
                revert with 0, 1
            if not stor40:
                if stor39 * sub_d4a74553 > -1:
                    revert with 0, 17
                if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                    revert with 0, 1
                if not users[address(arg1)].field_768:
                    revert with 0, 18
                if stor40 > !(stor39 * sub_d4a74553 / users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768) < stor40:
                    revert with 0, 1
                if not stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768))
            if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                revert with 0, 1
            if stor39 * sub_d4a74553 > !(stor40 * users[address(arg1)].field_768):
                revert with 0, 17
            if (stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) < stor39 * sub_d4a74553:
                revert with 0, 1
            if not users[address(arg1)].field_768:
                revert with 0, 18
            if stor40 > !((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768):
                revert with 0, 17
            if stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768) < stor40:
                revert with 0, 1
            if not stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768))
        if sub_921f4cb4 and users[address(arg1)].field_512 > -1 / sub_921f4cb4:
            revert with 0, 17
        if not sub_921f4cb4:
            revert with 0, 18
        if sub_921f4cb4 * users[address(arg1)].field_512 / sub_921f4cb4 != users[address(arg1)].field_512:
            revert with 0, 1
        if users[address(arg1)].field_768 > !(sub_921f4cb4 * users[address(arg1)].field_512):
            revert with 0, 17
        if users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512) < users[address(arg1)].field_768:
            revert with 0, 1
        require ext_code.size(sub_e8614140Address)
        staticcall sub_e8614140Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor39:
            if not stor40:
                if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                    revert with 0, 18
                if stor40 > !(0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 17
                if stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 18
                return (0 / stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
            if stor40 and users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512) > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                revert with 0, 1
            if 0 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40)):
                revert with 0, 17
            if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) < 0:
                revert with 0, 1
            if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                revert with 0, 18
            if stor40 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                revert with 0, 17
            if stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                revert with 0, 1
            if not stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                revert with 0, 18
            return (0 / stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
        if stor39 and ext_call.return_data[0] > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
            revert with 0, 1
        if not stor39:
            if not stor40:
                if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                    revert with 0, 18
                if stor40 > !(0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 17
                if stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + (0 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
            if stor40 and users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512) > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                revert with 0, 1
            if 0 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40)):
                revert with 0, 17
            if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) < 0:
                revert with 0, 1
            if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                revert with 0, 18
            if stor40 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                revert with 0, 17
            if stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                revert with 0, 1
            if not stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + ((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
        if stor39 and sub_d4a74553 > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
            revert with 0, 1
        if not stor40:
            if stor39 * sub_d4a74553 > -1:
                revert with 0, 17
            if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                revert with 0, 1
            if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
                revert with 0, 18
            if stor40 > !(stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                revert with 0, 17
            if stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
                revert with 0, 1
            if not stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
        if stor40 and users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512) > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
            revert with 0, 1
        if stor39 * sub_d4a74553 > !((users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40)):
            revert with 0, 17
        if (stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) < stor39 * sub_d4a74553:
            revert with 0, 1
        if not users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512):
            revert with 0, 18
        if stor40 > !((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
            revert with 0, 17
        if stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)) < stor40:
            revert with 0, 1
        if not stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)):
            revert with 0, 18
        return (stor39 * ext_call.return_data[0] / stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (sub_921f4cb4 * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (sub_921f4cb4 * users[address(arg1)].field_512)))
    if not CUTOFF_STEP:
        if users[address(arg1)].field_768 > -1:
            revert with 0, 17
        if users[address(arg1)].field_768 < users[address(arg1)].field_768:
            revert with 0, 1
        require ext_code.size(sub_e8614140Address)
        staticcall sub_e8614140Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor39:
            if not stor40:
                if not users[address(arg1)].field_768:
                    revert with 0, 18
                if stor40 > !(0 / users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 + (0 / users[address(arg1)].field_768) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / users[address(arg1)].field_768):
                    revert with 0, 18
                return (0 / stor40 + (0 / users[address(arg1)].field_768))
            if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                revert with 0, 1
            if 0 > !(stor40 * users[address(arg1)].field_768):
                revert with 0, 17
            if stor40 * users[address(arg1)].field_768 < 0:
                revert with 0, 1
            if not users[address(arg1)].field_768:
                revert with 0, 18
            if stor40 > !(stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                revert with 0, 17
            if stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768) < stor40:
                revert with 0, 1
            if not stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                revert with 0, 18
            return (0 / stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768))
        if stor39 and ext_call.return_data[0] > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
            revert with 0, 1
        if not stor39:
            if not stor40:
                if not users[address(arg1)].field_768:
                    revert with 0, 18
                if stor40 > !(0 / users[address(arg1)].field_768):
                    revert with 0, 17
                if stor40 + (0 / users[address(arg1)].field_768) < stor40:
                    revert with 0, 1
                if not stor40 + (0 / users[address(arg1)].field_768):
                    revert with 0, 18
                return (stor39 * ext_call.return_data[0] / stor40 + (0 / users[address(arg1)].field_768))
            if stor40 and users[address(arg1)].field_768 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
                revert with 0, 1
            if 0 > !(stor40 * users[address(arg1)].field_768):
                revert with 0, 17
            if stor40 * users[address(arg1)].field_768 < 0:
                revert with 0, 1
            if not users[address(arg1)].field_768:
                revert with 0, 18
            if stor40 > !(stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                revert with 0, 17
            if stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768) < stor40:
                revert with 0, 1
            if not stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + (stor40 * users[address(arg1)].field_768 / users[address(arg1)].field_768))
        if stor39 and sub_d4a74553 > -1 / stor39:
            revert with 0, 17
        if not stor39:
            revert with 0, 18
        if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
            revert with 0, 1
        if not stor40:
            if stor39 * sub_d4a74553 > -1:
                revert with 0, 17
            if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
                revert with 0, 1
            if not users[address(arg1)].field_768:
                revert with 0, 18
            if stor40 > !(stor39 * sub_d4a74553 / users[address(arg1)].field_768):
                revert with 0, 17
            if stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768) < stor40:
                revert with 0, 1
            if not stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768))
        if stor40 and users[address(arg1)].field_768 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * users[address(arg1)].field_768 / stor40 != users[address(arg1)].field_768:
            revert with 0, 1
        if stor39 * sub_d4a74553 > !(stor40 * users[address(arg1)].field_768):
            revert with 0, 17
        if (stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) < stor39 * sub_d4a74553:
            revert with 0, 1
        if not users[address(arg1)].field_768:
            revert with 0, 18
        if stor40 > !((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768):
            revert with 0, 17
        if stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768) < stor40:
            revert with 0, 1
        if not stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768):
            revert with 0, 18
        return (stor39 * ext_call.return_data[0] / stor40 + ((stor39 * sub_d4a74553) + (stor40 * users[address(arg1)].field_768) / users[address(arg1)].field_768))
    if CUTOFF_STEP and users[address(arg1)].field_512 > -1 / CUTOFF_STEP:
        revert with 0, 17
    if not CUTOFF_STEP:
        revert with 0, 18
    if CUTOFF_STEP * users[address(arg1)].field_512 / CUTOFF_STEP != users[address(arg1)].field_512:
        revert with 0, 1
    if users[address(arg1)].field_768 > !(CUTOFF_STEP * users[address(arg1)].field_512):
        revert with 0, 17
    if users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512) < users[address(arg1)].field_768:
        revert with 0, 1
    require ext_code.size(sub_e8614140Address)
    staticcall sub_e8614140Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor39:
        if not stor40:
            if not users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512):
                revert with 0, 18
            if stor40 > !(0 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
                revert with 0, 17
            if stor40 + (0 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)) < stor40:
                revert with 0, 1
            if not stor40 + (0 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
                revert with 0, 18
            return (0 / stor40 + (0 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)))
        if stor40 and users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512) > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512):
            revert with 0, 1
        if 0 > !((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40)):
            revert with 0, 17
        if (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) < 0:
            revert with 0, 1
        if not users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512):
            revert with 0, 18
        if stor40 > !((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
            revert with 0, 17
        if stor40 + ((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)) < stor40:
            revert with 0, 1
        if not stor40 + ((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
            revert with 0, 18
        return (0 / stor40 + ((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)))
    if stor39 and ext_call.return_data[0] > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * ext_call.return_data[0] / stor39 != ext_call.return_data[0]:
        revert with 0, 1
    if not stor39:
        if not stor40:
            if not users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512):
                revert with 0, 18
            if stor40 > !(0 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
                revert with 0, 17
            if stor40 + (0 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)) < stor40:
                revert with 0, 1
            if not stor40 + (0 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
                revert with 0, 18
            return (stor39 * ext_call.return_data[0] / stor40 + (0 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)))
        if stor40 and users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512) > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512):
            revert with 0, 1
        if 0 > !((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40)):
            revert with 0, 17
        if (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) < 0:
            revert with 0, 1
        if not users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512):
            revert with 0, 18
        if stor40 > !((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
            revert with 0, 17
        if stor40 + ((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)) < stor40:
            revert with 0, 1
        if not stor40 + ((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
            revert with 0, 18
        return (stor39 * ext_call.return_data[0] / stor40 + ((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)))
    if stor39 and sub_d4a74553 > -1 / stor39:
        revert with 0, 17
    if not stor39:
        revert with 0, 18
    if stor39 * sub_d4a74553 / stor39 != sub_d4a74553:
        revert with 0, 1
    if not stor40:
        if stor39 * sub_d4a74553 > -1:
            revert with 0, 17
        if stor39 * sub_d4a74553 < stor39 * sub_d4a74553:
            revert with 0, 1
        if not users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512):
            revert with 0, 18
        if stor40 > !(stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
            revert with 0, 17
        if stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)) < stor40:
            revert with 0, 1
        if not stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
            revert with 0, 18
        return (stor39 * ext_call.return_data[0] / stor40 + (stor39 * sub_d4a74553 / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)))
    if stor40 and users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512) > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / stor40 != users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512):
        revert with 0, 1
    if stor39 * sub_d4a74553 > !((users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40)):
        revert with 0, 17
    if (stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) < stor39 * sub_d4a74553:
        revert with 0, 1
    if not users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512):
        revert with 0, 18
    if stor40 > !((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
        revert with 0, 17
    if stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)) < stor40:
        revert with 0, 1
    if not stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)):
        revert with 0, 18
    return (stor39 * ext_call.return_data[0] / stor40 + ((stor39 * sub_d4a74553) + (users[address(arg1)].field_768 * stor40) + (CUTOFF_STEP * users[address(arg1)].field_512 * stor40) / users[address(arg1)].field_768 + (CUTOFF_STEP * users[address(arg1)].field_512)))
}



}
