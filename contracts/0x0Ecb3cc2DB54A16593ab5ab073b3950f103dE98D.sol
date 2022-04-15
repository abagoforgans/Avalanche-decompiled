contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#  - compound()
#
address owner;
array of struct poolInfo;
mapping of uint8 stor4;
mapping of uint256 sub_5fc93c2d;
array of address sub_53f298e6;
uint256 sub_a95cad68;
uint256 stor8;
array of struct stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address sub_f10c993cAddress;
address USDCAddress;
address wavaxAddress;
address sub_7e5ec07aAddress;
address devaddr;
address winnerAddress;
address sub_5c8c2083Address;
uint256 sub_0ba23681;
uint256 totalAmount;
uint256 sub_3380e42a;
uint256 sub_e37ac5d7;
uint256 period;
uint256 endtime;
uint256 sub_ff464806;
uint256 sub_0fce4ef1;
uint256 sub_390710bc;
uint256 sub_16ba8cb9;
address burnAddress;
uint256 totalBurnt;
uint8 paused;
mapping of uint8 stor34;

function poolLength() payable {
    return poolInfo.length
}

function sub_0ba23681(?) payable {
    return sub_0ba23681
}

function sub_0fce4ef1(?) payable {
    return sub_0fce4ef1
}

function wavax() payable {
    return wavaxAddress
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1792,
           poolInfo[arg1].field_2048,
           bool(poolInfo[arg1].field_2208)
}

function sub_16ba8cb9(?) payable {
    return sub_16ba8cb9
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function totalAmount() payable {
    return totalAmount
}

function approvedContracts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor34[arg1])
}

function endtime() payable {
    return endtime
}

function sub_3380e42a(?) payable {
    return sub_3380e42a
}

function sub_390710bc(?) payable {
    return sub_390710bc
}

function sub_53f298e6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_53f298e6.length
    return sub_53f298e6[arg1]
}

function sub_5c8c2083(?) payable {
    return sub_5c8c2083Address
}

function paused() payable {
    return bool(paused)
}

function sub_5fc93c2d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_5fc93c2d[arg1][arg2]
}

function burnAddress() payable {
    return burnAddress
}

function sub_782c27a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor4[arg1]))
}

function sub_7e5ec07a(?) payable {
    return sub_7e5ec07aAddress
}

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return owner
}

function totalBurnt() payable {
    return totalBurnt
}

function sub_a95cad68(?) payable {
    return sub_a95cad68
}

function devaddr() payable {
    return devaddr
}

function winner() payable {
    return winnerAddress
}

function sub_e37ac5d7(?) payable {
    return sub_e37ac5d7
}

function period() payable {
    return period
}

function sub_f10c993c(?) payable {
    return sub_f10c993cAddress
}

function sub_ff464806(?) payable {
    return sub_ff464806
}

function _fallback() payable {
    revert
}

function totalticket() payable {
    return (sub_53f298e6.length - sub_a95cad68)
}

function sub_e49bd61e(?) payable {
    return stor8, stor10, stor11, stor12, stor13
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = uint8(arg1)
}

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    period = arg1
}

function setMin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0fce4ef1 = arg1
}

function setApprovedContract(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor34[address(arg1)] = uint8(arg2)
}

function stopPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor4[arg1]) = not bool(uint8(stor4[arg1])) or Mask(248, 8, uint256(stor4[arg1]))
}

function disableCompound(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_2208 = Mask(96, 0, arg2)
}

