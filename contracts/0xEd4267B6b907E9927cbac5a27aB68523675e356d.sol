contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#
address owner;
mapping of struct userInfo;
address lpTokenAddress;
address USDCAddress;
address devaddr;
address winnerAddress;
address burnAddress;
uint256 lastRewardTime;
uint256 sub_e4b3e552;
uint256 sub_54747a70;
uint256 sub_bee6f781;
uint256 sub_686b8cf4;
uint256 sub_ed16eb6a;
uint256 totalPoint;
uint256 sub_3380e42a;
uint256 sub_e37ac5d7;
uint256 period;
uint256 endtime;
uint256 sub_ff464806;
uint256 totalBurnt;
uint8 paused;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function endtime() payable {
    return endtime
}

function sub_3380e42a(?) payable {
    return sub_3380e42a
}

function sub_54747a70(?) payable {
    return sub_54747a70
}

function paused() payable {
    return bool(paused)
}

function lpToken() payable {
    return lpTokenAddress
}

function sub_686b8cf4(?) payable {
    return sub_686b8cf4
}

function burnAddress() payable {
    return burnAddress
}

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return owner
}

function lastRewardTime() payable {
    return lastRewardTime
}

function totalBurnt() payable {
    return totalBurnt
}

function sub_bee6f781(?) payable {
    return sub_bee6f781
}

function devaddr() payable {
    return devaddr
}

function totalPoint() payable {
    return totalPoint
}

function winner() payable {
    return winnerAddress
}

function sub_e37ac5d7(?) payable {
    return sub_e37ac5d7
}

function sub_e4b3e552(?) payable {
    return sub_e4b3e552
}

function sub_ed16eb6a(?) payable {
    return sub_ed16eb6a
}

function period() payable {
    return period
}

function sub_ff464806(?) payable {
    return sub_ff464806
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = uint8(arg1)
}

function sub_0de5b040(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lpTokenAddress = arg1
}

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    period = arg1
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_54747a70 = arg1
}

function setMaxbonustime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_686b8cf4 = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function addRepo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == lpTokenAddress
    if sub_3380e42a + arg1 < sub_3380e42a:
        revert with 0, 'SafeMath: addition overflow'
    sub_3380e42a += arg1
}

