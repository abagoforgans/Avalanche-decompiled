contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - claim()
#  - withdrawAll()
#  - deposit(uint256 arg1)
#  - depositAll()
#
const MAX_FEE = 10000


address owner;
uint256 stor1;
uint32 stor2;
address strategyAddress;
uint256 stor2;
address wantAddress;
address rewardTokenAddress;
address sub_9bab65b8Address;
address sub_8a5fcf70Address;
address uniswapRouterAddress;
uint32 stor8;
address sub_7b805e03Address;
uint256 stor8;
uint256 userCount;
uint256 sub_6f1aeb4a;
uint256 accRewardPerShare;
uint256 totalShares;
uint256 sub_4b1533b2;
mapping of uint256 sharesOf;
mapping of uint256 principalOf;
mapping of uint256 stor18;
address feeRecipientAddress;
uint256 performanceFee;
uint256 withdrawalFee;
uint256 sub_6423f66e;
uint256 feeDuration;
uint8 sub_96ae71f0;

function userCount() payable {
    return userCount
}

function totalSupply() payable {
    return sub_4b1533b2
}

function want() payable {
    return wantAddress
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

function sub_4b1533b2(?) payable {
    return sub_4b1533b2
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

function uniswapRouter() payable {
    return uniswapRouterAddress
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

function sub_96ae71f0(?) payable {
    return bool(sub_96ae71f0)
}

function sub_9bab65b8(?) payable {
    return sub_9bab65b8Address
}

function strategy() payable {
    return address(strategyAddress)
}

function sharesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return sharesOf[address(arg1)]
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
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

function sub_67b1f60f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_96ae71f0 = uint8(arg1)
}

function sub_a6262c5b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_9bab65b8Address = arg1
}

function setUniswapRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uniswapRouterAddress = arg1
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
    if wantAddress == arg1:
        revert with 0, '!token'
    rewardTokenAddress = arg1
}

function available() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
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
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balance() payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function totalEarned() payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 2 * ext_call.return_data[0] <= sub_4b1533b2:
        return 0
    if sub_4b1533b2 > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (2 * ext_call.return_data[0]) - sub_4b1533b2:
        return (2 * ext_call.return_data[0]) - sub_4b1533b2, 0
    require ext_code.size(sub_8a5fcf70Address)
    staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args wantAddress, (2 * ext_call.return_data[0]) - sub_4b1533b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return (2 * ext_call.return_data[0]) - sub_4b1533b2, ext_call.return_data[32]
}

function getPricePerFullShare() payable {
    if 0 == totalShares:
        return 10^18
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (0 / totalShares)
    else:
        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (2 * 10^18 * ext_call.return_data[0] / totalShares)
    ('iszero', ('stor', ('name', 'totalShares', 13)))
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == totalShares:
        return 0
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return (0 / totalShares)
    else:
        if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalShares <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShares:
            return ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares)
    ('iszero', ('stor', ('name', 'totalShares', 13)))
    revert
}

function sub_4ac644bc(?) payable {
    require calldata.size - 4 >= 32
    if address(strategyAddress) != msg.sender:
        revert with 0, '!strategy'
    if arg1:
        if performanceFee * arg1 / arg1 != performanceFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (performanceFee * arg1 / 10000) + sub_6f1aeb4a < sub_6f1aeb4a:
            revert with 0, 'SafeMath: addition overflow'
        sub_6f1aeb4a += performanceFee * arg1 / 10000
        if not performanceFee * arg1 / 10000:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if (0 / totalShares) + accRewardPerShare < accRewardPerShare:
                revert with 0, 'SafeMath: addition overflow'
            accRewardPerShare += 0 / totalShares
        else:
            if 10^12 * performanceFee * arg1 / 10000 / performanceFee * arg1 / 10000 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if (10^12 * performanceFee * arg1 / 10000 / totalShares) + accRewardPerShare < accRewardPerShare:
                revert with 0, 'SafeMath: addition overflow'
            accRewardPerShare += 10^12 * performanceFee * arg1 / 10000 / totalShares
}