function usdcinfo() payable {
    if stor9.length:
        mem[512] = uint256(stor9.field_0)
        idx = 512
        s = 0
        while (32 * stor9.length) + 480 > idx:
            mem[idx + 32] = stor9[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return 32, stor8, 192, stor10, stor11, stor12, stor13, stor9.length, mem[512 len 32 * stor9.length]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function livepoolIndex() payable {
    require poolInfo.length <= test266151307()
    if poolInfo.length:
        mem[128 len 32 * poolInfo.length] = call.data[calldata.size len 32 * poolInfo.length]
    idx = 0
    s = 0
    while idx < poolInfo.length:
        mem[0] = 3
        if poolInfo[idx].field_768 <= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require s < poolInfo.length
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=poolInfo.length, data=mem[128 len 32 * poolInfo.length]), s
}

function userinfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(arg1)].field_768:
        mem[384] = userInfo[address(arg1)][3].field_0
        idx = 384
        s = 0
        while (32 * userInfo[address(arg1)].field_768) + 352 > idx:
            mem[idx + 32] = userInfo[address(arg1)][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return 32, userInfo[address(arg1)].field_0, 
           userInfo[address(arg1)].field_256,
           userInfo[address(arg1)].field_512,
           128,
           userInfo[address(arg1)].field_768,
           mem[384 len 32 * userInfo[address(arg1)].field_768]
}

function start(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = 0
    period = arg1
    if block.timestamp + period < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    endtime = block.timestamp + period
    sub_e37ac5d7 = sub_3380e42a
    if not sub_e37ac5d7:
        if 4 * period <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 4 * period
        stor10 = 0 / 4 * period
    else:
        require sub_e37ac5d7
        if 10^18 * sub_e37ac5d7 / sub_e37ac5d7 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 4 * period <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 4 * period
        stor10 = 10^18 * sub_e37ac5d7 / 4 * period
    require 0 < stor9.length
    uint256(stor9.field_0) = stor10
    sub_3380e42a = 0
}

function mytickets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_53f298e6.length - sub_a95cad68 <= test266151307()
    mem[96] = sub_53f298e6.length - sub_a95cad68
    if sub_53f298e6.length - sub_a95cad68:
        mem[128 len 32 * sub_53f298e6.length - sub_a95cad68] = call.data[calldata.size len 32 * sub_53f298e6.length - sub_a95cad68]
    idx = sub_a95cad68
    s = 0
    while idx < sub_53f298e6.length:
        mem[0] = 6
        if sub_53f298e6[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < sub_53f298e6.length - sub_a95cad68
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * sub_53f298e6.length - sub_a95cad68) + 128] = 32
    mem[(32 * sub_53f298e6.length - sub_a95cad68) + 160] = sub_53f298e6.length - sub_a95cad68
    mem[(32 * sub_53f298e6.length - sub_a95cad68) + 192 len 32 * sub_53f298e6.length - sub_a95cad68] = mem[128 len 32 * sub_53f298e6.length - sub_a95cad68]
    return 32, mem[(32 * sub_53f298e6.length - sub_a95cad68) + 160 len (32 * sub_53f298e6.length - sub_a95cad68) + 32]
}

function addRepo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_f10c993cAddress != msg.sender:
        require msg.sender == owner
    if not arg1:
        if sub_390710bc < sub_390710bc:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_3380e42a + arg1 < sub_3380e42a:
            revert with 0, 'SafeMath: addition overflow'
        sub_3380e42a += arg1
    else:
        require arg1
        if arg1 * sub_16ba8cb9 / arg1 != sub_16ba8cb9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_390710bc + (arg1 * sub_16ba8cb9 / 10000) < sub_390710bc:
            revert with 0, 'SafeMath: addition overflow'
        sub_390710bc += arg1 * sub_16ba8cb9 / 10000
        if arg1 * sub_16ba8cb9 / 10000 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_3380e42a + arg1 - (arg1 * sub_16ba8cb9 / 10000) < sub_3380e42a:
            revert with 0, 'SafeMath: addition overflow'
        sub_3380e42a = sub_3380e42a + arg1 - (arg1 * sub_16ba8cb9 / 10000)
}