function transferOwnership(address arg1) payable {
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

function start(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'wrong period'
    paused = 0
    period = arg1
    if block.timestamp + period < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    endtime = block.timestamp + period
    sub_e37ac5d7 = sub_3380e42a
    if not sub_e37ac5d7:
        if period <= 0:
            revert with 0, 'SafeMath: division by zero'
        require period
        sub_ed16eb6a = 0 / period
    else:
        require sub_e37ac5d7
        if 10^18 * sub_e37ac5d7 / sub_e37ac5d7 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if period <= 0:
            revert with 0, 'SafeMath: division by zero'
        require period
        sub_ed16eb6a = 10^18 * sub_e37ac5d7 / period
    sub_3380e42a = 0
}

function emergencyWithdraw() payable {
    userInfo[address(msg.sender)].field_0 = 0
    userInfo[address(msg.sender)].field_512 = 0
    if userInfo[address(msg.sender)].field_256 > totalPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalPoint -= userInfo[address(msg.sender)].field_256
    userInfo[address(msg.sender)].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(lpTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
    mem[324 len 0] = 0
    call lpTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function updatePool() payable {
    if block.timestamp > lastRewardTime:
        if totalPoint:
            if lastRewardTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastRewardTime:
                if totalPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalPoint
                if sub_e4b3e552 + (0 / totalPoint) < sub_e4b3e552:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e4b3e552 += 0 / totalPoint
            else:
                require block.timestamp - lastRewardTime
                if (block.timestamp * sub_ed16eb6a) - (lastRewardTime * sub_ed16eb6a) / block.timestamp - lastRewardTime != sub_ed16eb6a:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.timestamp * sub_ed16eb6a) - (lastRewardTime * sub_ed16eb6a):
                    if totalPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalPoint
                    if sub_e4b3e552 + (0 / totalPoint) < sub_e4b3e552:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e4b3e552 += 0 / totalPoint
                else:
                    require (block.timestamp * sub_ed16eb6a) - (lastRewardTime * sub_ed16eb6a)
                    if (10^12 * block.timestamp * sub_ed16eb6a) - (10^12 * lastRewardTime * sub_ed16eb6a) / (block.timestamp * sub_ed16eb6a) - (lastRewardTime * sub_ed16eb6a) != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalPoint
                    if sub_e4b3e552 + ((10^12 * block.timestamp * sub_ed16eb6a) - (10^12 * lastRewardTime * sub_ed16eb6a) / totalPoint) < sub_e4b3e552:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e4b3e552 += (10^12 * block.timestamp * sub_ed16eb6a) - (10^12 * lastRewardTime * sub_ed16eb6a) / totalPoint
        lastRewardTime = block.timestamp
}

function getMultiple(address arg1) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(arg1)].field_768 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - userInfo[address(arg1)].field_768:
        if sub_686b8cf4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_686b8cf4
        if not 0 / sub_686b8cf4:
            if not sub_bee6f781:
                return 10^12
            require sub_bee6f781
            if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
                revert with 0, 'SafeMath: addition overflow'
            if 10^12 <= (10^10 * sub_bee6f781) + 10^12:
                return 10^12
        else:
            require 0 / sub_686b8cf4
            if 0 / sub_686b8cf4 * sub_bee6f781 / 0 / sub_686b8cf4 != sub_bee6f781:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (0 / sub_686b8cf4 * sub_bee6f781) + 10^12 < 0 / sub_686b8cf4 * sub_bee6f781:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_bee6f781:
                if (0 / sub_686b8cf4 * sub_bee6f781) + 10^12 <= 10^12:
                    return ((0 / sub_686b8cf4 * sub_bee6f781) + 10^12)
            else:
                require sub_bee6f781
                if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / sub_686b8cf4 * sub_bee6f781 <= 10^10 * sub_bee6f781:
                    return ((0 / sub_686b8cf4 * sub_bee6f781) + 10^12)
    else:
        require block.timestamp - userInfo[address(arg1)].field_768
        if (10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / block.timestamp - userInfo[address(arg1)].field_768 != 10^10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_686b8cf4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_686b8cf4
        if not (10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4:
            if not sub_bee6f781:
                return 10^12
            require sub_bee6f781
            if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
                revert with 0, 'SafeMath: addition overflow'
            if 10^12 <= (10^10 * sub_bee6f781) + 10^12:
                return 10^12
        else:
            require (10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4
            if (10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4 * sub_bee6f781 / (10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4 != sub_bee6f781:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4 * sub_bee6f781) + 10^12 < (10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4 * sub_bee6f781:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_bee6f781:
                if ((10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4 * sub_bee6f781) + 10^12 <= 10^12:
                    return (((10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4 * sub_bee6f781) + 10^12)
            else:
                require sub_bee6f781
                if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
                    revert with 0, 'SafeMath: addition overflow'
                if (10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4 * sub_bee6f781 <= 10^10 * sub_bee6f781:
                    return (((10^10 * block.timestamp) - (10^10 * userInfo[address(arg1)].field_768) / sub_686b8cf4 * sub_bee6f781) + 10^12)
    if not sub_bee6f781:
        return 10^12
    require sub_bee6f781
    if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^10 * sub_bee6f781) + 10^12)
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= lastRewardTime:
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_512
        require userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_256 * sub_e4b3e552 / userInfo[address(arg1)].field_256 != sub_e4b3e552:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_512 > userInfo[address(arg1)].field_256 * sub_e4b3e552 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_256 * sub_e4b3e552 / 10^12) - userInfo[address(arg1)].field_512)
    if not totalPoint:
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_512
        require userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_256 * sub_e4b3e552 / userInfo[address(arg1)].field_256 != sub_e4b3e552:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_512 > userInfo[address(arg1)].field_256 * sub_e4b3e552 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_256 * sub_e4b3e552 / 10^12) - userInfo[address(arg1)].field_512)
    if lastRewardTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - lastRewardTime:
        if totalPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalPoint
        if sub_e4b3e552 + (0 / totalPoint) < sub_e4b3e552:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_512
        require userInfo[address(arg1)].field_256
        if (sub_e4b3e552 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != sub_e4b3e552 + (0 / totalPoint):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_512 > (sub_e4b3e552 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_e4b3e552 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / 10^12) - userInfo[address(arg1)].field_512)
    require block.timestamp - lastRewardTime
    if (block.timestamp * sub_ed16eb6a) - (lastRewardTime * sub_ed16eb6a) / block.timestamp - lastRewardTime != sub_ed16eb6a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * sub_ed16eb6a) - (lastRewardTime * sub_ed16eb6a):
        if totalPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalPoint
        if sub_e4b3e552 + (0 / totalPoint) < sub_e4b3e552:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_512
        require userInfo[address(arg1)].field_256
        if (sub_e4b3e552 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != sub_e4b3e552 + (0 / totalPoint):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_512 > (sub_e4b3e552 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_e4b3e552 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / 10^12) - userInfo[address(arg1)].field_512)
    require (block.timestamp * sub_ed16eb6a) - (lastRewardTime * sub_ed16eb6a)
    if (10^12 * block.timestamp * sub_ed16eb6a) - (10^12 * lastRewardTime * sub_ed16eb6a) / (block.timestamp * sub_ed16eb6a) - (lastRewardTime * sub_ed16eb6a) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalPoint
    if sub_e4b3e552 + ((10^12 * block.timestamp * sub_ed16eb6a) - (10^12 * lastRewardTime * sub_ed16eb6a) / totalPoint) < sub_e4b3e552:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_256:
        if userInfo[address(arg1)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_512
    require userInfo[address(arg1)].field_256
    if (sub_e4b3e552 * userInfo[address(arg1)].field_256) + ((10^12 * block.timestamp * sub_ed16eb6a) - (10^12 * lastRewardTime * sub_ed16eb6a) / totalPoint * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != sub_e4b3e552 + ((10^12 * block.timestamp * sub_ed16eb6a) - (10^12 * lastRewardTime * sub_ed16eb6a) / totalPoint):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_512 > (sub_e4b3e552 * userInfo[address(arg1)].field_256) + ((10^12 * block.timestamp * sub_ed16eb6a) - (10^12 * lastRewardTime * sub_ed16eb6a) / totalPoint * userInfo[address(arg1)].field_256) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((sub_e4b3e552 * userInfo[address(arg1)].field_256) + ((10^12 * block.timestamp * sub_ed16eb6a) - (10^12 * lastRewardTime * sub_ed16eb6a) / totalPoint * userInfo[address(arg1)].field_256) / 10^12) - userInfo[address(arg1)].field_512)
}



}
