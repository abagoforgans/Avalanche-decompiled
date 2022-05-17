contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(uint256 arg1, address arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3)
#
const sub_173b31d8(?) = 100

const sub_39e5f4ff(?) = 900


address owner;
address sub_9be8ccadAddress;
address treasuryAddress;
uint256 sub_eca88ad9;
array of struct poolInfo;
array of address lpTokens;
array of struct stor6;
mapping of uint256 stor7;
array of address rewarder;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function lpTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lpTokens.length
    return lpTokens[arg1]
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_9be8ccad(?) payable {
    return sub_9be8ccadAddress
}

function rewarder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewarder.length
    return rewarder[arg1]
}

function treasuryAddress() payable {
    return treasuryAddress
}

function startTimestamp() payable {
    return startTimestamp
}

function sub_eca88ad9(?) payable {
    return sub_eca88ad9
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eca88ad9 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function treasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    emit SetTreasuryAddress(arg1, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function set(uint256 arg1, uint256 arg2, address arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg3):
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: rewarder must be contract or zero'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_0:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_0 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_0 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_0 = arg2
    if arg1 >= rewarder.length:
        revert with 0, 50
    if not arg4:
        emit LogSetPool(arg2, arg4, arg1, rewarder[arg1]);
    else:
        rewarder[arg1] = arg3
        if arg4:
            emit LogSetPool(arg2, arg4, arg1, arg3);
        else:
            if arg1 >= rewarder.length:
                revert with 0, 50
            emit LogSetPool(arg2, arg4, arg1, rewarder[arg1]);
}

function add(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: LP token must be a valid contract'
    if not ext_code.size(arg3):
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: rewarder must be contract or zero'
    if stor7[address(arg2)]:
        revert with 0, 'add: LP already added'
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    lpTokens.length++
    stor36B6[stor5.length] = arg2
    if not stor7[address(arg2)]:
        stor6.length++
        stor6[stor6.length].field_0 = arg2
        stor6[stor6.length].field_160 = 0
        stor7[address(arg2)] = stor6.length
    rewarder.length++
    rewarder[rewarder.length] = arg3
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    if block.timestamp > startTimestamp:
        stor8A35[stor4.length] = block.timestamp
    else:
        stor8A35[stor4.length] = startTimestamp
    stor8A35[stor4.length] = 0
    if lpTokens.length < 1:
        revert with 0, 17
    emit LogPoolAddition(arg1, lpTokens.length - 1, arg2, arg3);
}

function sub_908ce997(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg1 >= lpTokens.length:
        revert with 0, 50
    require ext_code.size(lpTokens[arg1])
    staticcall lpTokens[arg1].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_256:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < poolInfo[arg1].field_256:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_256 and sub_eca88ad9 > -1 / block.timestamp - poolInfo[arg1].field_256:
        revert with 0, 17
    if (block.timestamp * sub_eca88ad9) - (poolInfo[arg1].field_256 * sub_eca88ad9) and poolInfo[arg1].field_0 > -1 / (block.timestamp * sub_eca88ad9) - (poolInfo[arg1].field_256 * sub_eca88ad9):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint and 900 > -1 / (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint:
        revert with 0, 17
    if 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 and 10^12 > -1 / 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_512 > !(10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg1 >= lpTokens.length:
        revert with 0, 50
    require ext_code.size(lpTokens[arg1])
    staticcall lpTokens[arg1].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_256:
        return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512
    if not ext_call.return_data[0]:
        return poolInfo[arg1].field_0, block.timestamp, poolInfo[arg1].field_512
    if block.timestamp < poolInfo[arg1].field_256:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_256 and sub_eca88ad9 > -1 / block.timestamp - poolInfo[arg1].field_256:
        revert with 0, 17
    if (block.timestamp * sub_eca88ad9) - (poolInfo[arg1].field_256 * sub_eca88ad9) and poolInfo[arg1].field_0 > -1 / (block.timestamp * sub_eca88ad9) - (poolInfo[arg1].field_256 * sub_eca88ad9):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint and 900 > -1 / (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint:
        revert with 0, 17
    if (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint and 100 > -1 / (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint:
        revert with 0, 17
    require ext_code.size(sub_9be8ccadAddress)
    call sub_9be8ccadAddress.0x40c10f19 with:
         gas gas_remaining wei
        args treasuryAddress, 100 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9be8ccadAddress)
    call sub_9be8ccadAddress.0x40c10f19 with:
         gas gas_remaining wei
        args this.address, 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 and 10^12 > -1 / 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_512 > !(10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0]):
        revert with 0, 17
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = block.timestamp
    poolInfo[arg1].field_512 += 10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0]
    emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0]), arg1);
    return poolInfo[arg1].field_0, 
           block.timestamp,
           poolInfo[arg1].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0])
}

