contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - recoverERC20(address arg1, uint256 arg2)
#  - harvest(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address sub_1d7ec258Address;
uint8 stor3; offset 160
address sub_25087a55Address;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint8 stor6;
mapping of uint256 sub_09a9c5ed;
mapping of uint8 stor8;
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856480;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856481;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856482;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856483;

function poolLength() payable {
    return poolInfo.length
}

function sub_09a9c5ed(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_09a9c5ed[arg1][arg2]
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
           poolInfo[arg1].field_2048
}

function sub_1d7ec258(?) payable {
    return sub_1d7ec258Address
}

function sub_25087a55(?) payable {
    return sub_25087a55Address
}

function approvedContracts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function onlyApprovedContractOrEOAStatus() payable {
    return bool(stor3)
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1ac8ab68(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_1792 < poolInfo[arg1].field_2048:
        revert with 0, 17
    return (poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048)
}

function sub_cab47781(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = address(arg2)
}

function sub_7b925c8b(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= block.timestamp:
        revert with 0, 'pool must start in future'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_512 = arg2
}

function sub_4e12f939(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_1792 < poolInfo[arg1].field_2048:
        revert with 0, 17
    if not poolInfo[arg1].field_1280:
        revert with 0, 18
    return (poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048 / poolInfo[arg1].field_1280)
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

function sub_d419ea81(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 < poolInfo[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'invalid decrease of totalRewardAmount'
    poolInfo[arg1].field_1792 = arg2
}

function modifyApprovedContracts(address[] arg1, bool[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'input length mismatch'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == bool(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + arg1 + 36)])] = uint8(bool(cd[((32 * idx) + arg2 + 36)]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1536:
            if poolInfo[arg1].field_1280:
                if poolInfo[arg1].field_2048 != poolInfo[arg1].field_1792:
                    if block.timestamp < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[arg1].field_512 and poolInfo[arg1].field_1280 > -1 / block.timestamp - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    if poolInfo[arg1].field_1792 < poolInfo[arg1].field_2048:
                        revert with 0, 17
                    if (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) <= poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048:
                        if poolInfo[arg1].field_2048 > !((block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280)):
                            revert with 0, 17
                        poolInfo[arg1].field_2048 = poolInfo[arg1].field_2048 + (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280)
                        if (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) and 10^18 > -1 / (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280):
                            revert with 0, 17
                        if not poolInfo[arg1].field_1536:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^18 * block.timestamp * poolInfo[arg1].field_1280) - (10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1536):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^18 * block.timestamp * poolInfo[arg1].field_1280) - (10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1536
                    else:
                        if poolInfo[arg1].field_2048 > !(poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048):
                            revert with 0, 17
                        poolInfo[arg1].field_2048 = poolInfo[arg1].field_1792
                        if poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048 and 10^18 > -1 / poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048:
                            revert with 0, 17
                        if not poolInfo[arg1].field_1536:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^18 * poolInfo[arg1].field_1792) - (10^18 * poolInfo[arg1].field_2048) / poolInfo[arg1].field_1536):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^18 * poolInfo[arg1].field_1792) - (10^18 * poolInfo[arg1].field_2048) / poolInfo[arg1].field_1536
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.timestamp > poolInfo[idx].field_512:
            if poolInfo[idx].field_1536:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_2048 != poolInfo[idx].field_1792:
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.timestamp - poolInfo[idx].field_512 and poolInfo[idx].field_1280 > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 17
                        if idx >= poolInfo.length:
                            revert with 0, 50
                        mem[0] = 4
                        if poolInfo[idx].field_1792 < poolInfo[idx].field_2048:
                            revert with 0, 17
                        if (block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280) <= poolInfo[idx].field_1792 - poolInfo[idx].field_2048:
                            if poolInfo[idx].field_2048 > !((block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280)):
                                revert with 0, 17
                            poolInfo[idx].field_2048 = poolInfo[idx].field_2048 + (block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280)
                            if (block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280) and 10^18 > -1 / (block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280):
                                revert with 0, 17
                            if not poolInfo[idx].field_1536:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^18 * block.timestamp * poolInfo[idx].field_1280) - (10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_1280) / poolInfo[idx].field_1536):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^18 * block.timestamp * poolInfo[idx].field_1280) - (10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_1280) / poolInfo[idx].field_1536
                        else:
                            if poolInfo[idx].field_2048 > !(poolInfo[idx].field_1792 - poolInfo[idx].field_2048):
                                revert with 0, 17
                            poolInfo[idx].field_2048 = poolInfo[idx].field_1792
                            if poolInfo[idx].field_1792 - poolInfo[idx].field_2048 and 10^18 > -1 / poolInfo[idx].field_1792 - poolInfo[idx].field_2048:
                                revert with 0, 17
                            if not poolInfo[idx].field_1536:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^18 * poolInfo[idx].field_1792) - (10^18 * poolInfo[idx].field_2048) / poolInfo[idx].field_1536):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^18 * poolInfo[idx].field_1792) - (10^18 * poolInfo[idx].field_2048) / poolInfo[idx].field_1536
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_08041d0f(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1536:
            if poolInfo[arg1].field_1280:
                if poolInfo[arg1].field_2048 != poolInfo[arg1].field_1792:
                    if block.timestamp < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[arg1].field_512 and poolInfo[arg1].field_1280 > -1 / block.timestamp - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    if poolInfo[arg1].field_1792 < poolInfo[arg1].field_2048:
                        revert with 0, 17
                    if (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) <= poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048:
                        if poolInfo[arg1].field_2048 > !((block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280)):
                            revert with 0, 17
                        poolInfo[arg1].field_2048 = poolInfo[arg1].field_2048 + (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280)
                        if (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) and 10^18 > -1 / (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280):
                            revert with 0, 17
                        if not poolInfo[arg1].field_1536:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^18 * block.timestamp * poolInfo[arg1].field_1280) - (10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1536):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^18 * block.timestamp * poolInfo[arg1].field_1280) - (10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1536
                    else:
                        if poolInfo[arg1].field_2048 > !(poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048):
                            revert with 0, 17
                        poolInfo[arg1].field_2048 = poolInfo[arg1].field_1792
                        if poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048 and 10^18 > -1 / poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048:
                            revert with 0, 17
                        if not poolInfo[arg1].field_1536:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^18 * poolInfo[arg1].field_1792) - (10^18 * poolInfo[arg1].field_2048) / poolInfo[arg1].field_1536):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^18 * poolInfo[arg1].field_1792) - (10^18 * poolInfo[arg1].field_2048) / poolInfo[arg1].field_1536
        poolInfo[arg1].field_512 = block.timestamp
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_1280 = arg2
}

