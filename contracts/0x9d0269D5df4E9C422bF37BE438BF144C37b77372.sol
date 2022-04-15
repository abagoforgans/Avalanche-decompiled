contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - claim()
#  - withdrawAll()
#
const getPricePerFullShare = 10^18

const MAX_FEE = 10000


uint8 paused; offset 160
address owner;
uint256 stor1;
address sub_8a5fcf70Address;
address rewardTokenAddress;
address stakingTokenAddress;
uint32 stor5;
address sub_7b805e03Address;
uint256 stor5;
uint256 lastUpdatedTime;
uint256 sub_d2890a01;
uint256 balance;
uint256 rewardsAmount;
uint256 lockupDuration;
address feeRecipientAddress;
uint256 withdrawalFee;
uint256 penaltyFee;
uint256 rewardRate;
uint8 sub_bd58bea0;
array of struct stor16;
mapping of uint256 stor17;
mapping of struct userInfo;

function userCount() payable {
    return stor16.length
}

function totalSupply() payable {
    return balance
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function lockupDuration() payable {
    return lockupDuration
}

function penaltyFee() payable {
    return penaltyFee
}

function feeRecipient() payable {
    return feeRecipientAddress
}

function paused() payable {
    return bool(paused)
}

function principalOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[address(arg1)].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[address(arg1)].field_0
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function sub_7b805e03(?) payable {
    return address(sub_7b805e03Address)
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

function balance() payable {
    return balance
}

function sub_bd58bea0(?) payable {
    return bool(sub_bd58bea0)
}

function lastUpdatedTime() payable {
    return lastUpdatedTime
}

function rewardsAmount() payable {
    return rewardsAmount
}

function sub_d2890a01(?) payable {
    return sub_d2890a01
}

function sharesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[address(arg1)].field_0
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function sub_4ac644bc(?) payable {
    require calldata.size - 4 >= 32
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1a136cd7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    lockupDuration = arg1
}

function sub_90c766e4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_bd58bea0 = uint8(arg1)
}

function setFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeRecipientAddress = arg1
}

function setPriceCalculator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_8a5fcf70Address = arg1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setPenaltyFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10000:
        revert with 0, 'invalid fee'
    penaltyFee = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10000:
        revert with 0, 'invalid fee'
    withdrawalFee = arg1
}

function totalEarned() payable {
    if not rewardsAmount:
        return rewardsAmount, 0
    require ext_code.size(sub_8a5fcf70Address)
    staticcall sub_8a5fcf70Address.valueOfToken(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args rewardTokenAddress, rewardsAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return rewardsAmount, ext_call.return_data[32]
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

function userList() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require stor16.length <= test266151307()
    if not stor16.length:
        if var35002 >= stor16.length:
            mem[(32 * stor16.length) + 128] = 32
            mem[(32 * stor16.length) + 160] = stor16.length
            mem[(32 * stor16.length) + 192 len floor32(stor16.length)] = mem[128 len floor32(stor16.length)]
            return memory
              from (32 * stor16.length) + 128
               len (96 * stor16.length) + 64
        if var41001 >= stor16.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor16.length) + 230 len 30]
        require var43002 < stor16.length
        require var49002 < stor16.length
        mem[(32 * var51001) + 128] = address(var51003)
        if var61002 < stor16.length:
            # nil
        else:
            mem[(32 * stor16.length) + 128] = 32
            mem[(32 * stor16.length) + 160] = stor16.length
            mem[(32 * stor16.length) + 192 len floor32(stor16.length)] = mem[128 len floor32(stor16.length)]
            return memory
              from (32 * stor16.length) + 128
               len (96 * stor16.length) + 64
    else:
        mem[128 len 32 * stor16.length] = call.data[calldata.size len 32 * stor16.length]
        if var36002 >= stor16.length:
            mem[(32 * stor16.length) + 128] = 32
            mem[(32 * stor16.length) + 160] = stor16.length
            mem[(32 * stor16.length) + 192 len floor32(stor16.length)] = call.data[calldata.size len floor32(stor16.length)]
            return memory
              from (32 * stor16.length) + 128
               len (96 * stor16.length) + 64
        if var42001 >= stor16.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor16.length) + 230 len 30]
        require var44002 < stor16.length
        require var50002 < stor16.length
        mem[(32 * var52001) + 128] = address(var52003)
        if var62002 < stor16.length:
            # nil
        else:
            mem[(32 * stor16.length) + 128] = 32
            mem[(32 * stor16.length) + 160] = stor16.length
            mem[(32 * stor16.length) + 192 len floor32(stor16.length)] = call.data[calldata.size len floor32(stor16.length)]
            return memory
              from (32 * stor16.length) + 128
               len (96 * stor16.length) + 64
}

function setRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x735265776172647320706572207365636f6e642073686f756c642062652067726561746572207468616e2030,
                    mem[208 len 20]
    if balance:
        if lastUpdatedTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdatedTime:
            if rewardsAmount < rewardsAmount:
                revert with 0, 'SafeMath: addition overflow'
            if balance <= 0:
                revert with 0, 'SafeMath: division by zero'
            require balance
            if (0 / balance) + sub_d2890a01 < sub_d2890a01:
                revert with 0, 'SafeMath: addition overflow'
            sub_d2890a01 += 0 / balance
        else:
            if (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) / block.timestamp - lastUpdatedTime != rewardRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) + rewardsAmount < rewardsAmount:
                revert with 0, 'SafeMath: addition overflow'
            rewardsAmount = (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) + rewardsAmount
            if not (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate):
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require balance
                if (0 / balance) + sub_d2890a01 < sub_d2890a01:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d2890a01 += 0 / balance
            else:
                if (10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require balance
                if ((10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance) + sub_d2890a01 < sub_d2890a01:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d2890a01 += (10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance
    lastUpdatedTime = block.timestamp
    rewardRate = arg1
}

function emergencyWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    if arg2 <= ext_call.return_data[0]:
        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
        mem[324 len 0] = 0
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), msg.sender, arg2
            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
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
    else:
        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0]
            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
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