function massUpdatePools(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        _25 = mem[64]
        mem[64] = mem[64] + 96
        mem[_25] = 0
        mem[_25 + 32] = 0
        mem[_25 + 64] = 0
        if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 4
        _27 = mem[64]
        mem[64] = mem[64] + 96
        mem[_27] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_27 + 32] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_27 + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
        if cd[((32 * idx) + arg1 + 36)] >= lpTokens.length:
            revert with 0, 50
        mem[0] = 5
        mem[mem[64] + 4] = this.address
        require ext_code.size(lpTokens[cd[((32 * idx) + arg1 + 36)]])
        staticcall lpTokens[cd[((32 * idx) + arg1 + 36)]].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _32 = mem[_31]
        if block.timestamp > poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
            if not mem[_31]:
                mem[_27 + 32] = block.timestamp
            else:
                if block.timestamp < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                    revert with 0, 17
                if block.timestamp - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 and sub_eca88ad9 > -1 / block.timestamp - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256:
                    revert with 0, 17
                if (block.timestamp * sub_eca88ad9) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9) and poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 > -1 / (block.timestamp * sub_eca88ad9) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint and 900 > -1 / (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint:
                    revert with 0, 17
                if (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint and 100 > -1 / (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint:
                    revert with 0, 17
                require ext_code.size(sub_9be8ccadAddress)
                call sub_9be8ccadAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args treasuryAddress, 100 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9be8ccadAddress)
                call sub_9be8ccadAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint / 1000 and 10^12 > -1 / 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint / 1000:
                    revert with 0, 17
                if not mem[_31]:
                    revert with 0, 18
                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 > !(10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint / 1000 / mem[_31]):
                    revert with 0, 17
                mem[_27 + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint / 1000 / mem[_31])
                mem[_27 + 32] = block.timestamp
                if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 4
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = block.timestamp
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 += 10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint / 1000 / _32
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _32
                mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint / 1000 / _32)
                emit LogUpdatePool(block.timestamp, _32, poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0) / totalAllocPoint / 1000 / _32), cd[((32 * idx) + arg1 + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function harvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg1 >= lpTokens.length:
        revert with 0, 50
    require ext_code.size(lpTokens[arg1])
    staticcall lpTokens[arg1].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_256:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256:
            require ext_code.size(sub_9be8ccadAddress)
            staticcall sub_9be8ccadAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_9be8ccadAddress)
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                call sub_9be8ccadAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256
            else:
                call sub_9be8ccadAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg1 >= rewarder.length:
            revert with 0, 50
        if rewarder[arg1]:
            require ext_code.size(rewarder[arg1])
            call rewarder[arg1].0x351a7f24 with:
                 gas gas_remaining wei
                args arg1, msg.sender, address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256, userInfo[arg1][msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Harvest(((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
    else:
        if not ext_call.return_data[0]:
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256:
                require ext_code.size(sub_9be8ccadAddress)
                staticcall sub_9be8ccadAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_9be8ccadAddress)
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_9be8ccadAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call sub_9be8ccadAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 >= rewarder.length:
                revert with 0, 50
            if rewarder[arg1]:
                require ext_code.size(rewarder[arg1])
                call rewarder[arg1].0x351a7f24 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256, userInfo[arg1][msg.sender].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Harvest(((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
        else:
            if block.timestamp < poolInfo[arg1].field_256:
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_256 and sub_eca88ad9 > -1 / block.timestamp - poolInfo[arg1].field_256:
                revert with 0, 17
            if (block.timestamp * sub_eca88ad9) - (poolInfo[arg1].field_256 * sub_eca88ad9) and poolInfo[arg1].field_0 > -1 / (block.timestamp * sub_eca88ad9) - (poolInfo[arg1].field_256 * sub_eca88ad9):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint and 900 > -1 / (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint:
                revert with 0, 17
            if (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint and 100 > -1 / (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint:
                revert with 0, 17
            require ext_code.size(sub_9be8ccadAddress)
            call sub_9be8ccadAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args treasuryAddress, 100 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_9be8ccadAddress)
            call sub_9be8ccadAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 and 10^12 > -1 / 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_512 > !(10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0]):
                revert with 0, 17
            if arg1 >= poolInfo.length:
                revert with 0, 50
            poolInfo[arg1].field_256 = block.timestamp
            poolInfo[arg1].field_512 += 10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0]
            emit LogUpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0]), arg1);
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0]) > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 < userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
            if ((poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256:
                require ext_code.size(sub_9be8ccadAddress)
                staticcall sub_9be8ccadAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_9be8ccadAddress)
                if ((poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_9be8ccadAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), ((poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call sub_9be8ccadAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 >= rewarder.length:
                revert with 0, 50
            if rewarder[arg1]:
                require ext_code.size(rewarder[arg1])
                call rewarder[arg1].0x351a7f24 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, address(arg2), ((poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256, userInfo[arg1][msg.sender].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Harvest((((poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_256 * sub_eca88ad9 * poolInfo[arg1].field_0) / totalAllocPoint / 1000 / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
}

function sub_4bf37df6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = msg.sender
        mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 9)
        if userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 > 0:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            _137 = mem[64]
            mem[64] = mem[64] + 96
            mem[_137] = 0
            mem[_137 + 32] = 0
            mem[_137 + 64] = 0
            if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                revert with 0, 50
            mem[0] = 4
            _139 = mem[64]
            mem[64] = mem[64] + 96
            mem[_139] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_139 + 32] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[_139 + 64] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512
            if cd[((32 * idx) + cd[4] + 36)] >= lpTokens.length:
                revert with 0, 50
            mem[0] = 5
            mem[mem[64] + 4] = this.address
            require ext_code.size(lpTokens[cd[((32 * idx) + cd[4] + 36)]])
            staticcall lpTokens[cd[((32 * idx) + cd[4] + 36)]].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _144 = mem[_143]
            if block.timestamp <= poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256:
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 9)
                if userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 and poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 > -1 / userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12 < userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256:
                    revert with 0, 17
                userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256 = userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12
                if (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_9be8ccadAddress)
                    staticcall sub_9be8ccadAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _166 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _170 = mem[_166]
                    mem[mem[64] + 4] = address(cd[36])
                    if (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256 <= mem[_166]:
                        mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                        require ext_code.size(sub_9be8ccadAddress)
                        call sub_9be8ccadAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[36]), (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _184 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_184] == bool(mem[_184])
                    else:
                        mem[mem[64] + 36] = _170
                        require ext_code.size(sub_9be8ccadAddress)
                        call sub_9be8ccadAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[36]), _170
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_185] == bool(mem[_185])
                if cd[((32 * idx) + cd[4] + 36)] >= rewarder.length:
                    revert with 0, 50
                mem[0] = 8
                if rewarder[cd[((32 * idx) + cd[4] + 36)]]:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(cd[36])
                    mem[mem[64] + 100] = (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                    mem[mem[64] + 132] = userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0
                    require ext_code.size(rewarder[cd[((32 * idx) + cd[4] + 36)]])
                    call rewarder[cd[((32 * idx) + cd[4] + 36)]].0x351a7f24 with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)], msg.sender, address(cd[36]), (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256, userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                emit Harvest(((userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256), msg.sender, cd[((32 * idx) + cd[4] + 36)]);
            else:
                if not mem[_143]:
                    mem[_139 + 32] = block.timestamp
                    mem[0] = msg.sender
                    mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 9)
                    if userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 and poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 > -1 / userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12 < userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256:
                        revert with 0, 17
                    userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256 = userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12
                    if (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_9be8ccadAddress)
                        staticcall sub_9be8ccadAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _171 = mem[_167]
                        mem[mem[64] + 4] = address(cd[36])
                        if (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256 <= mem[_167]:
                            mem[mem[64] + 36] = (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                            require ext_code.size(sub_9be8ccadAddress)
                            call sub_9be8ccadAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_186] == bool(mem[_186])
                        else:
                            mem[mem[64] + 36] = _171
                            require ext_code.size(sub_9be8ccadAddress)
                            call sub_9be8ccadAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), _171
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _187 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_187] == bool(mem[_187])
                    if cd[((32 * idx) + cd[4] + 36)] >= rewarder.length:
                        revert with 0, 50
                    mem[0] = 8
                    if rewarder[cd[((32 * idx) + cd[4] + 36)]]:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = address(cd[36])
                        mem[mem[64] + 100] = (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                        mem[mem[64] + 132] = userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0
                        require ext_code.size(rewarder[cd[((32 * idx) + cd[4] + 36)]])
                        call rewarder[cd[((32 * idx) + cd[4] + 36)]].0x351a7f24 with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)], msg.sender, address(cd[36]), (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256, userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = (userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                    emit Harvest(((userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256), msg.sender, cd[((32 * idx) + cd[4] + 36)]);
                else:
                    if block.timestamp < poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256:
                        revert with 0, 17
                    if block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 and sub_eca88ad9 > -1 / block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256:
                        revert with 0, 17
                    if (block.timestamp * sub_eca88ad9) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9) and poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / (block.timestamp * sub_eca88ad9) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint and 900 > -1 / (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint:
                        revert with 0, 17
                    if (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint and 100 > -1 / (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint:
                        revert with 0, 17
                    require ext_code.size(sub_9be8ccadAddress)
                    call sub_9be8ccadAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args treasuryAddress, 100 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9be8ccadAddress)
                    call sub_9be8ccadAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 and 10^12 > -1 / 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000:
                        revert with 0, 17
                    if not mem[_143]:
                        revert with 0, 18
                    if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 > !(10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / mem[_143]):
                        revert with 0, 17
                    mem[_139 + 64] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / mem[_143])
                    mem[_139 + 32] = block.timestamp
                    if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                        revert with 0, 50
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = block.timestamp
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 += 10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144
                    mem[mem[64] + 32] = _144
                    mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144)
                    emit LogUpdatePool(block.timestamp, _144, poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144), cd[((32 * idx) + cd[4] + 36)]);
                    mem[0] = msg.sender
                    mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 9)
                    if userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 and poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144) > -1 / userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0:
                        revert with 0, 17
                    if (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12 < userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256:
                        revert with 0, 17
                    userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256 = (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12
                    if ((poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_9be8ccadAddress)
                        staticcall sub_9be8ccadAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _244 = mem[_242]
                        mem[mem[64] + 4] = address(cd[36])
                        if ((poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256 <= mem[_242]:
                            mem[mem[64] + 36] = ((poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                            require ext_code.size(sub_9be8ccadAddress)
                            call sub_9be8ccadAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), ((poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _251 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_251] == bool(mem[_251])
                        else:
                            mem[mem[64] + 36] = _244
                            require ext_code.size(sub_9be8ccadAddress)
                            call sub_9be8ccadAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), _244
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _252 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_252] == bool(mem[_252])
                    if cd[((32 * idx) + cd[4] + 36)] >= rewarder.length:
                        revert with 0, 50
                    mem[0] = 8
                    if rewarder[cd[((32 * idx) + cd[4] + 36)]]:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = address(cd[36])
                        mem[mem[64] + 100] = ((poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                        mem[mem[64] + 132] = userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0
                        require ext_code.size(rewarder[cd[((32 * idx) + cd[4] + 36)]])
                        call rewarder[cd[((32 * idx) + cd[4] + 36)]].0x351a7f24 with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)], msg.sender, address(cd[36]), ((poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256, userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = ((poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256
                    emit Harvest((((poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (10^12 * 900 * (block.timestamp * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_eca88ad9 * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0) / totalAllocPoint / 1000 / _144 * userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) / 10^12) - userInfo[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_256), msg.sender, cd[((32 * idx) + cd[4] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