function inCaseTokensGetStuck(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if wantAddress == arg1:
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

function earn() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
    call wantAddress with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
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
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).deposit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function vest() payable {
    if stor1 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.sender != tx.origin:
        revert with 0, 'no enduser'
    if sharesOf[address(msg.sender)]:
        if not sharesOf[address(msg.sender)]:
            if stor18[address(msg.sender)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -stor18[address(msg.sender)]:
                if -stor18[address(msg.sender)] > sub_6f1aeb4a:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_6f1aeb4a += stor18[address(msg.sender)]
                require ext_code.size(sub_8a5fcf70Address)
                staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args sub_9bab65b8Address, -stor18[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not sub_6423f66e:
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                else:
                    if ext_call.return_data[0] * sub_6423f66e / sub_6423f66e != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * sub_6423f66e / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_7b805e03Address))
                call address(sub_7b805e03Address).vest(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if accRewardPerShare * sharesOf[address(msg.sender)] / sharesOf[address(msg.sender)] != accRewardPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor18[address(msg.sender)] > accRewardPerShare * sharesOf[address(msg.sender)] / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (accRewardPerShare * sharesOf[address(msg.sender)] / 10^12) - stor18[address(msg.sender)]:
                if (accRewardPerShare * sharesOf[address(msg.sender)] / 10^12) - stor18[address(msg.sender)] > sub_6f1aeb4a:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_6f1aeb4a = sub_6f1aeb4a - (accRewardPerShare * sharesOf[address(msg.sender)] / 10^12) + stor18[address(msg.sender)]
                require ext_code.size(sub_8a5fcf70Address)
                staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(msg.sender)] / 10^12) - stor18[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not sub_6423f66e:
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                else:
                    if ext_call.return_data[0] * sub_6423f66e / sub_6423f66e != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * sub_6423f66e / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_7b805e03Address))
                call address(sub_7b805e03Address).vest(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if not sharesOf[msg.sender]:
        stor18[msg.sender] = 0
    else:
        if accRewardPerShare * sharesOf[msg.sender] / sharesOf[msg.sender] != accRewardPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        stor18[msg.sender] = accRewardPerShare * sharesOf[msg.sender] / 10^12
    stor1 = 1
}

