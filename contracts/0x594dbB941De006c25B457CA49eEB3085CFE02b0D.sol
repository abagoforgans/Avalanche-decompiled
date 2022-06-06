contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
array of struct poolInfo;
mapping of struct userInfo;

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
           poolInfo[arg1].field_1536
}

function userInfo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function owner() payable {
    return owner
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

function stopReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_1024 = block.timestamp
}

function sub_55cc2b7e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg2].field_256 = arg1
}

function sub_a0188008(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg2].field_768 = arg1
}

function sub_a94902f9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg2].field_1280 = arg1
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

function sub_f9e91c47(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'should be later than current time'
    if arg2 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg2].field_1024 = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 >= poolInfo.length:
        revert with 'NH{q', 50
    if arg2 <= poolInfo[arg3].field_1024:
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= poolInfo[arg3].field_1024:
        return 0
    if poolInfo[arg3].field_1024 < arg1:
        revert with 'NH{q', 17
    return (poolInfo[arg3].field_1024 - arg1)
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
}

function addPool(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    poolInfo[poolInfo.length].field_256 = arg2
    poolInfo[poolInfo.length].field_512 = arg3
    poolInfo[poolInfo.length].field_768 = arg4
    poolInfo[poolInfo.length].field_1024 = arg5
    poolInfo[poolInfo.length].field_1280 = arg6
    poolInfo[poolInfo.length].field_1536 = 0
}

function pendingReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp <= userInfo[address(arg1)][arg2].field_768:
        return 0
    if not poolInfo[arg2].field_1536:
        return 0
    if arg2 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp <= poolInfo[arg2].field_1024:
        if block.timestamp < userInfo[address(arg1)][arg2].field_768:
            revert with 'NH{q', 17
        if userInfo[address(arg1)][arg2].field_0 and block.timestamp - userInfo[address(arg1)][arg2].field_768 > -1 / userInfo[address(arg1)][arg2].field_0:
            revert with 'NH{q', 17
        if (block.timestamp * userInfo[address(arg1)][arg2].field_0) - (userInfo[address(arg1)][arg2].field_768 * userInfo[address(arg1)][arg2].field_0) and poolInfo[arg2].field_256 > -1 / (block.timestamp * userInfo[address(arg1)][arg2].field_0) - (userInfo[address(arg1)][arg2].field_768 * userInfo[address(arg1)][arg2].field_0):
            revert with 'NH{q', 17
        return ((block.timestamp * userInfo[address(arg1)][arg2].field_0 * poolInfo[arg2].field_256) - (userInfo[address(arg1)][arg2].field_768 * userInfo[address(arg1)][arg2].field_0 * poolInfo[arg2].field_256) / 100 / 8760 * 24 * 3600)
    if userInfo[address(arg1)][arg2].field_768 >= poolInfo[arg2].field_1024:
        if userInfo[address(arg1)][arg2].field_0 and 0 > -1 / userInfo[address(arg1)][arg2].field_0:
            revert with 'NH{q', 17
        if False and poolInfo[arg2].field_256 > 0:
            revert with 'NH{q', 17
        else:
            return 0
    if poolInfo[arg2].field_1024 < userInfo[address(arg1)][arg2].field_768:
        revert with 'NH{q', 17
    if userInfo[address(arg1)][arg2].field_0 and poolInfo[arg2].field_1024 - userInfo[address(arg1)][arg2].field_768 > -1 / userInfo[address(arg1)][arg2].field_0:
        revert with 'NH{q', 17
    if (poolInfo[arg2].field_1024 * userInfo[address(arg1)][arg2].field_0) - (userInfo[address(arg1)][arg2].field_768 * userInfo[address(arg1)][arg2].field_0) and poolInfo[arg2].field_256 > -1 / (poolInfo[arg2].field_1024 * userInfo[address(arg1)][arg2].field_0) - (userInfo[address(arg1)][arg2].field_768 * userInfo[address(arg1)][arg2].field_0):
        revert with 'NH{q', 17
    return ((poolInfo[arg2].field_1024 * userInfo[address(arg1)][arg2].field_0 * poolInfo[arg2].field_256) - (userInfo[address(arg1)][arg2].field_768 * userInfo[address(arg1)][arg2].field_0 * poolInfo[arg2].field_256) / 100 / 8760 * 24 * 3600)
}



}
