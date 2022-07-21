contract main {




// =====================  Runtime code  =====================


const getBlockTimestamp = block.timestamp


uint8 stor0; offset 160
address implementationAddress;
address owner;
address stakeTokenAddress;
uint256 minStakeAmount;
uint256 maxStakeAmount;
uint256 sub_66b741ca;
uint256 sub_09d9754e;
uint256 totalStakeAmount;
uint8 stor8;
array of address user;
mapping of struct userStakes;

function sub_09d9754e(?) payable {
    return sub_09d9754e
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < user.length
    return user[arg1]
}

function pauseStake() payable {
    return bool(stor8)
}

function stakeToken() payable {
    return stakeTokenAddress
}

function implementation() payable {
    return implementationAddress
}

function maxStakeAmount() payable {
    return maxStakeAmount
}

function sub_66b741ca(?) payable {
    return sub_66b741ca
}

function owner() payable {
    return owner
}

function userStakes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userStakes[arg1].field_0, userStakes[arg1].field_256
}

function totalStakeAmount() payable {
    return totalStakeAmount
}

function getUsersCount() payable {
    return user.length
}

function getUserStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= user.length:
        revert with 0, 50
    return userStakes[stor9[arg1]].field_0, userStakes[stor9[arg1]].field_256
}

function getUser(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= user.length:
        revert with 0, 50
    return user[arg1]
}

function minStakeAmount() payable {
    return minStakeAmount
}

function sub_f8990fa6(?) payable {
    return bool(stor0)
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

function setUnStakeTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_09d9754e = arg1
}

function setMaxTotalStakeAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_66b741ca = arg1
}

function setPauseStake(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = uint8(arg1)
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

function setStakeAmounts(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ImplAndTerms::setStakeAmounts: max amount must be more than min amount'
    minStakeAmount = arg1
    maxStakeAmount = arg2
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if userStakes[msg.sender].field_0 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ImplAndTerms::unstake: amount more than stake amount'
    if block.timestamp < userStakes[msg.sender].field_256:
        revert with 0, 17
    if block.timestamp - userStakes[msg.sender].field_256 <= sub_09d9754e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ImplAndTerms::unstake: bad timing for request'
    if userStakes[msg.sender].field_0 < arg1:
        revert with 0, 17
    userStakes[address(msg.sender)].field_0 = userStakes[msg.sender].field_0 - arg1
    call stakeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_OUT_FAILED'
    emit Unstake(arg1, msg.sender);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ImplAndTerms::stake: stake is paused'
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stakeTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
    if 0 > !totalStakeAmount:
        revert with 0, 17
    if totalStakeAmount > sub_66b741ca:
        revert with 0, 'ImplAndTerms::stake: total stake amount must be less than max total stake amount'
    if 0 > !userStakes[address(msg.sender)].field_0:
        revert with 0, 17
    if minStakeAmount > userStakes[address(msg.sender)].field_0:
        revert with 0, 'ImplAndTerms::stake: stake amount must be more than min stake amount'
    if 0 > !userStakes[address(msg.sender)].field_0:
        revert with 0, 17
    if userStakes[address(msg.sender)].field_0 > maxStakeAmount:
        revert with 0, 'ImplAndTerms::stake: stake amount must be less than max stake amount'
    if totalStakeAmount > !0:
        revert with 0, 17
    if userStakes[address(msg.sender)].field_0 > !0:
        revert with 0, 17
    userStakes[address(msg.sender)].field_256 = block.timestamp
    user.length++
    user[user.length] = msg.sender
    emit Stake(user.length, 0, block.timestamp, msg.sender);
}

function initialize(address arg1, address arg2, address arg3, string arg4, string arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 98 < 97 or ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg5.length)) + 98 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if stakeTokenAddress:
        revert with 0, 'ImplAndTerms::initialize: may only be initialized once'
    if not arg2:
        revert with 0, 'ImplAndTerms::initialize: address is 0'
    stakeTokenAddress = arg2
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        minStakeAmount = 5000
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf487:
                revert with 0, 17
            minStakeAmount = 5000 * 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf487:
                revert with 0, 17
            minStakeAmount = 5000 * s * t
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        maxStakeAmount = 10000
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            maxStakeAmount = 10000 * 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            maxStakeAmount = 10000 * s * t
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        sub_66b741ca = 100 * 10^6
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            sub_66b741ca = 100 * 10^6 * 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            sub_66b741ca = 100 * 10^6 * s * t
    sub_09d9754e = 168 * 24 * 3600
}



}
