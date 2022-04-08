contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - claim()
#  - totalEarned()
#  - withdrawAll()
#  - deposit(uint256 arg1)
#  - depositAll()
#
const MAX_FEE = 10000


address owner;
address strategyAddress;
address rewardTokenAddress;
address JOEAddress;
address sub_8a5fcf70Address;
uint32 stor6;
address sub_7b805e03Address;
uint256 stor6;
uint256 userCount;
uint256 sub_6f1aeb4a;
uint256 accRewardPerShare;
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

function userCount() payable {
    return userCount
}

function totalSupply() payable {
    return totalSupply
}

function want() payable {
    return JOEAddress
}

function depositedAt(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositedAt[address(arg1)]
}

function feeDuration() payable {
    return feeDuration
}

function totalShares() payable {
    return totalShares
}

function feeRecipient() payable {
    return feeRecipientAddress
}

function principalOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return principalOf[address(arg1)]
}

function sub_6423f66e(?) payable {
    return sub_6423f66e
}

function sub_6f1aeb4a(?) payable {
    return sub_6f1aeb4a
}

function sub_7b805e03(?) payable {
    return address(sub_7b805e03Address)
}

function performanceFee() payable {
    return performanceFee
}

function sub_8a5fcf70(?) payable {
    return sub_8a5fcf70Address
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function accRewardPerShare() payable {
    return accRewardPerShare
}

function strategy() payable {
    return strategyAddress
}

function sharesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return sharesOf[address(arg1)]
}

function rewardToken() payable {
    return rewardTokenAddress
}

function JOE() payable {
    return JOEAddress
}

function _fallback() payable {
    revert
}

function sub_4ac644bc(?) payable {
    require calldata.size - 4 >= 32
}

function sub_1a136cd7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeDuration = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPriceCalculator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_8a5fcf70Address = arg1
}

function sub_2f0754ca(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'Invalid value'
    sub_6423f66e = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10000:
        revert with 0, '!fee'
    withdrawalFee = arg1
}

function setPerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10000:
        revert with 0, '!fee'
    performanceFee = arg1
}

function setFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '!address'
    feeRecipientAddress = arg1
}

function setRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 == JOEAddress:
        revert with 0, '!token'
    rewardTokenAddress = arg1
}

