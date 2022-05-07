contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address sub_bb76aecbAddress;
address wETHAddress;
address devaddr;
address stor10;
uint256 sub_daa0bac7;
uint256 sub_ae182a04;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint256 whitelist;
uint8 sub_66c6eef4;
mapping of uint8 stor17;
uint256 totalAllocPoint;
uint256 sub_9f3e161c;
uint256 startTime;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
           poolInfo[arg1].field_2304
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function approvedContracts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[arg1])
}

function whitelist(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return whitelist[arg1][arg2]
}

function sub_66c6eef4(?) payable {
    return bool(sub_66c6eef4)
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function sub_9f3e161c(?) payable {
    return sub_9f3e161c
}

function sub_ae182a04(?) payable {
    return sub_ae182a04
}

function sub_bb76aecb(?) payable {
    return sub_bb76aecbAddress
}

function devaddr() payable {
    return devaddr
}

function sub_daa0bac7(?) payable {
    return sub_daa0bac7
}

function wETH() payable {
    return wETHAddress
}

function _fallback() payable {
    revert
}

function ethpool() payable {
    return stor2, stor3, stor4, stor5, stor6
}

function sub_7f7f9184(?) payable {
    return stor2, stor3, stor4, stor5, stor6
}

function sub_36dcd960(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_66c6eef4 = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    if not arg1:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function sub_ba4b0fe5(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 10000
    require arg2 > 0
    stor5 = arg1
    stor6 = arg2
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10 != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    stor10 = arg1
}

function setApprovedContract(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = uint8(arg2)
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

function addReserve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require ext_code.size(wETHAddress)
        call wETHAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        stor2 += arg1
        sub_ae182a04 += arg1
}

function sub_2a42ecce(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 160 >= 128 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 <= test266151307()
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 68).length) + 160
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'length mismatch'
    if sub_66c6eef4:
        revert with 0, 'wrong lp'
    require cd[4] < poolInfo.length
    if poolInfo[cd[4]].field_0 != address(cd[36]):
        revert with 0, 'wrong lp'
    idx = 0
    while idx < ('cd', 68).length:
        require idx < ('cd', 100).length
        require idx < ('cd', 68).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4], 15)
        whitelist[cd[4]][mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
        idx = idx + 1
        continue 
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tx.origin != msg.sender:
        if not stor17[msg.sender]:
            revert with 0, 'onlyEOA'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][msg.sender].field_0:
        if poolInfo[arg1].field_2048:
            require ext_code.size(poolInfo[arg1].field_2048)
            staticcall poolInfo[arg1].field_2048.0xcf6ebee7 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(poolInfo[arg1].field_2048)
                call poolInfo[arg1].field_2048.0x441a3e70 with:
                     gas gas_remaining wei
                    args poolInfo[arg1].field_2304, userInfo[arg1][msg.sender].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(poolInfo[arg1].field_0)
        call poolInfo[arg1].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][msg.sender].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_1792:
            revert with 0, 'SafeMath: subtraction overflow'
        poolInfo[arg1].field_1792 -= userInfo[arg1][msg.sender].field_0
        userInfo[arg1][msg.sender].field_0 = 0
        userInfo[arg1][msg.sender].field_256 = 0
        userInfo[arg1][msg.sender].field_512 = 0
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_768:
        if poolInfo[arg1].field_1792:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_768 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_768:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not block.timestamp - poolInfo[arg1].field_768:
                        if sub_9f3e161c <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9f3e161c
                        require ext_code.size(sub_bb76aecbAddress)
                        call sub_bb76aecbAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_bb76aecbAddress)
                        call sub_bb76aecbAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1792 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1792
                            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1792
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1792 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1792
                            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792
                        if not 0 / sub_9f3e161c:
                            if poolInfo[arg1].field_1792 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1792
                            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_1792
                        else:
                            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1792 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1792
                            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792
                    else:
                        if (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) / block.timestamp - poolInfo[arg1].field_768 != stor4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4):
                            if sub_9f3e161c <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_9f3e161c
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1792
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792
                            if not 0 / sub_9f3e161c:
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_1792
                            else:
                                if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792
                        else:
                            if (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) != poolInfo[arg1].field_512:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if sub_9f3e161c <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_9f3e161c
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1792
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792
                            if not (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c:
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_1792
                            else:
                                if 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792
                else:
                    if (block.timestamp * sub_daa0bac7) - (poolInfo[arg1].field_768 * sub_daa0bac7) / block.timestamp - poolInfo[arg1].field_768 != sub_daa0bac7:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * sub_daa0bac7) - (poolInfo[arg1].field_768 * sub_daa0bac7):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not block.timestamp - poolInfo[arg1].field_768:
                            if sub_9f3e161c <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_9f3e161c
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1792
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792
                            if not 0 / sub_9f3e161c:
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_1792
                            else:
                                if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792
                        else:
                            if (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) / block.timestamp - poolInfo[arg1].field_768 != stor4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4):
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792
                            else:
                                if (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) != poolInfo[arg1].field_512:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792
                                if not (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c:
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_1792
                                else:
                                    if 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792
                    else:
                        if (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / (block.timestamp * sub_daa0bac7) - (poolInfo[arg1].field_768 * sub_daa0bac7) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not block.timestamp - poolInfo[arg1].field_768:
                            if sub_9f3e161c <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_9f3e161c
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1792
                            else:
                                if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792
                            if not 0 / sub_9f3e161c:
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_1792
                            else:
                                if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1792
                                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792
                        else:
                            if (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) / block.timestamp - poolInfo[arg1].field_768 != stor4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4):
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1792
                                else:
                                    if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792
                            else:
                                if (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) != poolInfo[arg1].field_512:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1024 += 0 / poolInfo[arg1].field_1792
                                else:
                                    if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792
                                if not (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c:
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_1792
                                else:
                                    if 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1792
                                    if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792
        poolInfo[arg1].field_768 = block.timestamp
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 13
        if block.timestamp > poolInfo[idx].field_768:
            if poolInfo[idx].field_1792:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_768:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not block.timestamp - poolInfo[idx].field_768:
                            if sub_9f3e161c <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_9f3e161c
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1792
                                if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1792
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                            if not 0 / sub_9f3e161c:
                                if poolInfo[idx].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1792
                                if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                            else:
                                if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1792
                                if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                        else:
                            if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                    else:
                        if (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7) / block.timestamp - poolInfo[idx].field_768 != sub_daa0bac7:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not block.timestamp - poolInfo[idx].field_768:
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                        else:
                            if (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not block.timestamp - poolInfo[idx].field_768:
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                    if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
            poolInfo[idx].field_768 = block.timestamp
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 10^18:
        revert with 0, 'too large'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 13
        if block.timestamp > poolInfo[idx].field_768:
            if poolInfo[idx].field_1792:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_768:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not block.timestamp - poolInfo[idx].field_768:
                            if sub_9f3e161c <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_9f3e161c
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_bb76aecbAddress)
                            call sub_bb76aecbAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1792
                                if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1792
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                            if not 0 / sub_9f3e161c:
                                if poolInfo[idx].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1792
                                if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                            else:
                                if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_1792 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1792
                                if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                        else:
                            if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                    else:
                        if (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7) / block.timestamp - poolInfo[idx].field_768 != sub_daa0bac7:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not block.timestamp - poolInfo[idx].field_768:
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                        else:
                            if (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not block.timestamp - poolInfo[idx].field_768:
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                    if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
            poolInfo[idx].field_768 = block.timestamp
        idx = idx + 1
        continue 
    sub_daa0bac7 = arg1
}

function sub_db307ed5(?) payable {
    require calldata.size - 4 >= 160
    require arg4 == uint16(arg4)
    require arg5 == bool(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg4) > 400:
        revert with 0, 'max 4%'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 13
            if block.timestamp > poolInfo[idx].field_768:
                if poolInfo[idx].field_1792:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_768 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_768:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not block.timestamp - poolInfo[idx].field_768:
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                        else:
                            if (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7) / block.timestamp - poolInfo[idx].field_768 != sub_daa0bac7:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                        if sub_9f3e161c <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_9f3e161c
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                        if not 0 / sub_9f3e161c:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                    else:
                                        if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_9f3e161c <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_9f3e161c
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                        if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                        if sub_9f3e161c <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_9f3e161c
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                        if not 0 / sub_9f3e161c:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                    else:
                                        if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_9f3e161c <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_9f3e161c
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                        if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                poolInfo[idx].field_768 = block.timestamp
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    if poolInfo[arg1].field_512 > sub_9f3e161c:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    sub_9f3e161c = arg3 + sub_9f3e161c - poolInfo[arg1].field_512
    poolInfo[arg1].field_512 = arg3
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1536 = uint16(arg4)
}

function sub_189d7f3c(?) payable {
    require calldata.size - 4 >= 224
    require arg3 == address(arg3)
    require arg4 == uint16(arg4)
    require arg5 == address(arg5)
    require arg7 == bool(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg4) > 400:
        revert with 0, 'max 4%'
    if arg7:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 13
            if block.timestamp > poolInfo[idx].field_768:
                if poolInfo[idx].field_1792:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_768 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_768:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not block.timestamp - poolInfo[idx].field_768:
                                if sub_9f3e161c <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_9f3e161c
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_bb76aecbAddress)
                                call sub_bb76aecbAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                if not 0 / sub_9f3e161c:
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                else:
                                    if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1792 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1792
                                    if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                        else:
                            if (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7) / block.timestamp - poolInfo[idx].field_768 != sub_daa0bac7:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                        if sub_9f3e161c <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_9f3e161c
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                        if not 0 / sub_9f3e161c:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                    else:
                                        if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_9f3e161c <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_9f3e161c
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1792
                                        if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                            else:
                                if (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / (block.timestamp * sub_daa0bac7) - (poolInfo[idx].field_768 * sub_daa0bac7) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if sub_9f3e161c <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_9f3e161c
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_bb76aecbAddress)
                                    call sub_bb76aecbAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                    if not 0 / sub_9f3e161c:
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                    else:
                                        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1792 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1792
                                        if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                else:
                                    if (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) / block.timestamp - poolInfo[idx].field_768 != stor4:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4):
                                        if sub_9f3e161c <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_9f3e161c
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                        if not 0 / sub_9f3e161c:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^12 * 0 / sub_9f3e161c / poolInfo[idx].field_1792
                                    else:
                                        if (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / (block.timestamp * stor4) - (poolInfo[idx].field_768 * stor4) != poolInfo[idx].field_512:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_9f3e161c <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_9f3e161c
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_bb76aecbAddress)
                                        call sub_bb76aecbAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_daa0bac7 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1792
                                        if not (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c:
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (0 / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1792
                                        else:
                                            if 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1792 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1792
                                            if (10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^12 * (block.timestamp * stor4 * poolInfo[idx].field_512) - (poolInfo[idx].field_768 * stor4 * poolInfo[idx].field_512) / sub_9f3e161c / poolInfo[idx].field_1792
                poolInfo[idx].field_768 = block.timestamp
            idx = idx + 1
            continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    if arg2 + sub_9f3e161c < sub_9f3e161c:
        revert with 0, 'SafeMath: addition overflow'
    sub_9f3e161c += arg2
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = address(arg3)
    poolInfo[poolInfo.length].field_256 = arg1
    poolInfo[poolInfo.length].field_512 = arg2
    if block.timestamp > startTime:
        poolInfo[poolInfo.length].field_768 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_768 = startTime
    poolInfo[poolInfo.length].field_1024 = 0
    poolInfo[poolInfo.length].field_1280 = 0
    poolInfo[poolInfo.length].field_1536 = uint16(arg4)
    poolInfo[poolInfo.length].field_1792 = 0
    poolInfo[poolInfo.length].field_2048 = address(arg5)
    poolInfo[poolInfo.length].field_2304 = arg6
    if address(arg5):
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function pendingTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_768:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_512
    if not poolInfo[arg1].field_1792:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_512
    if totalAllocPoint <= 0:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_512
    if sub_9f3e161c <= 0:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_512
    if poolInfo[arg1].field_768 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - poolInfo[arg1].field_768:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not block.timestamp - poolInfo[arg1].field_768:
            if sub_9f3e161c <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9f3e161c
            if not 0 / totalAllocPoint:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not 0 / sub_9f3e161c:
                    if poolInfo[arg1].field_1792 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1792
                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                        if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, 
                               ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                               -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / sub_9f3e161c:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) / block.timestamp - poolInfo[arg1].field_768 != stor4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4):
            if sub_9f3e161c <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9f3e161c
            if not 0 / totalAllocPoint:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not 0 / sub_9f3e161c:
                    if poolInfo[arg1].field_1792 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1792
                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                        if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, 
                               ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                               -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / sub_9f3e161c:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) != poolInfo[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_9f3e161c <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9f3e161c
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c:
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
    if (block.timestamp * sub_daa0bac7) - (poolInfo[arg1].field_768 * sub_daa0bac7) / block.timestamp - poolInfo[arg1].field_768 != sub_daa0bac7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (block.timestamp * sub_daa0bac7) - (poolInfo[arg1].field_768 * sub_daa0bac7):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not block.timestamp - poolInfo[arg1].field_768:
            if sub_9f3e161c <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9f3e161c
            if not 0 / totalAllocPoint:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not 0 / sub_9f3e161c:
                    if poolInfo[arg1].field_1792 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1792
                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                        if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, 
                               ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                               -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / sub_9f3e161c:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) / block.timestamp - poolInfo[arg1].field_768 != stor4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4):
            if sub_9f3e161c <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9f3e161c
            if not 0 / totalAllocPoint:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not 0 / sub_9f3e161c:
                    if poolInfo[arg1].field_1792 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1792
                    if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                        if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, 
                               ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                               -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / sub_9f3e161c:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) != poolInfo[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_9f3e161c <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9f3e161c
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c:
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
    if (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / (block.timestamp * sub_daa0bac7) - (poolInfo[arg1].field_768 * sub_daa0bac7) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not block.timestamp - poolInfo[arg1].field_768:
        if sub_9f3e161c <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9f3e161c
        if not (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint:
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / sub_9f3e161c:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not 0 / sub_9f3e161c:
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
    if (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) / block.timestamp - poolInfo[arg1].field_768 != stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4):
        if sub_9f3e161c <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9f3e161c
        if not (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint:
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / sub_9f3e161c:
                if poolInfo[arg1].field_1792 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1792
                if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                    if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, 
                           ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                           -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not 0 / sub_9f3e161c:
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if 10^12 * 0 / sub_9f3e161c / 0 / sub_9f3e161c != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               ((10^12 * 0 / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
    if (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / (block.timestamp * stor4) - (poolInfo[arg1].field_768 * stor4) != poolInfo[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_9f3e161c <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_9f3e161c
    if not (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint:
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c:
            if poolInfo[arg1].field_1792 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1792
            if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
                if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, 
                       ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                       -userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
    if 10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if poolInfo[arg1].field_1792 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1792
    if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c:
        if poolInfo[arg1].field_1792 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1792
        if (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
            if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, 
                   ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
        if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
                   -userInfo[arg1][address(arg2)].field_512
        if (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > (0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               ((0 / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
    if 10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if poolInfo[arg1].field_1792 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1792
    if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256, -userInfo[arg1][address(arg2)].field_512
        if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256, 
               ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
    if (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
               -userInfo[arg1][address(arg2)].field_512
    if (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792) + poolInfo[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_512 > (10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((10^12 * (block.timestamp * sub_daa0bac7 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_daa0bac7 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256, 
           ((10^12 * (block.timestamp * stor4 * poolInfo[arg1].field_512) - (poolInfo[arg1].field_768 * stor4 * poolInfo[arg1].field_512) / sub_9f3e161c / poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512
}



}