function sub_fc91f642(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= block.timestamp:
        revert with 0, 'wrong time'
    if arg3 <= arg2:
        revert with 0, 'wrong time'
    if not arg1:
        if arg3 - arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg3 - arg2
        poolInfo.length++
        poolInfo[poolInfo.length].field_0 = arg1
        poolInfo[poolInfo.length].field_256 = 0
        poolInfo[poolInfo.length].field_512 = arg2
        poolInfo[poolInfo.length].field_768 = arg3
        poolInfo[poolInfo.length].field_1024 = 0 / arg3 - arg2
    else:
        require arg1
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg3 - arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg3 - arg2
        poolInfo.length++
        poolInfo[poolInfo.length].field_0 = arg1
        poolInfo[poolInfo.length].field_256 = 0
        poolInfo[poolInfo.length].field_512 = arg2
        poolInfo[poolInfo.length].field_768 = arg3
        poolInfo[poolInfo.length].field_1024 = 10^18 * arg1 / arg3 - arg2
    poolInfo[poolInfo.length].field_1280 = 0
    poolInfo[poolInfo.length].field_1536 = address(arg4)
    poolInfo[poolInfo.length].field_1792 = arg2
    poolInfo[poolInfo.length].field_2048 = address(arg5)
    poolInfo[poolInfo.length].field_2208 = 0
    require ext_code.size(address(arg4))
    call address(arg4).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg5), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function pendingUsdc(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= stor13:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-userInfo[address(arg1)].field_256 / 10^18)
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * stor12 / userInfo[address(arg1)].field_0 != stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor12 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * stor12 / 10^12) - userInfo[address(arg1)].field_256 / 10^18)
    if not totalAmount:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-userInfo[address(arg1)].field_256 / 10^18)
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * stor12 / userInfo[address(arg1)].field_0 != stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor12 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * stor12 / 10^12) - userInfo[address(arg1)].field_256 / 10^18)
    if stor13 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - stor13:
        if totalAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAmount
        if stor12 + (0 / totalAmount) < stor12:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-userInfo[address(arg1)].field_256 / 10^18)
        require userInfo[address(arg1)].field_0
        if (stor12 * userInfo[address(arg1)].field_0) + (0 / totalAmount * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor12 + (0 / totalAmount):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (stor12 * userInfo[address(arg1)].field_0) + (0 / totalAmount * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((stor12 * userInfo[address(arg1)].field_0) + (0 / totalAmount * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 / 10^18)
    require block.timestamp - stor13
    if (block.timestamp * stor10) - (stor13 * stor10) / block.timestamp - stor13 != stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (block.timestamp * stor10) - (stor13 * stor10):
        if totalAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAmount
        if stor12 + (0 / totalAmount) < stor12:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-userInfo[address(arg1)].field_256 / 10^18)
        require userInfo[address(arg1)].field_0
        if (stor12 * userInfo[address(arg1)].field_0) + (0 / totalAmount * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor12 + (0 / totalAmount):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (stor12 * userInfo[address(arg1)].field_0) + (0 / totalAmount * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((stor12 * userInfo[address(arg1)].field_0) + (0 / totalAmount * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 / 10^18)
    require (block.timestamp * stor10) - (stor13 * stor10)
    if (10^12 * block.timestamp * stor10) - (10^12 * stor13 * stor10) / (block.timestamp * stor10) - (stor13 * stor10) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalAmount <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAmount
    if stor12 + ((10^12 * block.timestamp * stor10) - (10^12 * stor13 * stor10) / totalAmount) < stor12:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return (-userInfo[address(arg1)].field_256 / 10^18)
    require userInfo[address(arg1)].field_0
    if (stor12 * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * stor10) - (10^12 * stor13 * stor10) / totalAmount * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor12 + ((10^12 * block.timestamp * stor10) - (10^12 * stor13 * stor10) / totalAmount):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[address(arg1)].field_256 > (stor12 * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * stor10) - (10^12 * stor13 * stor10) / totalAmount * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((stor12 * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * stor10) - (10^12 * stor13 * stor10) / totalAmount * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 / 10^18)
}

function enroll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != tx.origin:
        if not stor34[address(msg.sender)]:
            revert with 0, 'onlyApprovedContractOrEOA'
    if arg1 >= poolInfo.length:
        revert with 0, 'wrong pid'
    if poolInfo[arg1].field_768 <= block.timestamp:
        revert with 0, 'wrong pid'
    require not uint8(stor4[arg1])
    idx = 0
    while idx < userInfo[address(msg.sender)].field_768:
        mem[0] = sha3(address(msg.sender), 2) + 3
        if userInfo[address(msg.sender)][idx + 3].field_0 == arg1:
            revert with 0, 'duplicated pid'
        idx = idx + 1
        continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1792 < poolInfo[arg1].field_768:
        if block.timestamp > poolInfo[arg1].field_1792:
            if not totalAmount:
                poolInfo[arg1].field_1792 = block.timestamp
            else:
                if not poolInfo[arg1].field_256:
                    poolInfo[arg1].field_1792 = block.timestamp
                else:
                    if block.timestamp <= poolInfo[arg1].field_768:
                        if poolInfo[arg1].field_1792 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[arg1].field_1792:
                            if poolInfo[arg1].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_256
                            if poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_256
                        else:
                            require block.timestamp - poolInfo[arg1].field_1792
                            if (block.timestamp * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / block.timestamp - poolInfo[arg1].field_1792 != poolInfo[arg1].field_1024:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024):
                                if poolInfo[arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_256
                                if poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_256
                            else:
                                require (block.timestamp * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024)
                                if (10^12 * block.timestamp * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / (block.timestamp * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_256
                                if poolInfo[arg1].field_1280 + ((10^12 * block.timestamp * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += (10^12 * block.timestamp * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256
                    else:
                        if poolInfo[arg1].field_1792 > poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not poolInfo[arg1].field_768 - poolInfo[arg1].field_1792:
                            if poolInfo[arg1].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_256
                            if poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_256
                        else:
                            require poolInfo[arg1].field_768 - poolInfo[arg1].field_1792
                            if (poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768 - poolInfo[arg1].field_1792 != poolInfo[arg1].field_1024:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024):
                                if poolInfo[arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_256
                                if poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_256
                            else:
                                require (poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024)
                                if (10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / (poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_256
                                if poolInfo[arg1].field_1280 + ((10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += (10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256
                    poolInfo[arg1].field_1792 = block.timestamp
                    if block.timestamp > poolInfo[arg1].field_768:
                        poolInfo[arg1].field_1792 = poolInfo[arg1].field_768
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 += userInfo[address(msg.sender)].field_0
    userInfo[address(msg.sender)].field_768++
    stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 2))) + userInfo[address(msg.sender)].field_768].field_0 = arg1
    if not userInfo[address(msg.sender)].field_0:
        sub_5fc93c2d[arg1][address(msg.sender)] = 0
    else:
        require userInfo[address(msg.sender)].field_0
        if userInfo[address(msg.sender)].field_0 * poolInfo[arg1].field_1280 / userInfo[address(msg.sender)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_5fc93c2d[arg1][address(msg.sender)] = userInfo[address(msg.sender)].field_0 * poolInfo[arg1].field_1280 / 10^12
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        return 0
    if block.timestamp <= poolInfo[arg1].field_1792:
        if not userInfo[address(arg2)].field_0:
            if sub_5fc93c2d[arg1][address(arg2)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-sub_5fc93c2d[arg1][address(arg2)] / 10^18)
        require userInfo[address(arg2)].field_0
        if userInfo[address(arg2)].field_0 * poolInfo[arg1].field_1280 / userInfo[address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_5fc93c2d[arg1][address(arg2)] > userInfo[address(arg2)].field_0 * poolInfo[arg1].field_1280 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg2)].field_0 * poolInfo[arg1].field_1280 / 10^12) - sub_5fc93c2d[arg1][address(arg2)] / 10^18)
    if not poolInfo[arg1].field_256:
        if not userInfo[address(arg2)].field_0:
            if sub_5fc93c2d[arg1][address(arg2)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-sub_5fc93c2d[arg1][address(arg2)] / 10^18)
        require userInfo[address(arg2)].field_0
        if userInfo[address(arg2)].field_0 * poolInfo[arg1].field_1280 / userInfo[address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_5fc93c2d[arg1][address(arg2)] > userInfo[address(arg2)].field_0 * poolInfo[arg1].field_1280 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg2)].field_0 * poolInfo[arg1].field_1280 / 10^12) - sub_5fc93c2d[arg1][address(arg2)] / 10^18)
    if block.timestamp <= poolInfo[arg1].field_768:
        if poolInfo[arg1].field_1792 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolInfo[arg1].field_1792:
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_256
            if poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg2)].field_0:
                if sub_5fc93c2d[arg1][address(arg2)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-sub_5fc93c2d[arg1][address(arg2)] / 10^18)
            require userInfo[address(arg2)].field_0
            if (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / userInfo[address(arg2)].field_0 != poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_5fc93c2d[arg1][address(arg2)] > (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12) - sub_5fc93c2d[arg1][address(arg2)] / 10^18)
        require block.timestamp - poolInfo[arg1].field_1792
        if (block.timestamp * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / block.timestamp - poolInfo[arg1].field_1792 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024):
            if poolInfo[arg1].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_256
            if poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg2)].field_0:
                if sub_5fc93c2d[arg1][address(arg2)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-sub_5fc93c2d[arg1][address(arg2)] / 10^18)
            require userInfo[address(arg2)].field_0
            if (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / userInfo[address(arg2)].field_0 != poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_5fc93c2d[arg1][address(arg2)] > (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12) - sub_5fc93c2d[arg1][address(arg2)] / 10^18)
        require (block.timestamp * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024)
        if (10^12 * block.timestamp * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / (block.timestamp * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_256
        if poolInfo[arg1].field_1280 + ((10^12 * block.timestamp * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg2)].field_0:
            if sub_5fc93c2d[arg1][address(arg2)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-sub_5fc93c2d[arg1][address(arg2)] / 10^18)
        require userInfo[address(arg2)].field_0
        if (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + ((10^12 * block.timestamp * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / userInfo[address(arg2)].field_0 != poolInfo[arg1].field_1280 + ((10^12 * block.timestamp * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_5fc93c2d[arg1][address(arg2)] > (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + ((10^12 * block.timestamp * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + ((10^12 * block.timestamp * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12) - sub_5fc93c2d[arg1][address(arg2)] / 10^18)
    if poolInfo[arg1].field_1792 > poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if not poolInfo[arg1].field_768 - poolInfo[arg1].field_1792:
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_256
        if poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg2)].field_0:
            if sub_5fc93c2d[arg1][address(arg2)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-sub_5fc93c2d[arg1][address(arg2)] / 10^18)
        require userInfo[address(arg2)].field_0
        if (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / userInfo[address(arg2)].field_0 != poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_5fc93c2d[arg1][address(arg2)] > (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12) - sub_5fc93c2d[arg1][address(arg2)] / 10^18)
    require poolInfo[arg1].field_768 - poolInfo[arg1].field_1792
    if (poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768 - poolInfo[arg1].field_1792 != poolInfo[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024):
        if poolInfo[arg1].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_256
        if poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg2)].field_0:
            if sub_5fc93c2d[arg1][address(arg2)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-sub_5fc93c2d[arg1][address(arg2)] / 10^18)
        require userInfo[address(arg2)].field_0
        if (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / userInfo[address(arg2)].field_0 != poolInfo[arg1].field_1280 + (0 / poolInfo[arg1].field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_5fc93c2d[arg1][address(arg2)] > (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + (0 / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12) - sub_5fc93c2d[arg1][address(arg2)] / 10^18)
    require (poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024)
    if (10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / (poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if poolInfo[arg1].field_256 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_256
    if poolInfo[arg1].field_1280 + ((10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256) < poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg2)].field_0:
        if sub_5fc93c2d[arg1][address(arg2)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return (-sub_5fc93c2d[arg1][address(arg2)] / 10^18)
    require userInfo[address(arg2)].field_0
    if (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + ((10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / userInfo[address(arg2)].field_0 != poolInfo[arg1].field_1280 + ((10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_5fc93c2d[arg1][address(arg2)] > (poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + ((10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_1280 * userInfo[address(arg2)].field_0) + ((10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1024) - (10^12 * poolInfo[arg1].field_1792 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_256 * userInfo[address(arg2)].field_0) / 10^12) - sub_5fc93c2d[arg1][address(arg2)] / 10^18)
}

function pendingrewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not userInfo[address(arg1)].field_768:
        require userInfo[address(arg1)].field_768 <= test266151307()
        mem[(32 * userInfo[address(arg1)].field_768) + 128] = userInfo[address(arg1)].field_768
        if userInfo[address(arg1)].field_768:
            mem[(32 * userInfo[address(arg1)].field_768) + 160 len 32 * userInfo[address(arg1)].field_768] = call.data[calldata.size len 32 * userInfo[address(arg1)].field_768]
        idx = 0
        while idx < userInfo[address(arg1)].field_768:
            require idx < userInfo[address(arg1)].field_768
            require mem[(32 * idx) + 128] < poolInfo.length
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 5)
            if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
                require idx < userInfo[address(arg1)].field_768
                mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = 0
            else:
                if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_1792:
                    if not userInfo[address(arg1)].field_0:
                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require idx < userInfo[address(arg1)].field_768
                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                    else:
                        require userInfo[address(arg1)].field_0
                        if userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require idx < userInfo[address(arg1)].field_768
                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = (userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                else:
                    if not poolInfo[mem[(32 * idx) + 128]].field_256:
                        if not userInfo[address(arg1)].field_0:
                            if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require idx < userInfo[address(arg1)].field_768
                            mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                        else:
                            require userInfo[address(arg1)].field_0
                            if userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require idx < userInfo[address(arg1)].field_768
                            mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = (userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                    else:
                        if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_768:
                            if poolInfo[mem[(32 * idx) + 128]].field_1792 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.timestamp - poolInfo[mem[(32 * idx) + 128]].field_1792:
                                if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[mem[(32 * idx) + 128]].field_256
                                if poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[address(arg1)].field_0:
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                else:
                                    require userInfo[address(arg1)].field_0
                                    if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                            else:
                                require block.timestamp - poolInfo[mem[(32 * idx) + 128]].field_1792
                                if (block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / block.timestamp - poolInfo[mem[(32 * idx) + 128]].field_1792 != poolInfo[mem[(32 * idx) + 128]].field_1024:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024):
                                    if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[mem[(32 * idx) + 128]].field_256
                                    if poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[address(arg1)].field_0:
                                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require idx < userInfo[address(arg1)].field_768
                                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                    else:
                                        require userInfo[address(arg1)].field_0
                                        if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require idx < userInfo[address(arg1)].field_768
                                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                else:
                                    require (block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024)
                                    if (10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / (block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[mem[(32 * idx) + 128]].field_256
                                    if poolInfo[mem[(32 * idx) + 128]].field_1280 + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[address(arg1)].field_0:
                                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require idx < userInfo[address(arg1)].field_768
                                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                    else:
                                        require userInfo[address(arg1)].field_0
                                        if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require idx < userInfo[address(arg1)].field_768
                                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                        else:
                            if poolInfo[mem[(32 * idx) + 128]].field_1792 > poolInfo[mem[(32 * idx) + 128]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not poolInfo[mem[(32 * idx) + 128]].field_768 - poolInfo[mem[(32 * idx) + 128]].field_1792:
                                if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[mem[(32 * idx) + 128]].field_256
                                if poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[address(arg1)].field_0:
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                else:
                                    require userInfo[address(arg1)].field_0
                                    if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                            else:
                                require poolInfo[mem[(32 * idx) + 128]].field_768 - poolInfo[mem[(32 * idx) + 128]].field_1792
                                if (poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_768 - poolInfo[mem[(32 * idx) + 128]].field_1792 != poolInfo[mem[(32 * idx) + 128]].field_1024:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024):
                                    if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[mem[(32 * idx) + 128]].field_256
                                    if poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[address(arg1)].field_0:
                                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require idx < userInfo[address(arg1)].field_768
                                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                    else:
                                        require userInfo[address(arg1)].field_0
                                        if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require idx < userInfo[address(arg1)].field_768
                                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                else:
                                    require (poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024)
                                    if (10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / (poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[mem[(32 * idx) + 128]].field_256
                                    if poolInfo[mem[(32 * idx) + 128]].field_1280 + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[address(arg1)].field_0:
                                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require idx < userInfo[address(arg1)].field_768
                                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                    else:
                                        require userInfo[address(arg1)].field_0
                                        if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require idx < userInfo[address(arg1)].field_768
                                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
            idx = idx + 1
            continue 
        mem[(64 * userInfo[address(arg1)].field_768) + 160] = 32
        mem[(64 * userInfo[address(arg1)].field_768) + 192] = userInfo[address(arg1)].field_768
        mem[(64 * userInfo[address(arg1)].field_768) + 224 len 32 * userInfo[address(arg1)].field_768] = mem[(32 * userInfo[address(arg1)].field_768) + 160 len 32 * userInfo[address(arg1)].field_768]
        return memory
          from (64 * userInfo[address(arg1)].field_768) + 160
           len (161 * userInfo[address(arg1)].field_768) + 64
    mem[128] = userInfo[address(arg1)][3].field_0
    idx = 128
    s = 0
    while (32 * userInfo[address(arg1)].field_768) + 96 > idx:
        mem[idx + 32] = userInfo[address(arg1)][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require userInfo[address(arg1)].field_768 <= test266151307()
    mem[(32 * userInfo[address(arg1)].field_768) + 128] = userInfo[address(arg1)].field_768
    if userInfo[address(arg1)].field_768:
        mem[(32 * userInfo[address(arg1)].field_768) + 160 len 32 * userInfo[address(arg1)].field_768] = call.data[calldata.size len 32 * userInfo[address(arg1)].field_768]
    idx = 0
    while idx < userInfo[address(arg1)].field_768:
        require idx < userInfo[address(arg1)].field_768
        require mem[(32 * idx) + 128] < poolInfo.length
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 5)
        if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
            require idx < userInfo[address(arg1)].field_768
            mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = 0
        else:
            if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_1792:
                if not userInfo[address(arg1)].field_0:
                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require idx < userInfo[address(arg1)].field_768
                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                else:
                    require userInfo[address(arg1)].field_0
                    if userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require idx < userInfo[address(arg1)].field_768
                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = (userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
            else:
                if not poolInfo[mem[(32 * idx) + 128]].field_256:
                    if not userInfo[address(arg1)].field_0:
                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require idx < userInfo[address(arg1)].field_768
                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                    else:
                        require userInfo[address(arg1)].field_0
                        if userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require idx < userInfo[address(arg1)].field_768
                        mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = (userInfo[address(arg1)].field_0 * poolInfo[mem[(32 * idx) + 128]].field_1280 / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                else:
                    if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_768:
                        if poolInfo[mem[(32 * idx) + 128]].field_1792 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[mem[(32 * idx) + 128]].field_1792:
                            if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[mem[(32 * idx) + 128]].field_256
                            if poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[address(arg1)].field_0:
                                if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < userInfo[address(arg1)].field_768
                                mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                            else:
                                require userInfo[address(arg1)].field_0
                                if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < userInfo[address(arg1)].field_768
                                mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                        else:
                            require block.timestamp - poolInfo[mem[(32 * idx) + 128]].field_1792
                            if (block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / block.timestamp - poolInfo[mem[(32 * idx) + 128]].field_1792 != poolInfo[mem[(32 * idx) + 128]].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024):
                                if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[mem[(32 * idx) + 128]].field_256
                                if poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[address(arg1)].field_0:
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                else:
                                    require userInfo[address(arg1)].field_0
                                    if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                            else:
                                require (block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024)
                                if (10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / (block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[mem[(32 * idx) + 128]].field_256
                                if poolInfo[mem[(32 * idx) + 128]].field_1280 + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[address(arg1)].field_0:
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                else:
                                    require userInfo[address(arg1)].field_0
                                    if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                    else:
                        if poolInfo[mem[(32 * idx) + 128]].field_1792 > poolInfo[mem[(32 * idx) + 128]].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not poolInfo[mem[(32 * idx) + 128]].field_768 - poolInfo[mem[(32 * idx) + 128]].field_1792:
                            if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[mem[(32 * idx) + 128]].field_256
                            if poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[address(arg1)].field_0:
                                if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < userInfo[address(arg1)].field_768
                                mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                            else:
                                require userInfo[address(arg1)].field_0
                                if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < userInfo[address(arg1)].field_768
                                mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                        else:
                            require poolInfo[mem[(32 * idx) + 128]].field_768 - poolInfo[mem[(32 * idx) + 128]].field_1792
                            if (poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_768 - poolInfo[mem[(32 * idx) + 128]].field_1792 != poolInfo[mem[(32 * idx) + 128]].field_1024:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024):
                                if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[mem[(32 * idx) + 128]].field_256
                                if poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[address(arg1)].field_0:
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                else:
                                    require userInfo[address(arg1)].field_0
                                    if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + (0 / poolInfo[mem[(32 * idx) + 128]].field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + (0 / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                            else:
                                require (poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024)
                                if (10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / (poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[mem[(32 * idx) + 128]].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[mem[(32 * idx) + 128]].field_256
                                if poolInfo[mem[(32 * idx) + 128]].field_1280 + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256) < poolInfo[mem[(32 * idx) + 128]].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[address(arg1)].field_0:
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = -sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
                                else:
                                    require userInfo[address(arg1)].field_0
                                    if (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != poolInfo[mem[(32 * idx) + 128]].field_1280 + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] > (poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < userInfo[address(arg1)].field_768
                                    mem[(32 * idx) + (32 * userInfo[address(arg1)].field_768) + 160] = ((poolInfo[mem[(32 * idx) + 128]].field_1280 * userInfo[address(arg1)].field_0) + ((10^12 * poolInfo[mem[(32 * idx) + 128]].field_768 * poolInfo[mem[(32 * idx) + 128]].field_1024) - (10^12 * poolInfo[mem[(32 * idx) + 128]].field_1792 * poolInfo[mem[(32 * idx) + 128]].field_1024) / poolInfo[mem[(32 * idx) + 128]].field_256 * userInfo[address(arg1)].field_0) / 10^12) - sub_5fc93c2d[mem[(32 * idx) + 128]][address(arg1)] / 10^18
        idx = idx + 1
        continue 
    mem[(64 * userInfo[address(arg1)].field_768) + 160] = 32
    mem[(64 * userInfo[address(arg1)].field_768) + 192] = userInfo[address(arg1)].field_768
    mem[(64 * userInfo[address(arg1)].field_768) + 224 len 32 * userInfo[address(arg1)].field_768] = mem[(32 * userInfo[address(arg1)].field_768) + 160 len 32 * userInfo[address(arg1)].field_768]
    return Array(len=userInfo[address(arg1)].field_768, data=mem[(32 * userInfo[address(arg1)].field_768) + 160 len 32 * userInfo[address(arg1)].field_768]), 
}



}
