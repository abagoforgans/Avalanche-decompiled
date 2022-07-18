contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - withdrawAll()
#  - sub_a65a79fd(?)
#  - stake(uint256 arg1)
#  - claimReward()
#  - depositTokens(uint256 arg1)
#
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
address stakeTokenAddress;
address rewardTokenAddress;
uint256 apy;
uint256 tokenSupply;
uint256 totalStaked;
uint8 stakeOn;
uint8 withdrawOn; offset 8
uint256 stor7; offset 8
mapping of struct sub_25aea53f;
array of address sub_2322a017;

function withdrawOn() payable {
    return bool(withdrawOn)
}

function sub_2322a017(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_2322a017.length
    return sub_2322a017[arg1]
}

function sub_25aea53f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_25aea53f[address(arg1)].field_512
}

function stakeOn() payable {
    return bool(stakeOn)
}

function apy() payable {
    return apy
}

function rewardsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_25aea53f[address(arg1)].field_256
}

function stakeToken() payable {
    return stakeTokenAddress
}

function paused() payable {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_25aea53f[address(arg1)].field_0
}

function tokenSupply() payable {
    return tokenSupply
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function rewardToken() payable {
    return rewardTokenAddress
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

function setDisableStake(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakeOn = uint8(arg1)
}

function setDisableWithdraw(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = Mask(248, 0, arg1)
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor1.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor1.field_160) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor1.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor1.field_160) = 0
    emit Unpaused(msg.sender);
}

function changeRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    rewardTokenAddress = arg1
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

function pendingRewardsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_25aea53f[address(arg1)].field_0 and apy > -1 / sub_25aea53f[address(arg1)].field_0:
        revert with 'NH{q', 17
    if block.timestamp < sub_25aea53f[address(arg1)].field_512:
        revert with 'NH{q', 17
    if sub_25aea53f[address(arg1)].field_0 * apy / 100 / 8736 * 24 * 3600 and block.timestamp - sub_25aea53f[address(arg1)].field_512 > -1 / sub_25aea53f[address(arg1)].field_0 * apy / 100 / 8736 * 24 * 3600:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_25aea53f[address(arg1)].field_0 * apy / 100 / 8736 * 24 * 3600) - (sub_25aea53f[address(arg1)].field_512 * sub_25aea53f[address(arg1)].field_0 * apy / 100 / 8736 * 24 * 3600))
}

function getUserList() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_2322a017.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_2322a017.length
    mem[64] = (32 * sub_2322a017.length) + 128
    if sub_2322a017.length:
        mem[128 len 32 * sub_2322a017.length] = call.data[calldata.size len 32 * sub_2322a017.length]
    idx = 0
    while idx < sub_2322a017.length:
        mem[0] = 9
        if idx >= sub_2322a017.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = sub_2322a017[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * sub_2322a017.length) + 128] = 32
    mem[(32 * sub_2322a017.length) + 160] = sub_2322a017.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_2322a017.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_2322a017.length) + -mem[64] + 192
}

function sub_3940b587(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Invalid Apy!'
    idx = 0
    while idx < sub_2322a017.length:
        if sub_25aea53f[stor9[idx]].field_0 and apy > -1 / sub_25aea53f[stor9[idx]].field_0:
            revert with 'NH{q', 17
        if block.timestamp < sub_25aea53f[stor9[idx]].field_512:
            revert with 'NH{q', 17
        if sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600 and block.timestamp - sub_25aea53f[stor9[idx]].field_512 > -1 / sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600:
            revert with 'NH{q', 17
        if idx >= sub_2322a017.length:
            revert with 'NH{q', 50
        if sub_25aea53f[stor9[idx]].field_256 > (-1 * block.timestamp * sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600) + (sub_25aea53f[stor9[idx]].field_512 * sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_25aea53f[stor9[idx]].field_256 = sub_25aea53f[stor9[idx]].field_256 + (block.timestamp * sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600) - (sub_25aea53f[stor9[idx]].field_512 * sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600)
        if idx >= sub_2322a017.length:
            revert with 'NH{q', 50
        mem[0] = sub_2322a017[idx]
        mem[32] = 8
        sub_25aea53f[stor9[idx]].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    apy = arg1
}

function getTotalPendingRewards() payable {
    idx = 0
    s = 0
    while idx < sub_2322a017.length:
        if sub_25aea53f[stor9[idx]].field_0 and apy > -1 / sub_25aea53f[stor9[idx]].field_0:
            revert with 'NH{q', 17
        mem[0] = sub_2322a017[idx]
        mem[32] = 8
        if block.timestamp < sub_25aea53f[stor9[idx]].field_512:
            revert with 'NH{q', 17
        if sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600 and block.timestamp - sub_25aea53f[stor9[idx]].field_512 > -1 / sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600:
            revert with 'NH{q', 17
        if s > (-1 * block.timestamp * sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600) + (sub_25aea53f[stor9[idx]].field_512 * sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (block.timestamp * sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600) - (sub_25aea53f[stor9[idx]].field_512 * sub_25aea53f[stor9[idx]].field_0 * apy / 100 / 8736 * 24 * 3600)
        continue 
    return (s * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length * sub_2322a017.length)
}



}
