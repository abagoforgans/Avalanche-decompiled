contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - claim()
#  - withdrawAll()
#  - deposit()
#
const available = eth.balance(this.address)

const AVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const MAX_FEE = 10000


address owner;
uint256 stor1;
address strategyAddress;
address rewardTokenAddress;
address stakingTokenAddress;
address sub_8a5fcf70Address;
uint32 stor6;
address sub_7b805e03Address;
uint256 stor6;
array of struct stor7;
mapping of uint256 stor8;
uint256 totalSupply;
uint256 totalShares;
mapping of uint256 sharesOf;
mapping of uint256 principalOf;
mapping of uint256 depositedAt;
address feeRecipientAddress;
uint256 performanceFee;
uint256 withdrawalFee;
uint256 sub_6423f66e;
uint256 feeDuration;
uint8 sub_bd58bea0;

function userCount() {
    return stor7.length
}

function totalSupply() {
    return totalSupply
}

function want() {
    return stakingTokenAddress
}

function depositedAt(address arg1) {
    require calldata.size - 4 >= 32
    return depositedAt[address(arg1)]
}

function feeDuration() {
    return feeDuration
}

function totalShares() {
    return totalShares
}

function feeRecipient() {
    return feeRecipientAddress
}

function principalOf(address arg1) {
    require calldata.size - 4 >= 32
    return principalOf[address(arg1)]
}

function sub_6423f66e(?) {
    return sub_6423f66e
}

function stakingToken() {
    return stakingTokenAddress
}

function sub_7b805e03(?) {
    return address(sub_7b805e03Address)
}

function performanceFee() {
    return performanceFee
}

function sub_8a5fcf70(?) {
    return sub_8a5fcf70Address
}

function withdrawalFee() {
    return withdrawalFee
}

function owner() {
    return owner
}

function strategy() {
    return strategyAddress
}

function sub_bd58bea0(?) {
    return bool(sub_bd58bea0)
}

function sharesOf(address arg1) {
    require calldata.size - 4 >= 32
    return sharesOf[address(arg1)]
}

function rewardToken() {
    return rewardTokenAddress
}

function depositAll() {
  stop
}

function _fallback() payable {
    revert
}

function sub_4ac644bc(?) {
    require calldata.size - 4 >= 32
}

function sub_1a136cd7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeDuration = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_90c766e4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_bd58bea0 = uint8(arg1)
}

function setPriceCalculator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_8a5fcf70Address = arg1
}

function sub_2f0754ca(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'Invalid value'
    sub_6423f66e = arg1
}

function setWithdrawalFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10000:
        revert with 0, '!fee'
    withdrawalFee = arg1
}

function setPerformanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10000:
        revert with 0, '!fee'
    performanceFee = arg1
}

function setFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '!address'
    feeRecipientAddress = arg1
}

function setRewardToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 == stakingTokenAddress:
        revert with 0, '!token'
    rewardTokenAddress = arg1
}

function balanceOfStrategy() {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
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

function balance() {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function earn() {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    call strategyAddress.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
    return eth.balance(this.address), 0
}

function getPricePerFullShare() {
    if 0 == totalShares:
        return 10^18
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (0 / totalShares)
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (10^18 * ext_call.return_data[0] / totalShares)
    ('iszero', ('stor', ('name', 'totalShares', 10)))
    revert
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if 0 == totalShares:
        return 0
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (0 / totalShares)
    else:
        if sharesOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares)
    ('iszero', ('stor', ('name', 'totalShares', 10)))
    revert
}

function inCaseTokensGetStuck(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 == stakingTokenAddress:
        revert with 0, '!token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
}

function userList() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require stor7.length <= test266151307()
    if not stor7.length:
        if var36002 >= stor7.length:
            mem[(32 * stor7.length) + 128] = 32
            mem[(32 * stor7.length) + 160] = stor7.length
            mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
            return memory
              from (32 * stor7.length) + 128
               len (96 * stor7.length) + 64
        if var42001 >= stor7.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor7.length) + 230 len 30]
        require var44002 < stor7.length
        require var50002 < stor7.length
        mem[(32 * var52001) + 128] = address(var52003)
        if var62002 < stor7.length:
            # nil
        else:
            mem[(32 * stor7.length) + 128] = 32
            mem[(32 * stor7.length) + 160] = stor7.length
            mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
            return memory
              from (32 * stor7.length) + 128
               len (96 * stor7.length) + 64
    else:
        mem[128 len 32 * stor7.length] = call.data[calldata.size len 32 * stor7.length]
        if var37002 >= stor7.length:
            mem[(32 * stor7.length) + 128] = 32
            mem[(32 * stor7.length) + 160] = stor7.length
            mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = call.data[calldata.size len floor32(stor7.length)]
            return memory
              from (32 * stor7.length) + 128
               len (96 * stor7.length) + 64
        if var43001 >= stor7.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor7.length) + 230 len 30]
        require var45002 < stor7.length
        require var51002 < stor7.length
        mem[(32 * var53001) + 128] = address(var53003)
        if var63002 < stor7.length:
            # nil
        else:
            mem[(32 * stor7.length) + 128] = 32
            mem[(32 * stor7.length) + 160] = stor7.length
            mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = call.data[calldata.size len floor32(stor7.length)]
            return memory
              from (32 * stor7.length) + 128
               len (96 * stor7.length) + 64
}