function available() payable {
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfStrategy() payable {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function earn() payable {
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
    call strategyAddress.enter(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
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
    return ext_call.return_data[0], 0
}

function inCaseTokensGetStuck(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 == JOEAddress:
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

function userList() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require userCount <= test266151307()
    if not userCount:
        if var35002 >= userCount:
            mem[(32 * userCount) + 128] = 32
            mem[(32 * userCount) + 160] = userCount
            mem[(32 * userCount) + 192 len floor32(userCount)] = mem[128 len floor32(userCount)]
            return memory
              from (32 * userCount) + 128
               len (96 * userCount) + 64
        if var41001 >= userCount:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[(32 * userCount) + 230 len 30]
        require var43002 < userCount
        require var49002 < userCount
        mem[(32 * var51001) + 128] = address(var51003)
        if var61002 < userCount:
            # nil
        else:
            mem[(32 * userCount) + 128] = 32
            mem[(32 * userCount) + 160] = userCount
            mem[(32 * userCount) + 192 len floor32(userCount)] = mem[128 len floor32(userCount)]
            return memory
              from (32 * userCount) + 128
               len (96 * userCount) + 64
    else:
        mem[128 len 32 * userCount] = call.data[calldata.size len 32 * userCount]
        if var36002 >= userCount:
            mem[(32 * userCount) + 128] = 32
            mem[(32 * userCount) + 160] = userCount
            mem[(32 * userCount) + 192 len floor32(userCount)] = call.data[calldata.size len floor32(userCount)]
            return memory
              from (32 * userCount) + 128
               len (96 * userCount) + 64
        if var42001 >= userCount:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[(32 * userCount) + 230 len 30]
        require var44002 < userCount
        require var50002 < userCount
        mem[(32 * var52001) + 128] = address(var52003)
        if var62002 < userCount:
            # nil
        else:
            mem[(32 * userCount) + 128] = 32
            mem[(32 * userCount) + 160] = userCount
            mem[(32 * userCount) + 192 len floor32(userCount)] = call.data[calldata.size len floor32(userCount)]
            return memory
              from (32 * userCount) + 128
               len (96 * userCount) + 64
}

function balance() payable {
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args strategyAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(JOEAddress)
        staticcall JOEAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    call strategyAddress.leave(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(JOEAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call JOEAddress with:
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

function getPricePerFullShare() payable {
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
    staticcall strategyAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args strategyAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            require ext_code.size(JOEAddress)
            staticcall JOEAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    return (0 / totalShares)
            else:
                if (10^18 * 0 / ext_call.return_data[0]) + (10^18 * ext_call.return_data[0]) / (0 / ext_call.return_data[0]) + ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    return ((10^18 * 0 / ext_call.return_data[0]) + (10^18 * ext_call.return_data[0]) / totalShares)
            ('iszero', ('stor', ('name', 'totalShares', 12)))
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            require ext_code.size(JOEAddress)
            staticcall JOEAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    return (0 / totalShares)
            else:
                if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (10^18 * ext_call.return_data[0]) / totalShares)
            ('iszero', ('stor', ('name', 'totalShares', 12)))
    revert
}

function balanceOf(address arg1) payable {
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
    staticcall strategyAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args strategyAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            require ext_code.size(JOEAddress)
            staticcall JOEAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    return (0 / totalShares)
            else:
                if (0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (0 / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    return ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares)
            ('iszero', ('stor', ('name', 'totalShares', 12)))
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            require ext_code.size(JOEAddress)
            staticcall JOEAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    return (0 / totalShares)
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares)
            ('iszero', ('stor', ('name', 'totalShares', 12)))
    revert
}

function sub_23ef9abe(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), 0
    mem[324 len 0] = 0
    call rewardTokenAddress with:
       funct uint32(stor6)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor6):
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
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor6):
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
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor6):
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

function earned(address arg1) payable {
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
        staticcall strategyAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(JOEAddress)
        staticcall JOEAddress.0x70a08231 with:
                gas gas_remaining wei
               args strategyAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(JOEAddress)
            staticcall JOEAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if 0 / totalShares < principalOf[address(arg1)] + 1000:
                    return 0
            else:
                if (0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (0 / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if (0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares < principalOf[address(arg1)] + 1000:
                    return 0
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(JOEAddress)
            staticcall JOEAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if 0 / totalShares < principalOf[address(arg1)] + 1000:
                    return 0
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares < principalOf[address(arg1)] + 1000:
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
    staticcall strategyAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args strategyAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(JOEAddress)
        staticcall JOEAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if principalOf[address(arg1)] > 0 / totalShares:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / totalShares) - principalOf[address(arg1)])
        if (0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (0 / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShares
        if principalOf[address(arg1)] > (0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShares
        if principalOf[address(arg1)] > 0 / totalShares:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / totalShares) - principalOf[address(arg1)])
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalShares <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalShares
    if principalOf[address(arg1)] > (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)])
}

function claimable(address arg1) payable {
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
        staticcall strategyAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(JOEAddress)
        staticcall JOEAddress.0x70a08231 with:
                gas gas_remaining wei
               args strategyAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(JOEAddress)
            staticcall JOEAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if 0 / totalShares < principalOf[address(arg1)] + 1000:
                    return 0
            else:
                if (0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (0 / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if (0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares < principalOf[address(arg1)] + 1000:
                    return 0
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(JOEAddress)
            staticcall JOEAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if 0 / totalShares < principalOf[address(arg1)] + 1000:
                    return 0
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalShares
                if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares < principalOf[address(arg1)] + 1000:
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
        staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args JOEAddress, -1 * performanceFee * principalOf[address(arg1)] / 10000
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
    staticcall strategyAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args strategyAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(JOEAddress)
        staticcall JOEAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0]:
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
            staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args JOEAddress, (0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000
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
        if (0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (0 / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShares
        if principalOf[address(arg1)] > (0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]:
            return 0, 
                   ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
        if ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)] != performanceFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 <= 1000:
            return 0, 
                   ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
        require ext_code.size(sub_8a5fcf70Address)
        staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args JOEAddress, ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000
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
            if ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 
                   ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)] - (((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
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
            if ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0] * sub_6423f66e / 10^18, 
                   ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)] - (((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
               ((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)] - (((0 / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    require ext_code.size(JOEAddress)
    staticcall JOEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
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
        staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args JOEAddress, (0 / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000
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
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalShares <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalShares
    if principalOf[address(arg1)] > (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]:
        return 0, 
               ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
    if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)] != performanceFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 <= 1000:
        return 0, 
               ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
    require ext_code.size(sub_8a5fcf70Address)
    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args JOEAddress, ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000
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
        if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, 
               ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)] - (((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
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
        if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ext_call.return_data[0] * sub_6423f66e / 10^18, 
               ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)] - (((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
    if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000 > ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
           ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)] - (((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares * performanceFee) - (principalOf[address(arg1)] * performanceFee) / 10000)
}



}