function sub_23ef9abe(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
    call rewardTokenAddress with:
       funct uint32(stor8)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
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
        mem[424 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call rewardTokenAddress with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
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
        mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call rewardTokenAddress with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
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
                revert with 0, 'SafeERC20: low-level call failed'
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
        if 0 == totalShares:
            if principalOf[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_96ae71f0:
                return -principalOf[address(arg1)]
            require ext_code.size(sub_8a5fcf70Address)
            staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args wantAddress, -principalOf[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_8a5fcf70Address)
            staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
                    gas gas_remaining wei
                   args sub_9bab65b8Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                return 0
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
            ('iszero', ('ext_call.return_data', 0, 32))
        else:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).balanceOf() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    if principalOf[address(arg1)] > 0 / totalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_96ae71f0:
                        return ((0 / totalShares) - principalOf[address(arg1)])
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args wantAddress, (0 / totalShares) - principalOf[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[0]:
                        return 0
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return (0 / ext_call.return_data[0])
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                    ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalShares <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalShares:
                    if principalOf[address(arg1)] > (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_96ae71f0:
                        return (((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)])
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args wantAddress, ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[0]:
                        return 0
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return (0 / ext_call.return_data[0])
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                    ('iszero', ('ext_call.return_data', 0, 32))
    else:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalShares:
                if 0 / totalShares < principalOf[address(arg1)] + 1000:
                    return 0
                if 0 == totalShares:
                    if principalOf[address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_96ae71f0:
                        return -principalOf[address(arg1)]
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args wantAddress, -principalOf[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[0]:
                        return 0
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return (0 / ext_call.return_data[0])
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                    ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).balanceOf() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalShares:
                            if principalOf[address(arg1)] > 0 / totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_96ae71f0:
                                return ((0 / totalShares) - principalOf[address(arg1)])
                            require ext_code.size(sub_8a5fcf70Address)
                            staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, (0 / totalShares) - principalOf[address(arg1)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(sub_8a5fcf70Address)
                            staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_9bab65b8Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[0]:
                                return 0
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return (0 / ext_call.return_data[0])
                            else:
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalShares:
                            if principalOf[address(arg1)] > (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_96ae71f0:
                                return (((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)])
                            require ext_code.size(sub_8a5fcf70Address)
                            staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(sub_8a5fcf70Address)
                            staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_9bab65b8Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[0]:
                                return 0
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return (0 / ext_call.return_data[0])
                            else:
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
        else:
            if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalShares:
                if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares < principalOf[address(arg1)] + 1000:
                    return 0
                if 0 == totalShares:
                    if principalOf[address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_96ae71f0:
                        return -principalOf[address(arg1)]
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args wantAddress, -principalOf[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[0]:
                        return 0
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return (0 / ext_call.return_data[0])
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                    ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).balanceOf() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalShares:
                            if principalOf[address(arg1)] > 0 / totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_96ae71f0:
                                return ((0 / totalShares) - principalOf[address(arg1)])
                            require ext_code.size(sub_8a5fcf70Address)
                            staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, (0 / totalShares) - principalOf[address(arg1)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(sub_8a5fcf70Address)
                            staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_9bab65b8Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[0]:
                                return 0
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return (0 / ext_call.return_data[0])
                            else:
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalShares <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalShares:
                            if principalOf[address(arg1)] > (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_96ae71f0:
                                return (((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)])
                            require ext_code.size(sub_8a5fcf70Address)
                            staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args wantAddress, ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(sub_8a5fcf70Address)
                            staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_9bab65b8Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if not ext_call.return_data[0]:
                                return 0
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return (0 / ext_call.return_data[0])
                            else:
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                            ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == totalShares:
        if 0 < principalOf[address(arg1)] + 1000:
            if not sharesOf[address(arg1)]:
                if stor18[address(arg1)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor18[address(arg1)]:
                    return 0
                require ext_code.size(sub_8a5fcf70Address)
                staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args sub_9bab65b8Address, -stor18[address(arg1)]
            else:
                if accRewardPerShare * sharesOf[address(arg1)] / sharesOf[address(arg1)] != accRewardPerShare:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor18[address(arg1)] > accRewardPerShare * sharesOf[address(arg1)] / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]:
                    return 0
                require ext_code.size(sub_8a5fcf70Address)
                staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]
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
                return 0
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
                return ext_call.return_data[0] * sub_6423f66e / 10^18, 0
            if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
                   0
    else:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if 0 / totalShares < principalOf[address(arg1)] + 1000:
                if not sharesOf[address(arg1)]:
                    if stor18[address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -stor18[address(arg1)]:
                        return 0
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address, -stor18[address(arg1)]
                else:
                    if accRewardPerShare * sharesOf[address(arg1)] / sharesOf[address(arg1)] != accRewardPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if stor18[address(arg1)] > accRewardPerShare * sharesOf[address(arg1)] / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]:
                        return 0
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]
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
                    return 0
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
                    return ext_call.return_data[0] * sub_6423f66e / 10^18, 0
                if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
                       0
        else:
            if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares < principalOf[address(arg1)] + 1000:
                if not sharesOf[address(arg1)]:
                    if stor18[address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -stor18[address(arg1)]:
                        return 0
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address, -stor18[address(arg1)]
                else:
                    if accRewardPerShare * sharesOf[address(arg1)] / sharesOf[address(arg1)] != accRewardPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if stor18[address(arg1)] > accRewardPerShare * sharesOf[address(arg1)] / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]:
                        return 0
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]
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
                    return 0
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
                    return ext_call.return_data[0] * sub_6423f66e / 10^18, 0
                if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
                       0
    if 0 == totalShares:
        if principalOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_96ae71f0:
            if not sharesOf[address(arg1)]:
                if stor18[address(arg1)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor18[address(arg1)]:
                    return 0, -principalOf[address(arg1)]
                require ext_code.size(sub_8a5fcf70Address)
                staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args sub_9bab65b8Address, -stor18[address(arg1)]
            else:
                if accRewardPerShare * sharesOf[address(arg1)] / sharesOf[address(arg1)] != accRewardPerShare:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor18[address(arg1)] > accRewardPerShare * sharesOf[address(arg1)] / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]:
                    return 0, -principalOf[address(arg1)]
                require ext_code.size(sub_8a5fcf70Address)
                staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]
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
                return 0, -principalOf[address(arg1)]
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
                return ext_call.return_data[0] * sub_6423f66e / 10^18, -principalOf[address(arg1)]
            if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
                   -principalOf[address(arg1)]
        require ext_code.size(sub_8a5fcf70Address)
        staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args wantAddress, -principalOf[address(arg1)]
    else:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if principalOf[address(arg1)] > 0 / totalShares:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_96ae71f0:
                if not sharesOf[address(arg1)]:
                    if stor18[address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -stor18[address(arg1)]:
                        return 0, (0 / totalShares) - principalOf[address(arg1)]
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address, -stor18[address(arg1)]
                else:
                    if accRewardPerShare * sharesOf[address(arg1)] / sharesOf[address(arg1)] != accRewardPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if stor18[address(arg1)] > accRewardPerShare * sharesOf[address(arg1)] / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]:
                        return 0, (0 / totalShares) - principalOf[address(arg1)]
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]
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
                    return 0, (0 / totalShares) - principalOf[address(arg1)]
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
                    return ext_call.return_data[0] * sub_6423f66e / 10^18, (0 / totalShares) - principalOf[address(arg1)]
                if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
                       (0 / totalShares) - principalOf[address(arg1)]
            require ext_code.size(sub_8a5fcf70Address)
            staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args wantAddress, (0 / totalShares) - principalOf[address(arg1)]
        else:
            if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            if principalOf[address(arg1)] > (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_96ae71f0:
                if not sharesOf[address(arg1)]:
                    if stor18[address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -stor18[address(arg1)]:
                        return 0, 
                               ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address, -stor18[address(arg1)]
                else:
                    if accRewardPerShare * sharesOf[address(arg1)] / sharesOf[address(arg1)] != accRewardPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if stor18[address(arg1)] > accRewardPerShare * sharesOf[address(arg1)] / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]:
                        return 0, 
                               ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
                    require ext_code.size(sub_8a5fcf70Address)
                    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]
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
                    return 0, 
                           ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
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
                    return ext_call.return_data[0] * sub_6423f66e / 10^18, 
                           ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
                if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
                       ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
            require ext_code.size(sub_8a5fcf70Address)
            staticcall sub_8a5fcf70Address.valueOfLP(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args wantAddress, ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_8a5fcf70Address)
    staticcall sub_8a5fcf70Address.priceOf(address rg1) with:
            gas gas_remaining wei
           args sub_9bab65b8Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if not sharesOf[address(arg1)]:
            if stor18[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor18[address(arg1)]:
                return 0
            require ext_code.size(sub_8a5fcf70Address)
            staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_9bab65b8Address, -stor18[address(arg1)]
        else:
            if accRewardPerShare * sharesOf[address(arg1)] / sharesOf[address(arg1)] != accRewardPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor18[address(arg1)] > accRewardPerShare * sharesOf[address(arg1)] / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]:
                return 0
            require ext_code.size(sub_8a5fcf70Address)
            staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]
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
            return 0
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
            return ext_call.return_data[0] * sub_6423f66e / 10^18, 0
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
               0
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not sharesOf[address(arg1)]:
            if stor18[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor18[address(arg1)]:
                return 0, 0 / ext_call.return_data[0]
            require ext_code.size(sub_8a5fcf70Address)
            staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_9bab65b8Address, -stor18[address(arg1)]
        else:
            if accRewardPerShare * sharesOf[address(arg1)] / sharesOf[address(arg1)] != accRewardPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor18[address(arg1)] > accRewardPerShare * sharesOf[address(arg1)] / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]:
                return 0, 0 / ext_call.return_data[0]
            require ext_code.size(sub_8a5fcf70Address)
            staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]
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
            return 0, 0 / ext_call.return_data[0]
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
            return ext_call.return_data[0] * sub_6423f66e / 10^18, 0 / ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
               0 / ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not sharesOf[address(arg1)]:
        if stor18[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -stor18[address(arg1)]:
            return 0, 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(sub_8a5fcf70Address)
        staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args sub_9bab65b8Address, -stor18[address(arg1)]
    else:
        if accRewardPerShare * sharesOf[address(arg1)] / sharesOf[address(arg1)] != accRewardPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor18[address(arg1)] > accRewardPerShare * sharesOf[address(arg1)] / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]:
            return 0, 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(sub_8a5fcf70Address)
        staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args sub_9bab65b8Address, (accRewardPerShare * sharesOf[address(arg1)] / 10^12) - stor18[address(arg1)]
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
        return 0, 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
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
        return ext_call.return_data[0] * sub_6423f66e / 10^18, 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / ext_call.return_data[0] * sub_6423f66e / 10^18 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000 > ext_call.return_data[0] * sub_6423f66e / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] * sub_6423f66e / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_6423f66e / 10^18 / 10000), 
           10^18 * ext_call.return_data[0] / ext_call.return_data[0]
}



}