function earned(address arg1) {
    require calldata.size - 4 >= 32
    if 0 == totalShares:
        if 0 < principalOf[address(arg1)] + 1000:
            return 0
    else:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if 0 / totalShares < principalOf[address(arg1)] + 1000:
                return 0
        else:
            if sharesOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares < principalOf[address(arg1)] + 1000:
                return 0
    if 0 == totalShares:
        if principalOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -principalOf[address(arg1)]
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShares
        if principalOf[address(arg1)] > 0 / totalShares:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / totalShares) - principalOf[address(arg1)])
    if sharesOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalShares <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalShares
    if principalOf[address(arg1)] > sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)])
}

function totalEarned() {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= totalSupply:
        if ext_call.return_data[0] <= totalSupply:
            return 0
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if totalSupply > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_8a5fcf70Address)
        staticcall sub_8a5fcf70Address.valueOfToken(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args stakingTokenAddress, ext_call.return_data[0] - totalSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        return 0, ext_call.return_data[32]
    if totalSupply > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= totalSupply:
        return ext_call.return_data[0] - totalSupply, 0
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalSupply > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(sub_8a5fcf70Address)
    staticcall sub_8a5fcf70Address.valueOfToken(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args stakingTokenAddress, ext_call.return_data[0] - totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0] - totalSupply, ext_call.return_data[32]
}

