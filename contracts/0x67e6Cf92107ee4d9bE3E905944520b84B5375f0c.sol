contract main {




// =====================  Runtime code  =====================


#
#  - recoverWrongTokens(address arg1, address arg2, uint256 arg3)
#  - claimRewards()
#  - emergencyRewardWithdraw(address arg1, uint256 arg2)
#  - sendRewards(uint256 arg1)
#  - stake(address arg1, uint256 arg2)
#  - unstake(address arg1, uint256 arg2)
#
const PRECISION = 10^18


address owner;
address sub_4a7d3ef6Address;
address rewardTokenAddress;
address rewardSenderAddress;
uint8 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of struct users;

function sub_4a7d3ef6(?) payable {
    return sub_4a7d3ef6Address
}

function rewardSender() payable {
    return rewardSenderAddress
}

function owner() payable {
    return owner
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, users[arg1].field_256
}

function isPoolActive() payable {
    return bool(stor5)
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function pool() payable {
    return bool(stor5), stor6, stor7, stor8
}

function closePool() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'VeWTF Staking: zero address'
    rewardTokenAddress = arg1
}

function setRewardSender(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'VeWTF Staking: zero address'
    rewardSenderAddress = arg1
}

function sub_6ef6305d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e531d85e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor7 and users[address(arg1)].field_0 > -1 / stor7:
        revert with 0, 17
    if stor7 * users[address(arg1)].field_0 / 10^18 < users[address(arg1)].field_256:
        revert with 0, 17
    return ((stor7 * users[address(arg1)].field_0 / 10^18) - users[address(arg1)].field_256)
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



}