function sub_ce7ff41e(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg6 == bool(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8[address(arg1)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 <= block.timestamp:
        revert with 0, 'pool must start in future'
    if arg6:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.timestamp > poolInfo[idx].field_512:
                if poolInfo[idx].field_1536:
                    if poolInfo[idx].field_1280:
                        if poolInfo[idx].field_2048 != poolInfo[idx].field_1792:
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.timestamp - poolInfo[idx].field_512 and poolInfo[idx].field_1280 > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 4
                            if poolInfo[idx].field_1792 < poolInfo[idx].field_2048:
                                revert with 0, 17
                            if (block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280) <= poolInfo[idx].field_1792 - poolInfo[idx].field_2048:
                                if poolInfo[idx].field_2048 > !((block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280)):
                                    revert with 0, 17
                                poolInfo[idx].field_2048 = poolInfo[idx].field_2048 + (block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280)
                                if (block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280) and 10^18 > -1 / (block.timestamp * poolInfo[idx].field_1280) - (poolInfo[idx].field_512 * poolInfo[idx].field_1280):
                                    revert with 0, 17
                                if not poolInfo[idx].field_1536:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^18 * block.timestamp * poolInfo[idx].field_1280) - (10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_1280) / poolInfo[idx].field_1536):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^18 * block.timestamp * poolInfo[idx].field_1280) - (10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_1280) / poolInfo[idx].field_1536
                            else:
                                if poolInfo[idx].field_2048 > !(poolInfo[idx].field_1792 - poolInfo[idx].field_2048):
                                    revert with 0, 17
                                poolInfo[idx].field_2048 = poolInfo[idx].field_1792
                                if poolInfo[idx].field_1792 - poolInfo[idx].field_2048 and 10^18 > -1 / poolInfo[idx].field_1792 - poolInfo[idx].field_2048:
                                    revert with 0, 17
                                if not poolInfo[idx].field_1536:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^18 * poolInfo[idx].field_1792) - (10^18 * poolInfo[idx].field_2048) / poolInfo[idx].field_1536):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^18 * poolInfo[idx].field_1792) - (10^18 * poolInfo[idx].field_2048) / poolInfo[idx].field_1536
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor8[address(arg1)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = address(arg1)
    stor8A35[stor4.length] = address(arg2)
    stor8A35[stor4.length] = arg3
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = arg3
    stor8A35[stor4.length] = arg4
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = arg5
    stor8A35[stor4.length] = 0
}

function pendingRewards(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1536:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_512 and poolInfo[arg1].field_1280 > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_1792 < poolInfo[arg1].field_2048:
        revert with 0, 17
    if (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) <= poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048:
        if (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) and 10^18 > -1 / (block.timestamp * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_512 * poolInfo[arg1].field_1280):
            revert with 0, 17
        if not poolInfo[arg1].field_1536:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !((10^18 * block.timestamp * poolInfo[arg1].field_1280) - (10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1536):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + ((10^18 * block.timestamp * poolInfo[arg1].field_1280) - (10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + ((10^18 * block.timestamp * poolInfo[arg1].field_1280) - (10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + ((10^18 * block.timestamp * poolInfo[arg1].field_1280) - (10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048 and 10^18 > -1 / poolInfo[arg1].field_1792 - poolInfo[arg1].field_2048:
        revert with 0, 17
    if not poolInfo[arg1].field_1536:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !((10^18 * poolInfo[arg1].field_1792) - (10^18 * poolInfo[arg1].field_2048) / poolInfo[arg1].field_1536):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + ((10^18 * poolInfo[arg1].field_1792) - (10^18 * poolInfo[arg1].field_2048) / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + ((10^18 * poolInfo[arg1].field_1792) - (10^18 * poolInfo[arg1].field_2048) / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + ((10^18 * poolInfo[arg1].field_1792) - (10^18 * poolInfo[arg1].field_2048) / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}



}