function sub_23ef9abe(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
    mem[324 len 0] = 0
    call rewardTokenAddress with:
       funct uint32(stor6)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(arg1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call rewardTokenAddress with:
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
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
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call rewardTokenAddress with:
             gas gas_remaining wei
            args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    address(sub_7b805e03Address) = arg1
}

function claimable(address arg1) {
    require calldata.size - 4 >= 32
    if 0 == totalShares:
        if 0 < principalOf[address(arg1)] + 1000:
            return 0
    else:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if 0 / totalShares < principalOf[address(arg1)] + 1000:
                return 0
        else:
            if sharesOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares < principalOf[address(arg1)] + 1000:
                return 0
    if 0 == totalShares:
        if principalOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -principalOf[address(arg1)]:
            return 0, -principalOf[address(arg1)]
        if -1 * performanceFee * principalOf[address(arg1)] / -principalOf[address(arg1)] != performanceFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if -1 * performanceFee * principalOf[address(arg1)] / 10000 <= 1000:
            return 0, -principalOf[address(arg1)]
        require ext_code.size(sub_8a5fcf70Address)
        staticcall sub_8a5fcf70Address.valueOfToken(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args stakingTokenAddress, -1 * performanceFee * principalOf[address(arg1)] / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not sub_6423f66e:
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.devAllocation() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if -1 * performanceFee * principalOf[address(arg1)] / 10000 > -principalOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, -principalOf[address(arg1)] - (-1 * performanceFee * principalOf[address(arg1)] / 10000)
        if ext_call.return_data[0] * sub_6423f66e / sub_6423f66e != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.devAllocation() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] * sub_6423f66e / 10^18:
            if 0 > ext_call.return_data[0] * sub_6423f66e / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if -1 * performanceFee * principalOf[address(arg1)] / 10000 > -principalOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0] * sub_6423f66e / 10^18, 
                   -principalOf[address(arg1)] - (-1 * performanceFee * principalOf[address(arg1)] / 10000)
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if -1 * performanceFee * principalOf[address(arg1)] / 10000 > -principalOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
               -principalOf[address(arg1)] - (-1 * performanceFee * principalOf[address(arg1)] / 10000)
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShares
        if principalOf[address(arg1)] > 0 / totalShares:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / totalShares) - principalOf[address(arg1)]:
            return 0, (0 / totalShares) - principalOf[address(arg1)]
        if (0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / (0 / totalShares) - principalOf[address(arg1)] != performanceFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 <= 1000:
            return 0, (0 / totalShares) - principalOf[address(arg1)]
        require ext_code.size(sub_8a5fcf70Address)
        staticcall sub_8a5fcf70Address.valueOfToken(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args stakingTokenAddress, (0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not sub_6423f66e:
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.devAllocation() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > (0 / totalShares) - principalOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 
                   (0 / totalShares) - principalOf[address(arg1)] - ((0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
        if ext_call.return_data[0] * sub_6423f66e / sub_6423f66e != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.devAllocation() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] * sub_6423f66e / 10^18:
            if 0 > ext_call.return_data[0] * sub_6423f66e / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > (0 / totalShares) - principalOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0] * sub_6423f66e / 10^18, 
                   (0 / totalShares) - principalOf[address(arg1)] - ((0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > (0 / totalShares) - principalOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
               (0 / totalShares) - principalOf[address(arg1)] - ((0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
    if sharesOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalShares <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalShares
    if principalOf[address(arg1)] > sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)]:
        return 0, (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)]
    if (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)] != performanceFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 <= 1000:
        return 0, (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)]
    require ext_code.size(sub_8a5fcf70Address)
    staticcall sub_8a5fcf70Address.valueOfToken(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args stakingTokenAddress, (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not sub_6423f66e:
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.devAllocation() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, 
               (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)] - ((sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
    if ext_call.return_data[0] * sub_6423f66e / sub_6423f66e != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.devAllocation() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] * sub_6423f66e / 10^18:
        if 0 > ext_call.return_data[0] * sub_6423f66e / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ext_call.return_data[0] * sub_6423f66e / 10^18, 
               (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)] - ((sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
    if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
           (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)] - ((sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor1 = 2
    if 0 == totalShares:
        if 0 == totalShares:
            if 0 < principalOf[address(msg.sender)] + 1000:
                if 1 == bool(stor8[address(msg.sender)]):
                    if stor8[address(msg.sender)]:
                        require stor7.length - 1 < stor7.length
                        require stor8[address(msg.sender)] - 1 < stor7.length
                        stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                        stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                        require stor7.length
                        stor7[stor7.length].field_0 = 0
                        stor7.length--
                        stor8[address(msg.sender)] = 0
            else:
                if 0 == totalShares:
                    if principalOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -principalOf[address(msg.sender)] > 0:
                        if not stor8[address(msg.sender)]:
                            if not stor8[address(msg.sender)]:
                                stor7.length++
                                stor7[stor7.length].field_0 = msg.sender
                                stor7[stor7.length].field_160 = 0
                                stor8[address(msg.sender)] = stor7.length
                    else:
                        if 1 == bool(stor8[address(msg.sender)]):
                            if stor8[address(msg.sender)]:
                                require stor7.length - 1 < stor7.length
                                require stor8[address(msg.sender)] - 1 < stor7.length
                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                require stor7.length
                                stor7[stor7.length].field_0 = 0
                                stor7.length--
                                stor8[address(msg.sender)] = 0
                else:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalShares
                        if principalOf[address(msg.sender)] > 0 / totalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / totalShares) - principalOf[address(msg.sender)] > 0:
                            if not stor8[address(msg.sender)]:
                                if not stor8[address(msg.sender)]:
                                    stor7.length++
                                    stor7[stor7.length].field_0 = msg.sender
                                    stor7[stor7.length].field_160 = 0
                                    stor8[address(msg.sender)] = stor7.length
                        else:
                            if 1 == bool(stor8[address(msg.sender)]):
                                if stor8[address(msg.sender)]:
                                    require stor7.length - 1 < stor7.length
                                    require stor8[address(msg.sender)] - 1 < stor7.length
                                    stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                    stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                    require stor7.length
                                    stor7[stor7.length].field_0 = 0
                                    stor7.length--
                                    stor8[address(msg.sender)] = 0
                    else:
                        if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalShares
                        if principalOf[address(msg.sender)] > sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares) - principalOf[address(msg.sender)] > 0:
                            if not stor8[address(msg.sender)]:
                                if not stor8[address(msg.sender)]:
                                    stor7.length++
                                    stor7[stor7.length].field_0 = msg.sender
                                    stor7[stor7.length].field_160 = 0
                                    stor8[address(msg.sender)] = stor7.length
                        else:
                            if 1 == bool(stor8[address(msg.sender)]):
                                if stor8[address(msg.sender)]:
                                    require stor7.length - 1 < stor7.length
                                    require stor8[address(msg.sender)] - 1 < stor7.length
                                    stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                    stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                    require stor7.length
                                    stor7[stor7.length].field_0 = 0
                                    stor7.length--
                                    stor8[address(msg.sender)] = 0
        else:
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if 0 / totalShares < principalOf[address(msg.sender)] + 1000:
                    if 1 == bool(stor8[address(msg.sender)]):
                        if stor8[address(msg.sender)]:
                            require stor7.length - 1 < stor7.length
                            require stor8[address(msg.sender)] - 1 < stor7.length
                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                            require stor7.length
                            stor7[stor7.length].field_0 = 0
                            stor7.length--
                            stor8[address(msg.sender)] = 0
                else:
                    if 0 == totalShares:
                        if principalOf[address(msg.sender)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -principalOf[address(msg.sender)] > 0:
                            if not stor8[address(msg.sender)]:
                                if not stor8[address(msg.sender)]:
                                    stor7.length++
                                    stor7[stor7.length].field_0 = msg.sender
                                    stor7[stor7.length].field_160 = 0
                                    stor8[address(msg.sender)] = stor7.length
                        else:
                            if 1 == bool(stor8[address(msg.sender)]):
                                if stor8[address(msg.sender)]:
                                    require stor7.length - 1 < stor7.length
                                    require stor8[address(msg.sender)] - 1 < stor7.length
                                    stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                    stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                    require stor7.length
                                    stor7[stor7.length].field_0 = 0
                                    stor7.length--
                                    stor8[address(msg.sender)] = 0
                    else:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalShares <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalShares
                            if principalOf[address(msg.sender)] > 0 / totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (0 / totalShares) - principalOf[address(msg.sender)] > 0:
                                if not stor8[address(msg.sender)]:
                                    if not stor8[address(msg.sender)]:
                                        stor7.length++
                                        stor7[stor7.length].field_0 = msg.sender
                                        stor7[stor7.length].field_160 = 0
                                        stor8[address(msg.sender)] = stor7.length
                            else:
                                if 1 == bool(stor8[address(msg.sender)]):
                                    if stor8[address(msg.sender)]:
                                        require stor7.length - 1 < stor7.length
                                        require stor8[address(msg.sender)] - 1 < stor7.length
                                        stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                        stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                        require stor7.length
                                        stor7[stor7.length].field_0 = 0
                                        stor7.length--
                                        stor8[address(msg.sender)] = 0
                        else:
                            if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalShares <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalShares
                            if principalOf[address(msg.sender)] > sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares) - principalOf[address(msg.sender)] > 0:
                                if not stor8[address(msg.sender)]:
                                    if not stor8[address(msg.sender)]:
                                        stor7.length++
                                        stor7[stor7.length].field_0 = msg.sender
                                        stor7[stor7.length].field_160 = 0
                                        stor8[address(msg.sender)] = stor7.length
                            else:
                                if 1 == bool(stor8[address(msg.sender)]):
                                    if stor8[address(msg.sender)]:
                                        require stor7.length - 1 < stor7.length
                                        require stor8[address(msg.sender)] - 1 < stor7.length
                                        stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                        stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                        require stor7.length
                                        stor7[stor7.length].field_0 = 0
                                        stor7.length--
                                        stor8[address(msg.sender)] = 0
            else:
                if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares < principalOf[address(msg.sender)] + 1000:
                    if 1 == bool(stor8[address(msg.sender)]):
                        if stor8[address(msg.sender)]:
                            require stor7.length - 1 < stor7.length
                            require stor8[address(msg.sender)] - 1 < stor7.length
                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                            require stor7.length
                            stor7[stor7.length].field_0 = 0
                            stor7.length--
                            stor8[address(msg.sender)] = 0
                else:
                    if 0 == totalShares:
                        if principalOf[address(msg.sender)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -principalOf[address(msg.sender)] > 0:
                            if not stor8[address(msg.sender)]:
                                if not stor8[address(msg.sender)]:
                                    stor7.length++
                                    stor7[stor7.length].field_0 = msg.sender
                                    stor7[stor7.length].field_160 = 0
                                    stor8[address(msg.sender)] = stor7.length
                        else:
                            if 1 == bool(stor8[address(msg.sender)]):
                                if stor8[address(msg.sender)]:
                                    require stor7.length - 1 < stor7.length
                                    require stor8[address(msg.sender)] - 1 < stor7.length
                                    stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                    stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                    require stor7.length
                                    stor7[stor7.length].field_0 = 0
                                    stor7.length--
                                    stor8[address(msg.sender)] = 0
                    else:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalShares <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalShares
                            if principalOf[address(msg.sender)] > 0 / totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (0 / totalShares) - principalOf[address(msg.sender)] > 0:
                                if not stor8[address(msg.sender)]:
                                    if not stor8[address(msg.sender)]:
                                        stor7.length++
                                        stor7[stor7.length].field_0 = msg.sender
                                        stor7[stor7.length].field_160 = 0
                                        stor8[address(msg.sender)] = stor7.length
                            else:
                                if 1 == bool(stor8[address(msg.sender)]):
                                    if stor8[address(msg.sender)]:
                                        require stor7.length - 1 < stor7.length
                                        require stor8[address(msg.sender)] - 1 < stor7.length
                                        stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                        stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                        require stor7.length
                                        stor7[stor7.length].field_0 = 0
                                        stor7.length--
                                        stor8[address(msg.sender)] = 0
                        else:
                            if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalShares <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalShares
                            if principalOf[address(msg.sender)] > sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares) - principalOf[address(msg.sender)] > 0:
                                if not stor8[address(msg.sender)]:
                                    if not stor8[address(msg.sender)]:
                                        stor7.length++
                                        stor7[stor7.length].field_0 = msg.sender
                                        stor7[stor7.length].field_160 = 0
                                        stor8[address(msg.sender)] = stor7.length
                            else:
                                if 1 == bool(stor8[address(msg.sender)]):
                                    if stor8[address(msg.sender)]:
                                        require stor7.length - 1 < stor7.length
                                        require stor8[address(msg.sender)] - 1 < stor7.length
                                        stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                        stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                        require stor7.length
                                        stor7[stor7.length].field_0 = 0
                                        stor7.length--
                                        stor8[address(msg.sender)] = 0
    else:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if 0 / totalShares > 0:
                if not stor8[address(msg.sender)]:
                    if not stor8[address(msg.sender)]:
                        stor7.length++
                        stor7[stor7.length].field_0 = msg.sender
                        stor7[stor7.length].field_160 = 0
                        stor8[address(msg.sender)] = stor7.length
            else:
                if 0 == totalShares:
                    if 0 < principalOf[address(msg.sender)] + 1000:
                        if 1 == bool(stor8[address(msg.sender)]):
                            if stor8[address(msg.sender)]:
                                require stor7.length - 1 < stor7.length
                                require stor8[address(msg.sender)] - 1 < stor7.length
                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                require stor7.length
                                stor7[stor7.length].field_0 = 0
                                stor7.length--
                                stor8[address(msg.sender)] = 0
                    else:
                        if 0 == totalShares:
                            if principalOf[address(msg.sender)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -principalOf[address(msg.sender)] > 0:
                                if not stor8[address(msg.sender)]:
                                    if not stor8[address(msg.sender)]:
                                        stor7.length++
                                        stor7[stor7.length].field_0 = msg.sender
                                        stor7[stor7.length].field_160 = 0
                                        stor8[address(msg.sender)] = stor7.length
                            else:
                                if 1 == bool(stor8[address(msg.sender)]):
                                    if stor8[address(msg.sender)]:
                                        require stor7.length - 1 < stor7.length
                                        require stor8[address(msg.sender)] - 1 < stor7.length
                                        stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                        stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                        require stor7.length
                                        stor7[stor7.length].field_0 = 0
                                        stor7.length--
                                        stor8[address(msg.sender)] = 0
                        else:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if totalShares <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalShares
                                if principalOf[address(msg.sender)] > 0 / totalShares:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (0 / totalShares) - principalOf[address(msg.sender)] > 0:
                                    if not stor8[address(msg.sender)]:
                                        if not stor8[address(msg.sender)]:
                                            stor7.length++
                                            stor7[stor7.length].field_0 = msg.sender
                                            stor7[stor7.length].field_160 = 0
                                            stor8[address(msg.sender)] = stor7.length
                                else:
                                    if 1 == bool(stor8[address(msg.sender)]):
                                        if stor8[address(msg.sender)]:
                                            require stor7.length - 1 < stor7.length
                                            require stor8[address(msg.sender)] - 1 < stor7.length
                                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                            require stor7.length
                                            stor7[stor7.length].field_0 = 0
                                            stor7.length--
                                            stor8[address(msg.sender)] = 0
                            else:
                                if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalShares <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalShares
                                if principalOf[address(msg.sender)] > sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares) - principalOf[address(msg.sender)] > 0:
                                    if not stor8[address(msg.sender)]:
                                        if not stor8[address(msg.sender)]:
                                            stor7.length++
                                            stor7[stor7.length].field_0 = msg.sender
                                            stor7[stor7.length].field_160 = 0
                                            stor8[address(msg.sender)] = stor7.length
                                else:
                                    if 1 == bool(stor8[address(msg.sender)]):
                                        if stor8[address(msg.sender)]:
                                            require stor7.length - 1 < stor7.length
                                            require stor8[address(msg.sender)] - 1 < stor7.length
                                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                            require stor7.length
                                            stor7[stor7.length].field_0 = 0
                                            stor7.length--
                                            stor8[address(msg.sender)] = 0
                else:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalShares
                        if 0 / totalShares < principalOf[address(msg.sender)] + 1000:
                            if 1 == bool(stor8[address(msg.sender)]):
                                if stor8[address(msg.sender)]:
                                    require stor7.length - 1 < stor7.length
                                    require stor8[address(msg.sender)] - 1 < stor7.length
                                    stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                    stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                    require stor7.length
                                    stor7[stor7.length].field_0 = 0
                                    stor7.length--
                                    stor8[address(msg.sender)] = 0
                        else:
                            if 0 == totalShares:
                                if principalOf[address(msg.sender)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -principalOf[address(msg.sender)] > 0:
                                    if not stor8[address(msg.sender)]:
                                        if not stor8[address(msg.sender)]:
                                            stor7.length++
                                            stor7[stor7.length].field_0 = msg.sender
                                            stor7[stor7.length].field_160 = 0
                                            stor8[address(msg.sender)] = stor7.length
                                else:
                                    if 1 == bool(stor8[address(msg.sender)]):
                                        if stor8[address(msg.sender)]:
                                            require stor7.length - 1 < stor7.length
                                            require stor8[address(msg.sender)] - 1 < stor7.length
                                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                            require stor7.length
                                            stor7[stor7.length].field_0 = 0
                                            stor7.length--
                                            stor8[address(msg.sender)] = 0
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if totalShares <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalShares
                                    if principalOf[address(msg.sender)] > 0 / totalShares:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / totalShares) - principalOf[address(msg.sender)] > 0:
                                        if not stor8[address(msg.sender)]:
                                            if not stor8[address(msg.sender)]:
                                                stor7.length++
                                                stor7[stor7.length].field_0 = msg.sender
                                                stor7[stor7.length].field_160 = 0
                                                stor8[address(msg.sender)] = stor7.length
                                    else:
                                        if 1 == bool(stor8[address(msg.sender)]):
                                            if stor8[address(msg.sender)]:
                                                require stor7.length - 1 < stor7.length
                                                require stor8[address(msg.sender)] - 1 < stor7.length
                                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                                require stor7.length
                                                stor7[stor7.length].field_0 = 0
                                                stor7.length--
                                                stor8[address(msg.sender)] = 0
                                else:
                                    if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalShares <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalShares
                                    if principalOf[address(msg.sender)] > sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares) - principalOf[address(msg.sender)] > 0:
                                        if not stor8[address(msg.sender)]:
                                            if not stor8[address(msg.sender)]:
                                                stor7.length++
                                                stor7[stor7.length].field_0 = msg.sender
                                                stor7[stor7.length].field_160 = 0
                                                stor8[address(msg.sender)] = stor7.length
                                    else:
                                        if 1 == bool(stor8[address(msg.sender)]):
                                            if stor8[address(msg.sender)]:
                                                require stor7.length - 1 < stor7.length
                                                require stor8[address(msg.sender)] - 1 < stor7.length
                                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                                require stor7.length
                                                stor7[stor7.length].field_0 = 0
                                                stor7.length--
                                                stor8[address(msg.sender)] = 0
                    else:
                        if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalShares
                        if sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares < principalOf[address(msg.sender)] + 1000:
                            if 1 == bool(stor8[address(msg.sender)]):
                                if stor8[address(msg.sender)]:
                                    require stor7.length - 1 < stor7.length
                                    require stor8[address(msg.sender)] - 1 < stor7.length
                                    stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                    stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                    require stor7.length
                                    stor7[stor7.length].field_0 = 0
                                    stor7.length--
                                    stor8[address(msg.sender)] = 0
                        else:
                            if 0 == totalShares:
                                if principalOf[address(msg.sender)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -principalOf[address(msg.sender)] > 0:
                                    if not stor8[address(msg.sender)]:
                                        if not stor8[address(msg.sender)]:
                                            stor7.length++
                                            stor7[stor7.length].field_0 = msg.sender
                                            stor7[stor7.length].field_160 = 0
                                            stor8[address(msg.sender)] = stor7.length
                                else:
                                    if 1 == bool(stor8[address(msg.sender)]):
                                        if stor8[address(msg.sender)]:
                                            require stor7.length - 1 < stor7.length
                                            require stor8[address(msg.sender)] - 1 < stor7.length
                                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                            require stor7.length
                                            stor7[stor7.length].field_0 = 0
                                            stor7.length--
                                            stor8[address(msg.sender)] = 0
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if totalShares <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalShares
                                    if principalOf[address(msg.sender)] > 0 / totalShares:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / totalShares) - principalOf[address(msg.sender)] > 0:
                                        if not stor8[address(msg.sender)]:
                                            if not stor8[address(msg.sender)]:
                                                stor7.length++
                                                stor7[stor7.length].field_0 = msg.sender
                                                stor7[stor7.length].field_160 = 0
                                                stor8[address(msg.sender)] = stor7.length
                                    else:
                                        if 1 == bool(stor8[address(msg.sender)]):
                                            if stor8[address(msg.sender)]:
                                                require stor7.length - 1 < stor7.length
                                                require stor8[address(msg.sender)] - 1 < stor7.length
                                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                                require stor7.length
                                                stor7[stor7.length].field_0 = 0
                                                stor7.length--
                                                stor8[address(msg.sender)] = 0
                                else:
                                    if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalShares <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalShares
                                    if principalOf[address(msg.sender)] > sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares) - principalOf[address(msg.sender)] > 0:
                                        if not stor8[address(msg.sender)]:
                                            if not stor8[address(msg.sender)]:
                                                stor7.length++
                                                stor7[stor7.length].field_0 = msg.sender
                                                stor7[stor7.length].field_160 = 0
                                                stor8[address(msg.sender)] = stor7.length
                                    else:
                                        if 1 == bool(stor8[address(msg.sender)]):
                                            if stor8[address(msg.sender)]:
                                                require stor7.length - 1 < stor7.length
                                                require stor8[address(msg.sender)] - 1 < stor7.length
                                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                                require stor7.length
                                                stor7[stor7.length].field_0 = 0
                                                stor7.length--
                                                stor8[address(msg.sender)] = 0
        else:
            if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares > 0:
                if not stor8[address(msg.sender)]:
                    if not stor8[address(msg.sender)]:
                        stor7.length++
                        stor7[stor7.length].field_0 = msg.sender
                        stor7[stor7.length].field_160 = 0
                        stor8[address(msg.sender)] = stor7.length
            else:
                if 0 == totalShares:
                    if 0 < principalOf[address(msg.sender)] + 1000:
                        if 1 == bool(stor8[address(msg.sender)]):
                            if stor8[address(msg.sender)]:
                                require stor7.length - 1 < stor7.length
                                require stor8[address(msg.sender)] - 1 < stor7.length
                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                require stor7.length
                                stor7[stor7.length].field_0 = 0
                                stor7.length--
                                stor8[address(msg.sender)] = 0
                    else:
                        if 0 == totalShares:
                            if principalOf[address(msg.sender)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -principalOf[address(msg.sender)] > 0:
                                if not stor8[address(msg.sender)]:
                                    if not stor8[address(msg.sender)]:
                                        stor7.length++
                                        stor7[stor7.length].field_0 = msg.sender
                                        stor7[stor7.length].field_160 = 0
                                        stor8[address(msg.sender)] = stor7.length
                            else:
                                if 1 == bool(stor8[address(msg.sender)]):
                                    if stor8[address(msg.sender)]:
                                        require stor7.length - 1 < stor7.length
                                        require stor8[address(msg.sender)] - 1 < stor7.length
                                        stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                        stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                        require stor7.length
                                        stor7[stor7.length].field_0 = 0
                                        stor7.length--
                                        stor8[address(msg.sender)] = 0
                        else:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if totalShares <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalShares
                                if principalOf[address(msg.sender)] > 0 / totalShares:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (0 / totalShares) - principalOf[address(msg.sender)] > 0:
                                    if not stor8[address(msg.sender)]:
                                        if not stor8[address(msg.sender)]:
                                            stor7.length++
                                            stor7[stor7.length].field_0 = msg.sender
                                            stor7[stor7.length].field_160 = 0
                                            stor8[address(msg.sender)] = stor7.length
                                else:
                                    if 1 == bool(stor8[address(msg.sender)]):
                                        if stor8[address(msg.sender)]:
                                            require stor7.length - 1 < stor7.length
                                            require stor8[address(msg.sender)] - 1 < stor7.length
                                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                            require stor7.length
                                            stor7[stor7.length].field_0 = 0
                                            stor7.length--
                                            stor8[address(msg.sender)] = 0
                            else:
                                if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalShares <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalShares
                                if principalOf[address(msg.sender)] > sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares) - principalOf[address(msg.sender)] > 0:
                                    if not stor8[address(msg.sender)]:
                                        if not stor8[address(msg.sender)]:
                                            stor7.length++
                                            stor7[stor7.length].field_0 = msg.sender
                                            stor7[stor7.length].field_160 = 0
                                            stor8[address(msg.sender)] = stor7.length
                                else:
                                    if 1 == bool(stor8[address(msg.sender)]):
                                        if stor8[address(msg.sender)]:
                                            require stor7.length - 1 < stor7.length
                                            require stor8[address(msg.sender)] - 1 < stor7.length
                                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                            require stor7.length
                                            stor7[stor7.length].field_0 = 0
                                            stor7.length--
                                            stor8[address(msg.sender)] = 0
                else:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalShares
                        if 0 / totalShares < principalOf[address(msg.sender)] + 1000:
                            if 1 == bool(stor8[address(msg.sender)]):
                                if stor8[address(msg.sender)]:
                                    require stor7.length - 1 < stor7.length
                                    require stor8[address(msg.sender)] - 1 < stor7.length
                                    stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                    stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                    require stor7.length
                                    stor7[stor7.length].field_0 = 0
                                    stor7.length--
                                    stor8[address(msg.sender)] = 0
                        else:
                            if 0 == totalShares:
                                if principalOf[address(msg.sender)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -principalOf[address(msg.sender)] > 0:
                                    if not stor8[address(msg.sender)]:
                                        if not stor8[address(msg.sender)]:
                                            stor7.length++
                                            stor7[stor7.length].field_0 = msg.sender
                                            stor7[stor7.length].field_160 = 0
                                            stor8[address(msg.sender)] = stor7.length
                                else:
                                    if 1 == bool(stor8[address(msg.sender)]):
                                        if stor8[address(msg.sender)]:
                                            require stor7.length - 1 < stor7.length
                                            require stor8[address(msg.sender)] - 1 < stor7.length
                                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                            require stor7.length
                                            stor7[stor7.length].field_0 = 0
                                            stor7.length--
                                            stor8[address(msg.sender)] = 0
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if totalShares <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalShares
                                    if principalOf[address(msg.sender)] > 0 / totalShares:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / totalShares) - principalOf[address(msg.sender)] > 0:
                                        if not stor8[address(msg.sender)]:
                                            if not stor8[address(msg.sender)]:
                                                stor7.length++
                                                stor7[stor7.length].field_0 = msg.sender
                                                stor7[stor7.length].field_160 = 0
                                                stor8[address(msg.sender)] = stor7.length
                                    else:
                                        if 1 == bool(stor8[address(msg.sender)]):
                                            if stor8[address(msg.sender)]:
                                                require stor7.length - 1 < stor7.length
                                                require stor8[address(msg.sender)] - 1 < stor7.length
                                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                                require stor7.length
                                                stor7[stor7.length].field_0 = 0
                                                stor7.length--
                                                stor8[address(msg.sender)] = 0
                                else:
                                    if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalShares <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalShares
                                    if principalOf[address(msg.sender)] > sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares) - principalOf[address(msg.sender)] > 0:
                                        if not stor8[address(msg.sender)]:
                                            if not stor8[address(msg.sender)]:
                                                stor7.length++
                                                stor7[stor7.length].field_0 = msg.sender
                                                stor7[stor7.length].field_160 = 0
                                                stor8[address(msg.sender)] = stor7.length
                                    else:
                                        if 1 == bool(stor8[address(msg.sender)]):
                                            if stor8[address(msg.sender)]:
                                                require stor7.length - 1 < stor7.length
                                                require stor8[address(msg.sender)] - 1 < stor7.length
                                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                                require stor7.length
                                                stor7[stor7.length].field_0 = 0
                                                stor7.length--
                                                stor8[address(msg.sender)] = 0
                    else:
                        if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalShares
                        if sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares < principalOf[address(msg.sender)] + 1000:
                            if 1 == bool(stor8[address(msg.sender)]):
                                if stor8[address(msg.sender)]:
                                    require stor7.length - 1 < stor7.length
                                    require stor8[address(msg.sender)] - 1 < stor7.length
                                    stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                    stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                    require stor7.length
                                    stor7[stor7.length].field_0 = 0
                                    stor7.length--
                                    stor8[address(msg.sender)] = 0
                        else:
                            if 0 == totalShares:
                                if principalOf[address(msg.sender)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -principalOf[address(msg.sender)] > 0:
                                    if not stor8[address(msg.sender)]:
                                        if not stor8[address(msg.sender)]:
                                            stor7.length++
                                            stor7[stor7.length].field_0 = msg.sender
                                            stor7[stor7.length].field_160 = 0
                                            stor8[address(msg.sender)] = stor7.length
                                else:
                                    if 1 == bool(stor8[address(msg.sender)]):
                                        if stor8[address(msg.sender)]:
                                            require stor7.length - 1 < stor7.length
                                            require stor8[address(msg.sender)] - 1 < stor7.length
                                            stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                            stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                            require stor7.length
                                            stor7[stor7.length].field_0 = 0
                                            stor7.length--
                                            stor8[address(msg.sender)] = 0
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.getDepositTokensForShares(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if totalShares <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalShares
                                    if principalOf[address(msg.sender)] > 0 / totalShares:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (0 / totalShares) - principalOf[address(msg.sender)] > 0:
                                        if not stor8[address(msg.sender)]:
                                            if not stor8[address(msg.sender)]:
                                                stor7.length++
                                                stor7[stor7.length].field_0 = msg.sender
                                                stor7[stor7.length].field_160 = 0
                                                stor8[address(msg.sender)] = stor7.length
                                    else:
                                        if 1 == bool(stor8[address(msg.sender)]):
                                            if stor8[address(msg.sender)]:
                                                require stor7.length - 1 < stor7.length
                                                require stor8[address(msg.sender)] - 1 < stor7.length
                                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                                require stor7.length
                                                stor7[stor7.length].field_0 = 0
                                                stor7.length--
                                                stor8[address(msg.sender)] = 0
                                else:
                                    if sharesOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalShares <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalShares
                                    if principalOf[address(msg.sender)] > sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (sharesOf[address(msg.sender)] * ext_call.return_data[0] / totalShares) - principalOf[address(msg.sender)] > 0:
                                        if not stor8[address(msg.sender)]:
                                            if not stor8[address(msg.sender)]:
                                                stor7.length++
                                                stor7[stor7.length].field_0 = msg.sender
                                                stor7[stor7.length].field_160 = 0
                                                stor8[address(msg.sender)] = stor7.length
                                    else:
                                        if 1 == bool(stor8[address(msg.sender)]):
                                            if stor8[address(msg.sender)]:
                                                require stor7.length - 1 < stor7.length
                                                require stor8[address(msg.sender)] - 1 < stor7.length
                                                stor7[stor8[address(msg.sender)]].field_0 = stor7[stor7.length].field_0
                                                stor8[stor7[stor7.length].field_0] = stor8[address(msg.sender)]
                                                require stor7.length
                                                stor7[stor7.length].field_0 = 0
                                                stor7.length--
                                                stor8[address(msg.sender)] = 0
    stor1 = 1
}



}