function sub_23ef9abe(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
    call rewardTokenAddress with:
       funct uint32(stor5)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.allowance(address rg1, address rg2) with:
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
            revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[488 len 0] = 0
        call rewardTokenAddress with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
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
        staticcall rewardTokenAddress.allowance(address rg1, address rg2) with:
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
                        0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call rewardTokenAddress with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
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

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    if not balance:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256, 0
        if sub_d2890a01 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_d2890a01:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > sub_d2890a01 * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userInfo[address(arg1)].field_512 + (sub_d2890a01 * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256, 
               0
    if lastUpdatedTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - lastUpdatedTime:
        if balance <= 0:
            revert with 0, 'SafeMath: division by zero'
        require balance
        if (0 / balance) + sub_d2890a01 < sub_d2890a01:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256, 0
        if (0 / balance * userInfo[address(arg1)].field_0) + (sub_d2890a01 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / balance) + sub_d2890a01:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (0 / balance * userInfo[address(arg1)].field_0) + (sub_d2890a01 * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userInfo[address(arg1)].field_512 + ((0 / balance * userInfo[address(arg1)].field_0) + (sub_d2890a01 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256, 
               0
    if (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) / block.timestamp - lastUpdatedTime != rewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate):
        if balance <= 0:
            revert with 0, 'SafeMath: division by zero'
        require balance
        if (0 / balance) + sub_d2890a01 < sub_d2890a01:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256, 0
        if (0 / balance * userInfo[address(arg1)].field_0) + (sub_d2890a01 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / balance) + sub_d2890a01:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (0 / balance * userInfo[address(arg1)].field_0) + (sub_d2890a01 * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return userInfo[address(arg1)].field_512 + ((0 / balance * userInfo[address(arg1)].field_0) + (sub_d2890a01 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256, 
               0
    if (10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if balance <= 0:
        revert with 0, 'SafeMath: division by zero'
    require balance
    if ((10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance) + sub_d2890a01 < sub_d2890a01:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256, 0
    if ((10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance * userInfo[address(arg1)].field_0) + (sub_d2890a01 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance) + sub_d2890a01:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_256 > ((10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance * userInfo[address(arg1)].field_0) + (sub_d2890a01 * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return userInfo[address(arg1)].field_512 + (((10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance * userInfo[address(arg1)].field_0) + (sub_d2890a01 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256, 
           0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not balance:
        lastUpdatedTime = block.timestamp
        if not userInfo[msg.sender].field_0:
            if userInfo[msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
        else:
            if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[msg.sender].field_256 > sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_512 = (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(stakingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
    else:
        if lastUpdatedTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdatedTime:
            if rewardsAmount < rewardsAmount:
                revert with 0, 'SafeMath: addition overflow'
            if balance <= 0:
                revert with 0, 'SafeMath: division by zero'
            require balance
            if (0 / balance) + sub_d2890a01 < sub_d2890a01:
                revert with 0, 'SafeMath: addition overflow'
            sub_d2890a01 += 0 / balance
            lastUpdatedTime = block.timestamp
            if not userInfo[msg.sender].field_0:
                if userInfo[msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
            else:
                if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[msg.sender].field_256 > sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 = (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
        else:
            if (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) / block.timestamp - lastUpdatedTime != rewardRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) + rewardsAmount < rewardsAmount:
                revert with 0, 'SafeMath: addition overflow'
            rewardsAmount = (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) + rewardsAmount
            if not (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate):
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require balance
                if (0 / balance) + sub_d2890a01 < sub_d2890a01:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d2890a01 += 0 / balance
            else:
                if (10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require balance
                if ((10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance) + sub_d2890a01 < sub_d2890a01:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d2890a01 += (10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance
            lastUpdatedTime = block.timestamp
            if not userInfo[msg.sender].field_0:
                if userInfo[msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
            else:
                if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[msg.sender].field_256 > sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 = (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(stakingTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
    call stakingTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[msg.sender].field_768 = block.timestamp
        if balance < balance:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit(0, msg.sender);
        if userInfo[address(msg.sender)].field_0 > 0:
            if not stor17[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    stor16.length++
                    stor16[stor16.length].field_0 = msg.sender
                    stor16[stor16.length].field_160 = 0
                    stor17[address(msg.sender)] = stor16.length
        else:
            if userInfo[msg.sender].field_512:
                if not stor17[address(msg.sender)]:
                    if not stor17[address(msg.sender)]:
                        stor16.length++
                        stor16[stor16.length].field_0 = msg.sender
                        stor16[stor16.length].field_160 = 0
                        stor17[address(msg.sender)] = stor16.length
            else:
                if 1 == bool(stor17[address(msg.sender)]):
                    if stor17[address(msg.sender)]:
                        require stor16.length - 1 < stor16.length
                        require stor17[address(msg.sender)] - 1 < stor16.length
                        stor16[stor17[address(msg.sender)]].field_0 = stor16[stor16.length].field_0
                        stor17[stor16[stor16.length].field_0] = stor17[address(msg.sender)]
                        require stor16.length
                        stor16[stor16.length].field_0 = 0
                        stor16.length--
                        stor17[address(msg.sender)] = 0
        if not userInfo[msg.sender].field_0:
            userInfo[msg.sender].field_256 = 0
        else:
            if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            userInfo[msg.sender].field_256 = sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[msg.sender].field_768 = block.timestamp
        if balance < balance:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit(0, msg.sender);
        if userInfo[address(msg.sender)].field_0 > 0:
            if not stor17[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    stor16.length++
                    stor16[stor16.length].field_0 = msg.sender
                    stor16[stor16.length].field_160 = 0
                    stor17[address(msg.sender)] = stor16.length
        else:
            if userInfo[msg.sender].field_512:
                if not stor17[address(msg.sender)]:
                    if not stor17[address(msg.sender)]:
                        stor16.length++
                        stor16[stor16.length].field_0 = msg.sender
                        stor16[stor16.length].field_160 = 0
                        stor17[address(msg.sender)] = stor16.length
            else:
                if 1 == bool(stor17[address(msg.sender)]):
                    if stor17[address(msg.sender)]:
                        require stor16.length - 1 < stor16.length
                        require stor17[address(msg.sender)] - 1 < stor16.length
                        stor16[stor17[address(msg.sender)]].field_0 = stor16[stor16.length].field_0
                        stor17[stor16[stor16.length].field_0] = stor17[address(msg.sender)]
                        require stor16.length
                        stor16[stor16.length].field_0 = 0
                        stor16.length--
                        stor17[address(msg.sender)] = 0
        if not userInfo[msg.sender].field_0:
            userInfo[msg.sender].field_256 = 0
        else:
            if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            userInfo[msg.sender].field_256 = sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12
    stor1 = 1
}

function depositAll() payable {
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not balance:
        lastUpdatedTime = block.timestamp
        if not userInfo[msg.sender].field_0:
            if userInfo[msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
        else:
            if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[msg.sender].field_256 > sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_512 = (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(stakingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
        mem[416 len 4] = 0
    else:
        if lastUpdatedTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdatedTime:
            if rewardsAmount < rewardsAmount:
                revert with 0, 'SafeMath: addition overflow'
            if balance <= 0:
                revert with 0, 'SafeMath: division by zero'
            require balance
            if (0 / balance) + sub_d2890a01 < sub_d2890a01:
                revert with 0, 'SafeMath: addition overflow'
            sub_d2890a01 += 0 / balance
            lastUpdatedTime = block.timestamp
            if userInfo[msg.sender].field_0:
                if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[msg.sender].field_256 > sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 = (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
                mem[416 len 4] = 0
            else:
                if userInfo[msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
                mem[416 len 4] = 0
                mem[388 len 0] = 0
        else:
            if (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) / block.timestamp - lastUpdatedTime != rewardRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) + rewardsAmount < rewardsAmount:
                revert with 0, 'SafeMath: addition overflow'
            rewardsAmount = (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) + rewardsAmount
            if (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate):
                if (10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdatedTime * rewardRate) != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require balance
                if ((10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance) + sub_d2890a01 < sub_d2890a01:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d2890a01 += (10^12 * block.timestamp * rewardRate) - (10^12 * lastUpdatedTime * rewardRate) / balance
                lastUpdatedTime = block.timestamp
                if not userInfo[msg.sender].field_0:
                    if userInfo[msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                else:
                    if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[msg.sender].field_256 > sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 = (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
                mem[416 len 4] = 0
            else:
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require balance
                if (0 / balance) + sub_d2890a01 < sub_d2890a01:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d2890a01 += 0 / balance
                lastUpdatedTime = block.timestamp
                if not userInfo[msg.sender].field_0:
                    if userInfo[msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                else:
                    if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[msg.sender].field_256 > sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_512 = (sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
                mem[416 len 4] = 0
                mem[388 len 0] = 0
    call stakingTokenAddress with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[msg.sender].field_768 = block.timestamp
        if balance < balance:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit(0, msg.sender);
        if userInfo[address(msg.sender)].field_0 > 0:
            if not stor17[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    stor16.length++
                    stor16[stor16.length].field_0 = msg.sender
                    stor16[stor16.length].field_160 = 0
                    stor17[address(msg.sender)] = stor16.length
        else:
            if userInfo[msg.sender].field_512:
                if not stor17[address(msg.sender)]:
                    if not stor17[address(msg.sender)]:
                        stor16.length++
                        stor16[stor16.length].field_0 = msg.sender
                        stor16[stor16.length].field_160 = 0
                        stor17[address(msg.sender)] = stor16.length
            else:
                if 1 == bool(stor17[address(msg.sender)]):
                    if stor17[address(msg.sender)]:
                        require stor16.length - 1 < stor16.length
                        require stor17[address(msg.sender)] - 1 < stor16.length
                        stor16[stor17[address(msg.sender)]].field_0 = stor16[stor16.length].field_0
                        stor17[stor16[stor16.length].field_0] = stor17[address(msg.sender)]
                        require stor16.length
                        stor16[stor16.length].field_0 = 0
                        stor16.length--
                        stor17[address(msg.sender)] = 0
        if not userInfo[msg.sender].field_0:
            userInfo[msg.sender].field_256 = 0
        else:
            if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            userInfo[msg.sender].field_256 = sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[msg.sender].field_768 = block.timestamp
        if balance < balance:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit(0, msg.sender);
        if userInfo[address(msg.sender)].field_0 > 0:
            if not stor17[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    stor16.length++
                    stor16[stor16.length].field_0 = msg.sender
                    stor16[stor16.length].field_160 = 0
                    stor17[address(msg.sender)] = stor16.length
        else:
            if userInfo[msg.sender].field_512:
                if not stor17[address(msg.sender)]:
                    if not stor17[address(msg.sender)]:
                        stor16.length++
                        stor16[stor16.length].field_0 = msg.sender
                        stor16[stor16.length].field_160 = 0
                        stor17[address(msg.sender)] = stor16.length
            else:
                if 1 == bool(stor17[address(msg.sender)]):
                    if stor17[address(msg.sender)]:
                        require stor16.length - 1 < stor16.length
                        require stor17[address(msg.sender)] - 1 < stor16.length
                        stor16[stor17[address(msg.sender)]].field_0 = stor16[stor16.length].field_0
                        stor17[stor16[stor16.length].field_0] = stor17[address(msg.sender)]
                        require stor16.length
                        stor16[stor16.length].field_0 = 0
                        stor16.length--
                        stor17[address(msg.sender)] = 0
        if not userInfo[msg.sender].field_0:
            userInfo[msg.sender].field_256 = 0
        else:
            if sub_d2890a01 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_d2890a01:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            userInfo[msg.sender].field_256 = sub_d2890a01 * userInfo[msg.sender].field_0 / 10^12
    stor1 = 1
}



}
