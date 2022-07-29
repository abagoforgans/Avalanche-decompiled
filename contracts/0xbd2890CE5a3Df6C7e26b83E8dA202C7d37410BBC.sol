contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#  - stakeFor(address arg1, uint256 arg2)
#  - unstakeAll()
#  - sub_6826bf2c(?)
#  - getReward(address arg1, address arg2)
#  - sub_7bb7510a(?)
#  - stake(uint256 arg1)
#  - sub_e428b5f9(?)
#  - exit()
#  - sub_f7ad417f(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of uint8 stor101;
uint8 paused;
uint256 stor152;
address stakeTokenAddress;
address antTokenAddress;
mapping of uint256 stakeBalanceOf;
uint256 totalStake;
uint256 sub_1054226f;
uint256 sub_97838a59;
uint256 sub_ae1f137a;
mapping of struct sub_324c5359;
array of struct sub_5da9e169;
mapping of struct sub_4a84fd79;
mapping of uint8 stor212;
uint256 sub_b4ad1448;
uint256 sub_aa9f74e1;
uint256 sub_e2d2abe0;
address migratorAddress;
address stor217;
mapping of struct sub_bdbad396;
mapping of uint8 stor219;
address sub_24960050Address;

function sub_1054226f(?) payable {
    return sub_1054226f
}

function sub_24960050(?) payable {
    return sub_24960050Address
}

function sub_324c5359(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_324c5359[address(arg2)][5][address(arg1)].field_0
}

function sub_4a84fd79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4a84fd79[arg1].field_0, sub_4a84fd79[arg1].field_256, sub_4a84fd79[arg1].field_512
}

function antToken() payable {
    return antTokenAddress
}

function stakeToken() payable {
    return stakeTokenAddress
}

function paused() payable {
    return bool(paused)
}

function sub_5da9e169(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5da9e169.length
    return sub_5da9e169[arg1].field_0
}

function migrator() payable {
    return migratorAddress
}

function totalStake() payable {
    return totalStake
}

function owner() payable {
    return owner
}

function sub_97838a59(?) payable {
    return sub_97838a59
}

function sub_aa9f74e1(?) payable {
    return sub_aa9f74e1
}

function sub_ae1f137a(?) payable {
    return sub_ae1f137a
}

function stakeBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeBalanceOf[address(arg1)]
}

function registered(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor212[arg1])
}

function sub_b4ad1448(?) payable {
    return sub_b4ad1448
}

function sub_bdbad396(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_bdbad396[arg1].field_0), sub_bdbad396[arg1].field_256, sub_bdbad396[arg1].field_512
}

function sub_d552c0be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_324c5359[arg1].field_0, 
           sub_324c5359[arg1].field_256,
           sub_324c5359[arg1].field_512,
           sub_324c5359[arg1].field_768,
           sub_324c5359[arg1].field_1024
}

function sub_dacf4bbe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor219[arg1])
}

function sub_e2d2abe0(?) payable {
    return sub_e2d2abe0
}

function sub_ef004053(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_324c5359[address(arg2)][6][address(arg1)].field_0
}

function sub_f5851493(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor212[address(arg1)])
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

function sub_9436e885(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor212[address(arg1)]:
        return 0
    return stakeBalanceOf[address(arg1)]
}

function sub_1bf53fb6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e2d2abe0 = arg1
    emit 0xcab94fff: arg1
}

function sub_29ad1ad0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_aa9f74e1 = arg1
    emit 0xa663a61a: arg1
}

function sub_74af2269(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ae1f137a = arg1
    emit 0x2a4ab068: sub_ae1f137a, arg1
}

function pauseStaking() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function sub_cb5fdae4(?) payable {
    require calldata.size - 4 >= 32
    if not sub_97838a59:
        return 0
    if arg1 and sub_97838a59 > -1 / arg1:
        revert with 0, 17
    return (arg1 * sub_97838a59 / 10^18)
}

function sub_2997717b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_4a84fd79[address(arg1)].field_0:
        return sub_aa9f74e1
    return sub_4a84fd79[address(arg1)].field_256
}

function sub_a9724ded(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_4a84fd79[address(arg1)].field_0:
        return sub_e2d2abe0
    return sub_4a84fd79[address(arg1)].field_512
}

function unpauseStaking() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function calculateStakeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_1054226f:
        return 0
    if arg1 and sub_1054226f > -1 / arg1:
        revert with 0, 17
    return (arg1 * sub_1054226f / 10^18)
}

function sub_5f8f3b38(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor217 = address(arg1)
    emit 0x938cd9d8: address(arg1)
}

function lastTimeRewardApplicable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_324c5359[address(arg1)].field_0 > block.timestamp:
        return block.timestamp
    return sub_324c5359[address(arg1)].field_0
}

function sub_0bc59780(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 10^18:
        revert with 0, 'Wrong fee'
    sub_97838a59 = arg1
    emit 0xb3b8c38c: sub_97838a59, arg1
}

function sub_f18e6a10(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 10^18:
        revert with 0, 'Wrong fee'
    sub_1054226f = arg1
    emit 0x2bc0c614: sub_1054226f, arg1
}

function sub_668c2e47(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(arg1)] = uint8(bool(arg2))
    emit 0xa366e4d9: bool(arg2), address(arg1)
}

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if migratorAddress:
        revert with 0, 'migrator already set'
    migratorAddress = arg1
    emit MigratorSet(arg1);
}

function sub_c867b63e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_24960050Address:
        revert with 0, 'staking v1 already set'
    sub_24960050Address = address(arg1)
    emit 0xd041a908: address(arg1)
}

function getRewardForDuration(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_324c5359[address(arg1)].field_256 and sub_324c5359[address(arg1)].field_512 > -1 / sub_324c5359[address(arg1)].field_256:
        revert with 0, 17
    return (sub_324c5359[address(arg1)].field_256 * sub_324c5359[address(arg1)].field_512 / 10^18)
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

function sub_47539058(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_4a84fd79[address(arg1)].field_0:
        return 0
    if not sub_4a84fd79[address(arg1)].field_0:
        if block.timestamp < sub_e2d2abe0:
            revert with 0, 17
        return block.timestamp - sub_e2d2abe0 >= sub_4a84fd79[address(arg1)].field_0
    if block.timestamp < sub_4a84fd79[address(arg1)].field_512:
        revert with 0, 17
    return block.timestamp - sub_4a84fd79[address(arg1)].field_512 >= sub_4a84fd79[address(arg1)].field_0
}

function sub_4a103104(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_4a84fd79[address(arg1)].field_0:
        return 0
    if not sub_4a84fd79[address(arg1)].field_0:
        if block.timestamp < sub_e2d2abe0:
            revert with 0, 17
        if block.timestamp - sub_e2d2abe0 >= sub_4a84fd79[address(arg1)].field_0:
            return 1, 0
        if sub_4a84fd79[address(arg1)].field_0 < block.timestamp - sub_e2d2abe0:
            revert with 0, 17
        return 1, sub_4a84fd79[address(arg1)].field_0 - block.timestamp + sub_e2d2abe0
    if block.timestamp < sub_4a84fd79[address(arg1)].field_512:
        revert with 0, 17
    if block.timestamp - sub_4a84fd79[address(arg1)].field_512 >= sub_4a84fd79[address(arg1)].field_0:
        return 1, 0
    if sub_4a84fd79[address(arg1)].field_0 < block.timestamp - sub_4a84fd79[address(arg1)].field_512:
        revert with 0, 17
    return 1, sub_4a84fd79[address(arg1)].field_0 - block.timestamp + sub_4a84fd79[address(arg1)].field_512
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'stakeToken cannot be 0x0'
    if not arg2:
        revert with 0, 'got 0x0 address'
    if not uint8(stor0.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor152 = 1
    paused = 0
    stakeTokenAddress = arg1
    antTokenAddress = arg2
    sub_aa9f74e1 = arg3
    sub_e2d2abe0 = arg4
    sub_ae1f137a = arg5
}

function sub_84eb7ae5(?) payable {
    mem[64] = (32 * sub_5da9e169.length) + 128
    mem[96] = sub_5da9e169.length
    if not sub_5da9e169.length:
        mem[(32 * sub_5da9e169.length) + 128] = 32
        mem[(32 * sub_5da9e169.length) + 160] = sub_5da9e169.length
        idx = 0
        s = (32 * sub_5da9e169.length) + 192
        t = 128
        while idx < sub_5da9e169.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_5da9e169.length) + 128
           len (96 * sub_5da9e169.length) + 64
    mem[128] = address(sub_5da9e169.field_0)
    idx = 128
    s = 0
    while (32 * sub_5da9e169.length) + 96 > idx:
        mem[idx + 32] = sub_5da9e169[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_5da9e169.length) + 128] = 32
    mem[(32 * sub_5da9e169.length) + 160] = sub_5da9e169.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_5da9e169.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_5da9e169.length) + -mem[64] + 192
}

function sub_b288b4dc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if block.timestamp >= sub_324c5359[address(arg1)].field_0:
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        return (10^18 * arg2 / arg3)
    if sub_324c5359[address(arg1)].field_0 < block.timestamp:
        revert with 0, 17
    if sub_324c5359[address(arg1)].field_0 - block.timestamp and sub_324c5359[address(arg1)].field_256 > -1 / sub_324c5359[address(arg1)].field_0 - block.timestamp:
        revert with 0, 17
    if arg2 > !((sub_324c5359[address(arg1)].field_0 * sub_324c5359[address(arg1)].field_256) - (block.timestamp * sub_324c5359[address(arg1)].field_256) / 10^18):
        revert with 0, 17
    if arg2 + ((sub_324c5359[address(arg1)].field_0 * sub_324c5359[address(arg1)].field_256) - (block.timestamp * sub_324c5359[address(arg1)].field_256) / 10^18) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    return ((10^18 * arg2) + (10^18 * (sub_324c5359[address(arg1)].field_0 * sub_324c5359[address(arg1)].field_256) - (block.timestamp * sub_324c5359[address(arg1)].field_256) / 10^18) / arg3)
}

function rewardPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_b4ad1448:
        return sub_324c5359[address(arg1)].field_1024
    if sub_324c5359[address(arg1)].field_0 > block.timestamp:
        if block.timestamp < sub_324c5359[address(arg1)].field_768:
            revert with 0, 17
        if block.timestamp - sub_324c5359[address(arg1)].field_768 and sub_324c5359[address(arg1)].field_256 > -1 / block.timestamp - sub_324c5359[address(arg1)].field_768:
            revert with 0, 17
        if not sub_b4ad1448:
            revert with 0, 18
        if sub_324c5359[address(arg1)].field_1024 > !((block.timestamp * sub_324c5359[address(arg1)].field_256) - (sub_324c5359[address(arg1)].field_768 * sub_324c5359[address(arg1)].field_256) / sub_b4ad1448):
            revert with 0, 17
        return (sub_324c5359[address(arg1)].field_1024 + ((block.timestamp * sub_324c5359[address(arg1)].field_256) - (sub_324c5359[address(arg1)].field_768 * sub_324c5359[address(arg1)].field_256) / sub_b4ad1448))
    if sub_324c5359[address(arg1)].field_0 < sub_324c5359[address(arg1)].field_768:
        revert with 0, 17
    if sub_324c5359[address(arg1)].field_0 - sub_324c5359[address(arg1)].field_768 and sub_324c5359[address(arg1)].field_256 > -1 / sub_324c5359[address(arg1)].field_0 - sub_324c5359[address(arg1)].field_768:
        revert with 0, 17
    if not sub_b4ad1448:
        revert with 0, 18
    if sub_324c5359[address(arg1)].field_1024 > !((sub_324c5359[address(arg1)].field_0 * sub_324c5359[address(arg1)].field_256) - (sub_324c5359[address(arg1)].field_768 * sub_324c5359[address(arg1)].field_256) / sub_b4ad1448):
        revert with 0, 17
    return (sub_324c5359[address(arg1)].field_1024 + ((sub_324c5359[address(arg1)].field_0 * sub_324c5359[address(arg1)].field_256) - (sub_324c5359[address(arg1)].field_768 * sub_324c5359[address(arg1)].field_256) / sub_b4ad1448))
}

function sub_ebcd1881(?) payable {
    if not sub_24960050Address:
        revert with 0, 'Legacy contract missing'
    if stor219[msg.sender]:
        revert with 0, 'Already migrated'
    require ext_code.size(sub_24960050Address)
    staticcall sub_24960050Address.0x83e44599 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != sub_e2d2abe0:
        revert with 0, 'Auth period mismatch'
    require ext_code.size(sub_24960050Address)
    staticcall sub_24960050Address.0xa4207401 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_aa9f74e1:
        revert with 0, 'Auth amount mismatch'
    if sub_4a84fd79[address(msg.sender)].field_0:
        if not sub_4a84fd79[address(msg.sender)].field_0:
            if block.timestamp < sub_e2d2abe0:
                revert with 0, 17
            if block.timestamp - sub_e2d2abe0 >= sub_4a84fd79[address(msg.sender)].field_0:
                revert with 0, 'Already staked'
        else:
            if block.timestamp < sub_4a84fd79[address(msg.sender)].field_512:
                revert with 0, 17
            if block.timestamp - sub_4a84fd79[address(msg.sender)].field_512 >= sub_4a84fd79[address(msg.sender)].field_0:
                revert with 0, 'Already staked'
    if stakeBalanceOf[address(msg.sender)]:
        revert with 0, 'Already staked'
    sub_bdbad396[msg.sender].field_0 = 1
    sub_bdbad396[msg.sender].field_512 = block.timestamp
    require ext_code.size(sub_24960050Address)
    staticcall sub_24960050Address.0x47539058 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        sub_bdbad396[msg.sender].field_256 = 0
    else:
        require ext_code.size(sub_24960050Address)
        staticcall sub_24960050Address.0x4a103104 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Insufficient stake in V1'
        sub_bdbad396[msg.sender].field_256 = ext_call.return_data[32]
    emit 0x751ac3fd: sub_bdbad396[msg.sender].field_256, msg.sender
}

function earned(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sub_b4ad1448:
        if sub_324c5359[address(arg2)].field_1024 < sub_324c5359[address(arg2)][5][address(arg1)].field_0:
            revert with 0, 17
        if not stor212[address(arg1)]:
            if False and sub_324c5359[address(arg2)].field_1024 - sub_324c5359[address(arg2)][5][address(arg1)].field_0 > 0:
                revert with 0, 17
            if 0 > !sub_324c5359[address(arg2)][6][address(arg1)].field_0:
                revert with 0, 17
            return sub_324c5359[address(arg2)][6][address(arg1)].field_0
        if stakeBalanceOf[address(arg1)] and sub_324c5359[address(arg2)].field_1024 - sub_324c5359[address(arg2)][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
            revert with 0, 17
        if (sub_324c5359[address(arg2)].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[address(arg2)][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[address(arg2)][6][address(arg1)].field_0:
            revert with 0, 17
        return (((sub_324c5359[address(arg2)].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[address(arg2)][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18) + sub_324c5359[address(arg2)][6][address(arg1)].field_0)
    if sub_324c5359[address(arg2)].field_0 > block.timestamp:
        if block.timestamp < sub_324c5359[address(arg2)].field_768:
            revert with 0, 17
        if block.timestamp - sub_324c5359[address(arg2)].field_768 and sub_324c5359[address(arg2)].field_256 > -1 / block.timestamp - sub_324c5359[address(arg2)].field_768:
            revert with 0, 17
        if not sub_b4ad1448:
            revert with 0, 18
        if sub_324c5359[address(arg2)].field_1024 > !((block.timestamp * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448):
            revert with 0, 17
        if sub_324c5359[address(arg2)].field_1024 + ((block.timestamp * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448) < sub_324c5359[address(arg2)][5][address(arg1)].field_0:
            revert with 0, 17
        if not stor212[address(arg1)]:
            if False and sub_324c5359[address(arg2)].field_1024 + ((block.timestamp * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448) - sub_324c5359[address(arg2)][5][address(arg1)].field_0 > 0:
                revert with 0, 17
            if 0 > !sub_324c5359[address(arg2)][6][address(arg1)].field_0:
                revert with 0, 17
            return sub_324c5359[address(arg2)][6][address(arg1)].field_0
        if stakeBalanceOf[address(arg1)] and sub_324c5359[address(arg2)].field_1024 + ((block.timestamp * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448) - sub_324c5359[address(arg2)][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
            revert with 0, 17
        if (sub_324c5359[address(arg2)].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[address(arg2)][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[address(arg2)][6][address(arg1)].field_0:
            revert with 0, 17
        return (((sub_324c5359[address(arg2)].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[address(arg2)][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18) + sub_324c5359[address(arg2)][6][address(arg1)].field_0)
    if sub_324c5359[address(arg2)].field_0 < sub_324c5359[address(arg2)].field_768:
        revert with 0, 17
    if sub_324c5359[address(arg2)].field_0 - sub_324c5359[address(arg2)].field_768 and sub_324c5359[address(arg2)].field_256 > -1 / sub_324c5359[address(arg2)].field_0 - sub_324c5359[address(arg2)].field_768:
        revert with 0, 17
    if not sub_b4ad1448:
        revert with 0, 18
    if sub_324c5359[address(arg2)].field_1024 > !((sub_324c5359[address(arg2)].field_0 * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448):
        revert with 0, 17
    if sub_324c5359[address(arg2)].field_1024 + ((sub_324c5359[address(arg2)].field_0 * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448) < sub_324c5359[address(arg2)][5][address(arg1)].field_0:
        revert with 0, 17
    if not stor212[address(arg1)]:
        if False and sub_324c5359[address(arg2)].field_1024 + ((sub_324c5359[address(arg2)].field_0 * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448) - sub_324c5359[address(arg2)][5][address(arg1)].field_0 > 0:
            revert with 0, 17
        if 0 > !sub_324c5359[address(arg2)][6][address(arg1)].field_0:
            revert with 0, 17
        return sub_324c5359[address(arg2)][6][address(arg1)].field_0
    if stakeBalanceOf[address(arg1)] and sub_324c5359[address(arg2)].field_1024 + ((sub_324c5359[address(arg2)].field_0 * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448) - sub_324c5359[address(arg2)][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
        revert with 0, 17
    if (sub_324c5359[address(arg2)].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[address(arg2)].field_0 * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[address(arg2)][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[address(arg2)][6][address(arg1)].field_0:
        revert with 0, 17
    return (((sub_324c5359[address(arg2)].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[address(arg2)].field_0 * sub_324c5359[address(arg2)].field_256) - (sub_324c5359[address(arg2)].field_768 * sub_324c5359[address(arg2)].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[address(arg2)][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18) + sub_324c5359[address(arg2)][6][address(arg1)].field_0)
}

function removeReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stakeTokenAddress != arg2:
        idx = 0
        while idx < sub_5da9e169.length:
            mem[0] = 210
            if sub_5da9e169[idx].field_0 == arg2:
                if sub_5da9e169.length < 1:
                    revert with 0, 17
                if sub_5da9e169.length - 1 >= sub_5da9e169.length:
                    revert with 0, 50
                if idx >= sub_5da9e169.length:
                    revert with 0, 50
                sub_5da9e169[idx].field_0 = sub_5da9e169[sub_5da9e169.length].field_0
                if not sub_5da9e169.length:
                    revert with 0, 49
                mem[0] = 210
                sub_5da9e169[sub_5da9e169.length].field_0 = 0
                sub_5da9e169.length--
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_324c5359[address(arg2)].field_0 = 0
        sub_324c5359[address(arg2)].field_256 = 0
        sub_324c5359[address(arg2)].field_512 = 0
        sub_324c5359[address(arg2)].field_768 = 0
        sub_324c5359[address(arg2)].field_1024 = 0
        mem[ceil32(return_data.size) + 132] = arg1
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg2 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardRemoved(ext_call.return_data[0], arg2);
    else:
        if ext_call.return_data[0] < totalStake:
            revert with 0, 17
        idx = 0
        while idx < sub_5da9e169.length:
            mem[0] = 210
            if sub_5da9e169[idx].field_0 == arg2:
                if sub_5da9e169.length < 1:
                    revert with 0, 17
                if sub_5da9e169.length - 1 >= sub_5da9e169.length:
                    revert with 0, 50
                if idx >= sub_5da9e169.length:
                    revert with 0, 50
                sub_5da9e169[idx].field_0 = sub_5da9e169[sub_5da9e169.length].field_0
                if not sub_5da9e169.length:
                    revert with 0, 49
                mem[0] = 210
                sub_5da9e169[sub_5da9e169.length].field_0 = 0
                sub_5da9e169.length--
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_324c5359[address(arg2)].field_0 = 0
        sub_324c5359[address(arg2)].field_256 = 0
        sub_324c5359[address(arg2)].field_512 = 0
        sub_324c5359[address(arg2)].field_768 = 0
        sub_324c5359[address(arg2)].field_1024 = 0
        mem[ceil32(return_data.size) + 132] = arg1
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - totalStake
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - totalStake, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg2 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - totalStake, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - totalStake, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardRemoved((ext_call.return_data[0] - totalStake), arg2);
}

function register() payable {
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    idx = 0
    while idx < sub_5da9e169.length:
        if sub_b4ad1448:
            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
            else:
                if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
        mem[0] = sub_5da9e169[idx].field_0
        mem[32] = 209
        if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
            sub_324c5359[stor210[idx].field_0].field_768 = block.timestamp
        else:
            sub_324c5359[stor210[idx].field_0].field_768 = sub_324c5359[stor210[idx].field_0].field_0
        if msg.sender:
            if not sub_b4ad1448:
                if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0:
                    revert with 0, 17
                if not stor212[address(msg.sender)]:
                    if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > 0:
                        revert with 0, 17
                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                        revert with 0, 17
                    mem[0] = msg.sender
                else:
                    if stakeBalanceOf[address(msg.sender)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > -1 / stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18
            else:
                if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                    if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if not sub_b4ad1448:
                        revert with 0, 18
                    if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0:
                        revert with 0, 17
                    if not stor212[address(msg.sender)]:
                        if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > 0:
                            revert with 0, 17
                        if 0 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                            revert with 0, 17
                        mem[0] = msg.sender
                    else:
                        if stakeBalanceOf[address(msg.sender)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > -1 / stakeBalanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18
                else:
                    if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if not sub_b4ad1448:
                        revert with 0, 18
                    if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0:
                        revert with 0, 17
                    if not stor212[address(msg.sender)]:
                        if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > 0:
                            revert with 0, 17
                        if 0 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                            revert with 0, 17
                        mem[0] = msg.sender
                    else:
                        if stakeBalanceOf[address(msg.sender)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > -1 / stakeBalanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18
            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 5
            sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not sub_4a84fd79[address(msg.sender)].field_0:
        revert with 0, 'account is not authorized'
    if not sub_4a84fd79[address(msg.sender)].field_0:
        if block.timestamp < sub_e2d2abe0:
            revert with 0, 17
        if block.timestamp - sub_e2d2abe0 < sub_4a84fd79[address(msg.sender)].field_0:
            revert with 0, 'account is not authorized'
    else:
        if block.timestamp < sub_4a84fd79[address(msg.sender)].field_512:
            revert with 0, 17
        if block.timestamp - sub_4a84fd79[address(msg.sender)].field_512 < sub_4a84fd79[address(msg.sender)].field_0:
            revert with 0, 'account is not authorized'
    if stor212[address(msg.sender)]:
        revert with 0, 'account already registered'
    stor212[address(msg.sender)] = 1
    if sub_b4ad1448 > !stakeBalanceOf[address(msg.sender)]:
        revert with 0, 17
    sub_b4ad1448 += stakeBalanceOf[address(msg.sender)]
    emit Registered(msg.sender);
    stor152 = 1
}

function sub_42ae6386(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    idx = 0
    while idx < sub_5da9e169.length:
        if sub_b4ad1448:
            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
            else:
                if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
        mem[0] = sub_5da9e169[idx].field_0
        mem[32] = 209
        if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
            sub_324c5359[stor210[idx].field_0].field_768 = block.timestamp
        else:
            sub_324c5359[stor210[idx].field_0].field_768 = sub_324c5359[stor210[idx].field_0].field_0
        if msg.sender:
            if not sub_b4ad1448:
                if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0:
                    revert with 0, 17
                if not stor212[address(msg.sender)]:
                    if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > 0:
                        revert with 0, 17
                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                        revert with 0, 17
                    mem[0] = msg.sender
                else:
                    if stakeBalanceOf[address(msg.sender)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > -1 / stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18
            else:
                if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                    if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if not sub_b4ad1448:
                        revert with 0, 18
                    if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0:
                        revert with 0, 17
                    if not stor212[address(msg.sender)]:
                        if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > 0:
                            revert with 0, 17
                        if 0 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                            revert with 0, 17
                        mem[0] = msg.sender
                    else:
                        if stakeBalanceOf[address(msg.sender)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > -1 / stakeBalanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18
                else:
                    if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if not sub_b4ad1448:
                        revert with 0, 18
                    if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0:
                        revert with 0, 17
                    if not stor212[address(msg.sender)]:
                        if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > 0:
                            revert with 0, 17
                        if 0 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                            revert with 0, 17
                        mem[0] = msg.sender
                    else:
                        if stakeBalanceOf[address(msg.sender)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 > -1 / stakeBalanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_324c5359[stor210[idx].field_0][6][address(msg.sender)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(msg.sender)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(msg.sender)]) - (sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 * stakeBalanceOf[address(msg.sender)]) / 10^18
            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 5
            sub_324c5359[stor210[idx].field_0][5][address(msg.sender)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not sub_24960050Address:
        revert with 0, 'Legacy contract missing'
    if stor219[msg.sender]:
        revert with 0, 'Already migrated'
    require ext_code.size(sub_24960050Address)
    staticcall sub_24960050Address.0x83e44599 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != sub_e2d2abe0:
        revert with 0, 'Auth period mismatch'
    require ext_code.size(sub_24960050Address)
    staticcall sub_24960050Address.0xa4207401 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_aa9f74e1:
        revert with 0, 'Auth amount mismatch'
    if sub_4a84fd79[address(msg.sender)].field_0:
        if not sub_4a84fd79[address(msg.sender)].field_0:
            if block.timestamp < sub_e2d2abe0:
                revert with 0, 17
            if block.timestamp - sub_e2d2abe0 >= sub_4a84fd79[address(msg.sender)].field_0:
                revert with 0, 'Already staked'
        else:
            if block.timestamp < sub_4a84fd79[address(msg.sender)].field_512:
                revert with 0, 17
            if block.timestamp - sub_4a84fd79[address(msg.sender)].field_512 >= sub_4a84fd79[address(msg.sender)].field_0:
                revert with 0, 'Already staked'
    if stakeBalanceOf[address(msg.sender)]:
        revert with 0, 'Already staked'
    if not sub_bdbad396[msg.sender].field_0:
        revert with 0, 'Not registered for migration'
    if block.timestamp < sub_bdbad396[msg.sender].field_512:
        revert with 0, 17
    if block.timestamp - sub_bdbad396[msg.sender].field_512 >= 24 * 3600:
        revert with 0, 'Registration expired'
    if arg1 < sub_aa9f74e1:
        revert with 0, 'Not enough stake'
    stor219[msg.sender] = 1
    if stakeBalanceOf[address(msg.sender)]:
        if sub_e2d2abe0 < sub_bdbad396[msg.sender].field_256:
            revert with 0, 17
        if block.timestamp < sub_e2d2abe0 - sub_bdbad396[msg.sender].field_256:
            revert with 0, 17
        sub_4a84fd79[msg.sender].field_0 = block.timestamp - sub_e2d2abe0 + sub_bdbad396[msg.sender].field_256
        if arg1 <= 0:
            revert with 0, 'cannot stake 0'
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        mem[(2 * ceil32(return_data.size)) + 196] = arg1
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[(2 * ceil32(return_data.size)) + 392] = 0
        call stakeTokenAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                if not mem[(2 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 96] = block.timestamp
        mem[(2 * ceil32(return_data.size)) + 128] = sub_aa9f74e1
        mem[(2 * ceil32(return_data.size)) + 160] = sub_e2d2abe0
        sub_4a84fd79[address(msg.sender)].field_0 = block.timestamp
        sub_4a84fd79[address(msg.sender)].field_256 = sub_aa9f74e1
        sub_4a84fd79[address(msg.sender)].field_512 = sub_e2d2abe0
        if sub_e2d2abe0 < sub_bdbad396[msg.sender].field_256:
            revert with 0, 17
        if block.timestamp < sub_e2d2abe0 - sub_bdbad396[msg.sender].field_256:
            revert with 0, 17
        sub_4a84fd79[msg.sender].field_0 = block.timestamp - sub_e2d2abe0 + sub_bdbad396[msg.sender].field_256
        if arg1 <= 0:
            revert with 0, 'cannot stake 0'
        mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 260] = this.address
        mem[(2 * ceil32(return_data.size)) + 292] = arg1
        mem[(2 * ceil32(return_data.size)) + 192] = 100
        mem[(2 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 224 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 324] = 32
        mem[(2 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 388 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[(2 * ceil32(return_data.size)) + 488] = 0
        call stakeTokenAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 420] == bool(mem[(2 * ceil32(return_data.size)) + 420])
                if not mem[(2 * ceil32(return_data.size)) + 420]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stakeBalanceOf[address(msg.sender)] > !arg1:
        revert with 0, 17
    stakeBalanceOf[address(msg.sender)] += arg1
    if totalStake > !arg1:
        revert with 0, 17
    totalStake += arg1
    emit StakeAdded(arg1, msg.sender, msg.sender);
    require ext_code.size(antTokenAddress)
    call antTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_4a84fd79[address(msg.sender)].field_0:
        if not sub_4a84fd79[address(msg.sender)].field_0:
            if block.timestamp < sub_e2d2abe0:
                revert with 0, 17
            if block.timestamp - sub_e2d2abe0 >= sub_4a84fd79[address(msg.sender)].field_0:
                if not sub_4a84fd79[address(msg.sender)].field_0:
                    revert with 0, 'account is not authorized'
                if not sub_4a84fd79[address(msg.sender)].field_0:
                    if block.timestamp < sub_e2d2abe0:
                        revert with 0, 17
                    if block.timestamp - sub_e2d2abe0 < sub_4a84fd79[address(msg.sender)].field_0:
                        revert with 0, 'account is not authorized'
                else:
                    if block.timestamp < sub_4a84fd79[address(msg.sender)].field_512:
                        revert with 0, 17
                    if block.timestamp - sub_4a84fd79[address(msg.sender)].field_512 < sub_4a84fd79[address(msg.sender)].field_0:
                        revert with 0, 'account is not authorized'
                if stor212[address(msg.sender)]:
                    revert with 0, 'account already registered'
                stor212[address(msg.sender)] = 1
                if sub_b4ad1448 > !stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 17
                sub_b4ad1448 += stakeBalanceOf[address(msg.sender)]
                emit Registered(msg.sender);
        else:
            if block.timestamp < sub_4a84fd79[address(msg.sender)].field_512:
                revert with 0, 17
            if block.timestamp - sub_4a84fd79[address(msg.sender)].field_512 >= sub_4a84fd79[address(msg.sender)].field_0:
                if not sub_4a84fd79[address(msg.sender)].field_0:
                    revert with 0, 'account is not authorized'
                if not sub_4a84fd79[address(msg.sender)].field_0:
                    if block.timestamp < sub_e2d2abe0:
                        revert with 0, 17
                    if block.timestamp - sub_e2d2abe0 < sub_4a84fd79[address(msg.sender)].field_0:
                        revert with 0, 'account is not authorized'
                else:
                    if block.timestamp < sub_4a84fd79[address(msg.sender)].field_512:
                        revert with 0, 17
                    if block.timestamp - sub_4a84fd79[address(msg.sender)].field_512 < sub_4a84fd79[address(msg.sender)].field_0:
                        revert with 0, 'account is not authorized'
                if stor212[address(msg.sender)]:
                    revert with 0, 'account already registered'
                stor212[address(msg.sender)] = 1
                if sub_b4ad1448 > !stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 17
                sub_b4ad1448 += stakeBalanceOf[address(msg.sender)]
                emit Registered(msg.sender);
    if arg2:
        require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        require ext_code.size(stor217)
        call stor217.0x3d13f874 with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x9a462c0f: arg1, sub_bdbad396[msg.sender].field_256, msg.sender
    stor152 = 1
}

function sub_77c68ae1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if paused:
        revert with 0, 'Pausable: paused'
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    idx = 0
    while idx < sub_5da9e169.length:
        if sub_b4ad1448:
            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
            else:
                if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
        mem[0] = sub_5da9e169[idx].field_0
        mem[32] = 209
        if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
            sub_324c5359[stor210[idx].field_0].field_768 = block.timestamp
        else:
            sub_324c5359[stor210[idx].field_0].field_768 = sub_324c5359[stor210[idx].field_0].field_0
        if address(arg1):
            if not sub_b4ad1448:
                if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                    revert with 0, 17
                if not stor212[address(arg1)]:
                    if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                        revert with 0, 17
                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                        revert with 0, 17
                    mem[0] = address(arg1)
                else:
                    if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                        revert with 0, 17
                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
            else:
                if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                    if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if not sub_b4ad1448:
                        revert with 0, 18
                    if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                        revert with 0, 17
                    if not stor212[address(arg1)]:
                        if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                            revert with 0, 17
                        if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                            revert with 0, 17
                        mem[0] = address(arg1)
                    else:
                        if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                else:
                    if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if not sub_b4ad1448:
                        revert with 0, 18
                    if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                        revert with 0, 17
                    if not stor212[address(arg1)]:
                        if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                            revert with 0, 17
                        if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                            revert with 0, 17
                        mem[0] = address(arg1)
                    else:
                        if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 5
            sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_5da9e169.length:
        if sub_b4ad1448:
            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
            else:
                if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
        mem[0] = sub_5da9e169[idx].field_0
        mem[32] = 209
        if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
            sub_324c5359[stor210[idx].field_0].field_768 = block.timestamp
        else:
            sub_324c5359[stor210[idx].field_0].field_768 = sub_324c5359[stor210[idx].field_0].field_0
        if address(arg2):
            if not sub_b4ad1448:
                if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0:
                    revert with 0, 17
                if not stor212[address(arg2)]:
                    if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 > 0:
                        revert with 0, 17
                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg2)].field_0:
                        revert with 0, 17
                    mem[0] = address(arg2)
                else:
                    if stakeBalanceOf[address(arg2)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 > -1 / stakeBalanceOf[address(arg2)]:
                        revert with 0, 17
                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg2)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 * stakeBalanceOf[address(arg2)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg2)].field_0:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    sub_324c5359[stor210[idx].field_0][6][address(arg2)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg2)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 * stakeBalanceOf[address(arg2)]) / 10^18
            else:
                if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                    if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if not sub_b4ad1448:
                        revert with 0, 18
                    if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0:
                        revert with 0, 17
                    if not stor212[address(arg2)]:
                        if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 > 0:
                            revert with 0, 17
                        if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg2)].field_0:
                            revert with 0, 17
                        mem[0] = address(arg2)
                    else:
                        if stakeBalanceOf[address(arg2)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 > -1 / stakeBalanceOf[address(arg2)]:
                            revert with 0, 17
                        if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg2)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg2)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 * stakeBalanceOf[address(arg2)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg2)].field_0:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        sub_324c5359[stor210[idx].field_0][6][address(arg2)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg2)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg2)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 * stakeBalanceOf[address(arg2)]) / 10^18
                else:
                    if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                        revert with 0, 17
                    if not sub_b4ad1448:
                        revert with 0, 18
                    if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                        revert with 0, 17
                    if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0:
                        revert with 0, 17
                    if not stor212[address(arg2)]:
                        if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 > 0:
                            revert with 0, 17
                        if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg2)].field_0:
                            revert with 0, 17
                        mem[0] = address(arg2)
                    else:
                        if stakeBalanceOf[address(arg2)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 > -1 / stakeBalanceOf[address(arg2)]:
                            revert with 0, 17
                        if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg2)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg2)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 * stakeBalanceOf[address(arg2)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg2)].field_0:
                            revert with 0, 17
                        mem[0] = address(arg2)
                        sub_324c5359[stor210[idx].field_0][6][address(arg2)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg2)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg2)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 * stakeBalanceOf[address(arg2)]) / 10^18
            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 5
            sub_324c5359[stor210[idx].field_0][5][address(arg2)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if antTokenAddress != msg.sender:
        revert with 0, 'Caller is not AntToken'
    if address(arg1) != address(arg2):
        if stakeBalanceOf[address(arg2)] > !arg3:
            revert with 0, 17
        if not sub_4a84fd79[address(arg2)].field_0:
            if stakeBalanceOf[address(arg2)] + arg3 < sub_aa9f74e1:
                revert with 0, 'not enough for authorization'
        else:
            if stakeBalanceOf[address(arg2)] + arg3 < sub_4a84fd79[address(arg2)].field_256:
                revert with 0, 'not enough for authorization'
        if arg3 != stakeBalanceOf[address(arg1)]:
            if not sub_4a84fd79[address(arg1)].field_0:
                if arg3 > !sub_aa9f74e1:
                    revert with 0, 17
                if stakeBalanceOf[address(arg1)] < arg3 + sub_aa9f74e1:
                    revert with 0, 'amount breaks authorization'
            else:
                if arg3 > !sub_4a84fd79[address(arg1)].field_256:
                    revert with 0, 17
                if stakeBalanceOf[address(arg1)] < arg3 + sub_4a84fd79[address(arg1)].field_256:
                    revert with 0, 'amount breaks authorization'
            if stor212[address(arg1)]:
                if sub_b4ad1448 < arg3:
                    revert with 0, 17
                sub_b4ad1448 -= arg3
        else:
            sub_4a84fd79[address(arg1)].field_0 = 0
            sub_4a84fd79[address(arg1)].field_256 = 0
            sub_4a84fd79[address(arg1)].field_512 = 0
            if stor212[address(arg1)]:
                if sub_b4ad1448 < stakeBalanceOf[address(arg1)]:
                    revert with 0, 17
                sub_b4ad1448 -= stakeBalanceOf[address(arg1)]
                stor212[address(arg1)] = 0
                emit Unregistered(address(arg1));
        if not stakeBalanceOf[address(arg2)]:
            sub_4a84fd79[address(arg2)].field_0 = block.timestamp
            sub_4a84fd79[address(arg2)].field_256 = sub_aa9f74e1
            sub_4a84fd79[address(arg2)].field_512 = sub_e2d2abe0
        if arg3 <= 0:
            revert with 0, 'cannot restake 0'
        if stakeBalanceOf[address(arg1)] < arg3:
            revert with 0, 17
        stakeBalanceOf[address(arg1)] -= arg3
        if stakeBalanceOf[address(arg2)] > !arg3:
            revert with 0, 17
        stakeBalanceOf[address(arg2)] += arg3
        emit 0xbd90ad44: arg3, address(arg1), address(arg2)
        if stor212[address(arg2)]:
            if sub_b4ad1448 > !arg3:
                revert with 0, 17
            sub_b4ad1448 += arg3
    stor152 = 1
}

function getAllRewards(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    idx = 0
    while idx < sub_5da9e169.length:
        if not sub_b4ad1448:
            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                sub_324c5359[stor210[idx].field_0].field_768 = block.timestamp
                if not arg1:
                    mem[0] = arg1
                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                        mem[0] = arg1
                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                        _3611 = mem[64]
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                        _3613 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3613 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3613 + 36 len 28]
                        mem[64] = _3611 + 164
                        mem[_3611 + 100] = 32
                        mem[_3611 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_5da9e169[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _3631 = mem[_3613]
                        s = 0
                        while s < _3631:
                            mem[s + _3611 + 164] = mem[s + _3613 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3631) > _3631:
                            mem[_3631 + _3611 + 164] = 0
                        call sub_5da9e169[idx].field_0.mem[_3611 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_3611 + 168 len _3631 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_3611 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3611 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _3611 + 232] = mem[idx + _3611 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_3611 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_3611 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                        else:
                            mem[64] = _3611 + ceil32(return_data.size) + 165
                            mem[_3611 + 164] = return_data.size
                            mem[_3611 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3611 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3611 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _3611 + ceil32(return_data.size) + 233] = mem[idx + _3611 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_3611 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_3611 + 196] == bool(mem[_3611 + 196])
                                if not mem[_3611 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_3611 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                else:
                    if not sub_b4ad1448:
                        if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                            revert with 0, 17
                        if not stor212[address(arg1)]:
                            if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                revert with 0, 17
                            if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                revert with 0, 17
                            sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                            mem[0] = arg1
                            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                            if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                _3807 = mem[64]
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                _3833 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_3833 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3833 + 36 len 28]
                                mem[64] = _3807 + 164
                                mem[_3807 + 100] = 32
                                mem[_3807 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(sub_5da9e169[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _3917 = mem[_3833]
                                s = 0
                                while s < _3917:
                                    mem[s + _3807 + 164] = mem[s + _3833 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3917) > _3917:
                                    mem[_3917 + _3807 + 164] = 0
                                call sub_5da9e169[idx].field_0.mem[_3807 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3807 + 168 len _3917 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_3807 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3807 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _3807 + 232] = mem[idx + _3807 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_3807 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[_3807 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                else:
                                    mem[64] = _3807 + ceil32(return_data.size) + 165
                                    mem[_3807 + 164] = return_data.size
                                    mem[_3807 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_3807 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3807 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _3807 + ceil32(return_data.size) + 233] = mem[idx + _3807 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_3807 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_3807 + 196] == bool(mem[_3807 + 196])
                                        if not mem[_3807 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[_3807 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                        else:
                            if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                revert with 0, 17
                            if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                revert with 0, 17
                            sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                            sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                            mem[0] = arg1
                            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                            if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                _3858 = mem[64]
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                _3867 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_3867 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3867 + 36 len 28]
                                mem[64] = _3858 + 164
                                mem[_3858 + 100] = 32
                                mem[_3858 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(sub_5da9e169[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _3957 = mem[_3867]
                                s = 0
                                while s < _3957:
                                    mem[s + _3858 + 164] = mem[s + _3867 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3957) > _3957:
                                    mem[_3957 + _3858 + 164] = 0
                                call sub_5da9e169[idx].field_0.mem[_3858 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3858 + 168 len _3957 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_3858 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3858 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _3858 + 232] = mem[idx + _3858 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_3858 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[_3858 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                else:
                                    mem[64] = _3858 + ceil32(return_data.size) + 165
                                    mem[_3858 + 164] = return_data.size
                                    mem[_3858 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_3858 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3858 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _3858 + ceil32(return_data.size) + 233] = mem[idx + _3858 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_3858 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_3858 + 196] == bool(mem[_3858 + 196])
                                        if not mem[_3858 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[_3858 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                    else:
                        if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                            if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                                revert with 0, 17
                            if not sub_b4ad1448:
                                revert with 0, 18
                            if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                revert with 0, 17
                            if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                revert with 0, 17
                            if not stor212[address(arg1)]:
                                if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                    revert with 0, 17
                                if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4181 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4265 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4265 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4265 + 36 len 28]
                                    mem[64] = _4181 + 164
                                    mem[_4181 + 100] = 32
                                    mem[_4181 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4505 = mem[_4265]
                                    s = 0
                                    while s < _4505:
                                        mem[s + _4181 + 164] = mem[s + _4265 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4505) > _4505:
                                        mem[_4505 + _4181 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4181 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4181 + 168 len _4505 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4181 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4181 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4181 + 232] = mem[idx + _4181 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4181 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4181 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4181 + ceil32(return_data.size) + 165
                                        mem[_4181 + 164] = return_data.size
                                        mem[_4181 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4181 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4181 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4181 + ceil32(return_data.size) + 233] = mem[idx + _4181 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4181 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4181 + 196] == bool(mem[_4181 + 196])
                                            if not mem[_4181 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4181 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                    revert with 0, 17
                                if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4310 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4341 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4341 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4341 + 36 len 28]
                                    mem[64] = _4310 + 164
                                    mem[_4310 + 100] = 32
                                    mem[_4310 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4621 = mem[_4341]
                                    s = 0
                                    while s < _4621:
                                        mem[s + _4310 + 164] = mem[s + _4341 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4621) > _4621:
                                        mem[_4621 + _4310 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4310 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4310 + 168 len _4621 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4310 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4310 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4310 + 232] = mem[idx + _4310 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4310 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4310 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4310 + ceil32(return_data.size) + 165
                                        mem[_4310 + 164] = return_data.size
                                        mem[_4310 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4310 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4310 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4310 + ceil32(return_data.size) + 233] = mem[idx + _4310 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4310 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4310 + 196] == bool(mem[_4310 + 196])
                                            if not mem[_4310 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4310 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                        else:
                            if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                                revert with 0, 17
                            if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                                revert with 0, 17
                            if not sub_b4ad1448:
                                revert with 0, 18
                            if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                revert with 0, 17
                            if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                revert with 0, 17
                            if not stor212[address(arg1)]:
                                if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                    revert with 0, 17
                                if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4184 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4268 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4268 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4268 + 36 len 28]
                                    mem[64] = _4184 + 164
                                    mem[_4184 + 100] = 32
                                    mem[_4184 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4508 = mem[_4268]
                                    s = 0
                                    while s < _4508:
                                        mem[s + _4184 + 164] = mem[s + _4268 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4508) > _4508:
                                        mem[_4508 + _4184 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4184 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4184 + 168 len _4508 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4184 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4184 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4184 + 232] = mem[idx + _4184 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4184 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4184 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4184 + ceil32(return_data.size) + 165
                                        mem[_4184 + 164] = return_data.size
                                        mem[_4184 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4184 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4184 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4184 + ceil32(return_data.size) + 233] = mem[idx + _4184 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4184 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4184 + 196] == bool(mem[_4184 + 196])
                                            if not mem[_4184 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4184 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                    revert with 0, 17
                                if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4312 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4343 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4343 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4343 + 36 len 28]
                                    mem[64] = _4312 + 164
                                    mem[_4312 + 100] = 32
                                    mem[_4312 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4623 = mem[_4343]
                                    s = 0
                                    while s < _4623:
                                        mem[s + _4312 + 164] = mem[s + _4343 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4623) > _4623:
                                        mem[_4623 + _4312 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4312 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4312 + 168 len _4623 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4312 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4312 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4312 + 232] = mem[idx + _4312 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4312 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4312 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4312 + ceil32(return_data.size) + 165
                                        mem[_4312 + 164] = return_data.size
                                        mem[_4312 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4312 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4312 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4312 + ceil32(return_data.size) + 233] = mem[idx + _4312 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4312 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4312 + 196] == bool(mem[_4312 + 196])
                                            if not mem[_4312 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4312 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
            else:
                sub_324c5359[stor210[idx].field_0].field_768 = sub_324c5359[stor210[idx].field_0].field_0
                if not arg1:
                    mem[0] = arg1
                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                        mem[0] = arg1
                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                        _3612 = mem[64]
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                        _3616 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3616 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3616 + 36 len 28]
                        mem[64] = _3612 + 164
                        mem[_3612 + 100] = 32
                        mem[_3612 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_5da9e169[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _3633 = mem[_3616]
                        s = 0
                        while s < _3633:
                            mem[s + _3612 + 164] = mem[s + _3616 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3633) > _3633:
                            mem[_3633 + _3612 + 164] = 0
                        call sub_5da9e169[idx].field_0.mem[_3612 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_3612 + 168 len _3633 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_3612 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3612 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _3612 + 232] = mem[idx + _3612 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_3612 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_3612 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                        else:
                            mem[64] = _3612 + ceil32(return_data.size) + 165
                            mem[_3612 + 164] = return_data.size
                            mem[_3612 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3612 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3612 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _3612 + ceil32(return_data.size) + 233] = mem[idx + _3612 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_3612 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_3612 + 196] == bool(mem[_3612 + 196])
                                if not mem[_3612 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_3612 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                else:
                    if not sub_b4ad1448:
                        if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                            revert with 0, 17
                        if not stor212[address(arg1)]:
                            if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                revert with 0, 17
                            if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                revert with 0, 17
                            sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                            mem[0] = arg1
                            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                            if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                _3818 = mem[64]
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                _3848 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_3848 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3848 + 36 len 28]
                                mem[64] = _3818 + 164
                                mem[_3818 + 100] = 32
                                mem[_3818 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(sub_5da9e169[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _3924 = mem[_3848]
                                s = 0
                                while s < _3924:
                                    mem[s + _3818 + 164] = mem[s + _3848 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3924) > _3924:
                                    mem[_3924 + _3818 + 164] = 0
                                call sub_5da9e169[idx].field_0.mem[_3818 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3818 + 168 len _3924 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_3818 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3818 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _3818 + 232] = mem[idx + _3818 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_3818 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[_3818 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                else:
                                    mem[64] = _3818 + ceil32(return_data.size) + 165
                                    mem[_3818 + 164] = return_data.size
                                    mem[_3818 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_3818 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3818 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _3818 + ceil32(return_data.size) + 233] = mem[idx + _3818 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_3818 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_3818 + 196] == bool(mem[_3818 + 196])
                                        if not mem[_3818 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[_3818 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                        else:
                            if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                revert with 0, 17
                            if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                revert with 0, 17
                            sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                            sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                            mem[0] = arg1
                            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                            if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                _3862 = mem[64]
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                _3869 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_3869 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3869 + 36 len 28]
                                mem[64] = _3862 + 164
                                mem[_3862 + 100] = 32
                                mem[_3862 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(sub_5da9e169[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _3959 = mem[_3869]
                                s = 0
                                while s < _3959:
                                    mem[s + _3862 + 164] = mem[s + _3869 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3959) > _3959:
                                    mem[_3959 + _3862 + 164] = 0
                                call sub_5da9e169[idx].field_0.mem[_3862 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3862 + 168 len _3959 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_3862 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3862 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _3862 + 232] = mem[idx + _3862 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_3862 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[_3862 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                else:
                                    mem[64] = _3862 + ceil32(return_data.size) + 165
                                    mem[_3862 + 164] = return_data.size
                                    mem[_3862 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_3862 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3862 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _3862 + ceil32(return_data.size) + 233] = mem[idx + _3862 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_3862 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_3862 + 196] == bool(mem[_3862 + 196])
                                        if not mem[_3862 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[_3862 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                    else:
                        if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                            if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                                revert with 0, 17
                            if not sub_b4ad1448:
                                revert with 0, 18
                            if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                revert with 0, 17
                            if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                revert with 0, 17
                            if not stor212[address(arg1)]:
                                if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                    revert with 0, 17
                                if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4193 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4279 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4279 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4279 + 36 len 28]
                                    mem[64] = _4193 + 164
                                    mem[_4193 + 100] = 32
                                    mem[_4193 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4527 = mem[_4279]
                                    s = 0
                                    while s < _4527:
                                        mem[s + _4193 + 164] = mem[s + _4279 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4527) > _4527:
                                        mem[_4527 + _4193 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4193 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4193 + 168 len _4527 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4193 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4193 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4193 + 232] = mem[idx + _4193 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4193 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4193 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4193 + ceil32(return_data.size) + 165
                                        mem[_4193 + 164] = return_data.size
                                        mem[_4193 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4193 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4193 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4193 + ceil32(return_data.size) + 233] = mem[idx + _4193 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4193 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4193 + 196] == bool(mem[_4193 + 196])
                                            if not mem[_4193 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4193 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                    revert with 0, 17
                                if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4322 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4353 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4353 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4353 + 36 len 28]
                                    mem[64] = _4322 + 164
                                    mem[_4322 + 100] = 32
                                    mem[_4322 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4633 = mem[_4353]
                                    s = 0
                                    while s < _4633:
                                        mem[s + _4322 + 164] = mem[s + _4353 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4633) > _4633:
                                        mem[_4633 + _4322 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4322 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4322 + 168 len _4633 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4322 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4322 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4322 + 232] = mem[idx + _4322 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4322 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4322 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4322 + ceil32(return_data.size) + 165
                                        mem[_4322 + 164] = return_data.size
                                        mem[_4322 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4322 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4322 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4322 + ceil32(return_data.size) + 233] = mem[idx + _4322 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4322 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4322 + 196] == bool(mem[_4322 + 196])
                                            if not mem[_4322 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4322 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                        else:
                            if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                                revert with 0, 17
                            if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                                revert with 0, 17
                            if not sub_b4ad1448:
                                revert with 0, 18
                            if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                revert with 0, 17
                            if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                revert with 0, 17
                            if not stor212[address(arg1)]:
                                if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                    revert with 0, 17
                                if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4196 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4282 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4282 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4282 + 36 len 28]
                                    mem[64] = _4196 + 164
                                    mem[_4196 + 100] = 32
                                    mem[_4196 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4530 = mem[_4282]
                                    s = 0
                                    while s < _4530:
                                        mem[s + _4196 + 164] = mem[s + _4282 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4530) > _4530:
                                        mem[_4530 + _4196 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4196 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4196 + 168 len _4530 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4196 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4196 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4196 + 232] = mem[idx + _4196 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4196 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4196 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4196 + ceil32(return_data.size) + 165
                                        mem[_4196 + 164] = return_data.size
                                        mem[_4196 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4196 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4196 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4196 + ceil32(return_data.size) + 233] = mem[idx + _4196 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4196 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4196 + 196] == bool(mem[_4196 + 196])
                                            if not mem[_4196 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4196 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                    revert with 0, 17
                                if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4324 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4355 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4355 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4355 + 36 len 28]
                                    mem[64] = _4324 + 164
                                    mem[_4324 + 100] = 32
                                    mem[_4324 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4635 = mem[_4355]
                                    s = 0
                                    while s < _4635:
                                        mem[s + _4324 + 164] = mem[s + _4355 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4635) > _4635:
                                        mem[_4635 + _4324 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4324 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4324 + 168 len _4635 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4324 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4324 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4324 + 232] = mem[idx + _4324 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4324 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4324 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4324 + ceil32(return_data.size) + 165
                                        mem[_4324 + 164] = return_data.size
                                        mem[_4324 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4324 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4324 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4324 + ceil32(return_data.size) + 233] = mem[idx + _4324 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4324 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4324 + 196] == bool(mem[_4324 + 196])
                                            if not mem[_4324 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4324 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
        else:
            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
                if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                    sub_324c5359[stor210[idx].field_0].field_768 = block.timestamp
                    if not arg1:
                        mem[0] = arg1
                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                        if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                            mem[0] = arg1
                            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                            sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                            _3677 = mem[64]
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            _3689 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3689 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3689 + 36 len 28]
                            mem[64] = _3677 + 164
                            mem[_3677 + 100] = 32
                            mem[_3677 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(sub_5da9e169[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _3791 = mem[_3689]
                            s = 0
                            while s < _3791:
                                mem[s + _3677 + 164] = mem[s + _3689 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3791) > _3791:
                                mem[_3791 + _3677 + 164] = 0
                            call sub_5da9e169[idx].field_0.mem[_3677 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3677 + 168 len _3791 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3677 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3677 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3677 + 232] = mem[idx + _3677 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3677 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_3677 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            else:
                                mem[64] = _3677 + ceil32(return_data.size) + 165
                                mem[_3677 + 164] = return_data.size
                                mem[_3677 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3677 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3677 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3677 + ceil32(return_data.size) + 233] = mem[idx + _3677 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3677 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_3677 + 196] == bool(mem[_3677 + 196])
                                    if not mem[_3677 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_3677 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                    else:
                        if not sub_b4ad1448:
                            if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                revert with 0, 17
                            if not stor212[address(arg1)]:
                                if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                    revert with 0, 17
                                if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4145 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4217 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4217 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4217 + 36 len 28]
                                    mem[64] = _4145 + 164
                                    mem[_4145 + 100] = 32
                                    mem[_4145 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4481 = mem[_4217]
                                    s = 0
                                    while s < _4481:
                                        mem[s + _4145 + 164] = mem[s + _4217 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4481) > _4481:
                                        mem[_4481 + _4145 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4145 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4145 + 168 len _4481 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4145 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4145 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4145 + 232] = mem[idx + _4145 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4145 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4145 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4145 + ceil32(return_data.size) + 165
                                        mem[_4145 + 164] = return_data.size
                                        mem[_4145 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4145 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4145 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4145 + ceil32(return_data.size) + 233] = mem[idx + _4145 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4145 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4145 + 196] == bool(mem[_4145 + 196])
                                            if not mem[_4145 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4145 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                    revert with 0, 17
                                if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4296 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4333 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4333 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4333 + 36 len 28]
                                    mem[64] = _4296 + 164
                                    mem[_4296 + 100] = 32
                                    mem[_4296 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4613 = mem[_4333]
                                    s = 0
                                    while s < _4613:
                                        mem[s + _4296 + 164] = mem[s + _4333 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4613) > _4613:
                                        mem[_4613 + _4296 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4296 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4296 + 168 len _4613 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4296 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4296 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4296 + 232] = mem[idx + _4296 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4296 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4296 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4296 + ceil32(return_data.size) + 165
                                        mem[_4296 + 164] = return_data.size
                                        mem[_4296 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4296 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4296 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4296 + ceil32(return_data.size) + 233] = mem[idx + _4296 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4296 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4296 + 196] == bool(mem[_4296 + 196])
                                            if not mem[_4296 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4296 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                        else:
                            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                                if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if not sub_b4ad1448:
                                    revert with 0, 18
                                if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                    revert with 0, 17
                                if not stor212[address(arg1)]:
                                    if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                        revert with 0, 17
                                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _4837 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _4917 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4917 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4917 + 36 len 28]
                                        mem[64] = _4837 + 164
                                        mem[_4837 + 100] = 32
                                        mem[_4837 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5373 = mem[_4917]
                                        s = 0
                                        while s < _5373:
                                            mem[s + _4837 + 164] = mem[s + _4917 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5373) > _5373:
                                            mem[_5373 + _4837 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_4837 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4837 + 168 len _5373 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4837 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4837 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4837 + 232] = mem[idx + _4837 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4837 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4837 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _4837 + ceil32(return_data.size) + 165
                                            mem[_4837 + 164] = return_data.size
                                            mem[_4837 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4837 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4837 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4837 + ceil32(return_data.size) + 233] = mem[idx + _4837 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4837 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4837 + 196] == bool(mem[_4837 + 196])
                                                if not mem[_4837 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4837 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                                else:
                                    if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                        revert with 0, 17
                                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _5014 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _5093 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5093 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5093 + 36 len 28]
                                        mem[64] = _5014 + 164
                                        mem[_5014 + 100] = 32
                                        mem[_5014 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5645 = mem[_5093]
                                        s = 0
                                        while s < _5645:
                                            mem[s + _5014 + 164] = mem[s + _5093 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5645) > _5645:
                                            mem[_5645 + _5014 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_5014 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5014 + 168 len _5645 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5014 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5014 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5014 + 232] = mem[idx + _5014 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5014 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5014 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _5014 + ceil32(return_data.size) + 165
                                            mem[_5014 + 164] = return_data.size
                                            mem[_5014 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5014 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5014 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5014 + ceil32(return_data.size) + 233] = mem[idx + _5014 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5014 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5014 + 196] == bool(mem[_5014 + 196])
                                                if not mem[_5014 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5014 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if not sub_b4ad1448:
                                    revert with 0, 18
                                if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                    revert with 0, 17
                                if not stor212[address(arg1)]:
                                    if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                        revert with 0, 17
                                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _4840 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _4920 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4920 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4920 + 36 len 28]
                                        mem[64] = _4840 + 164
                                        mem[_4840 + 100] = 32
                                        mem[_4840 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5376 = mem[_4920]
                                        s = 0
                                        while s < _5376:
                                            mem[s + _4840 + 164] = mem[s + _4920 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5376) > _5376:
                                            mem[_5376 + _4840 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_4840 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4840 + 168 len _5376 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4840 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4840 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4840 + 232] = mem[idx + _4840 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4840 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4840 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _4840 + ceil32(return_data.size) + 165
                                            mem[_4840 + 164] = return_data.size
                                            mem[_4840 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4840 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4840 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4840 + ceil32(return_data.size) + 233] = mem[idx + _4840 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4840 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4840 + 196] == bool(mem[_4840 + 196])
                                                if not mem[_4840 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4840 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                                else:
                                    if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                        revert with 0, 17
                                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _5016 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _5095 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5095 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5095 + 36 len 28]
                                        mem[64] = _5016 + 164
                                        mem[_5016 + 100] = 32
                                        mem[_5016 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5647 = mem[_5095]
                                        s = 0
                                        while s < _5647:
                                            mem[s + _5016 + 164] = mem[s + _5095 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5647) > _5647:
                                            mem[_5647 + _5016 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_5016 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5016 + 168 len _5647 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5016 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5016 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5016 + 232] = mem[idx + _5016 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5016 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5016 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _5016 + ceil32(return_data.size) + 165
                                            mem[_5016 + 164] = return_data.size
                                            mem[_5016 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5016 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5016 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5016 + ceil32(return_data.size) + 233] = mem[idx + _5016 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5016 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5016 + 196] == bool(mem[_5016 + 196])
                                                if not mem[_5016 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5016 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                else:
                    sub_324c5359[stor210[idx].field_0].field_768 = sub_324c5359[stor210[idx].field_0].field_0
                    if not arg1:
                        mem[0] = arg1
                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                        if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                            mem[0] = arg1
                            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                            sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                            _3678 = mem[64]
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            _3692 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3692 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3692 + 36 len 28]
                            mem[64] = _3678 + 164
                            mem[_3678 + 100] = 32
                            mem[_3678 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(sub_5da9e169[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _3793 = mem[_3692]
                            s = 0
                            while s < _3793:
                                mem[s + _3678 + 164] = mem[s + _3692 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3793) > _3793:
                                mem[_3793 + _3678 + 164] = 0
                            call sub_5da9e169[idx].field_0.mem[_3678 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3678 + 168 len _3793 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3678 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3678 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3678 + 232] = mem[idx + _3678 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3678 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_3678 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            else:
                                mem[64] = _3678 + ceil32(return_data.size) + 165
                                mem[_3678 + 164] = return_data.size
                                mem[_3678 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3678 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3678 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3678 + ceil32(return_data.size) + 233] = mem[idx + _3678 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3678 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_3678 + 196] == bool(mem[_3678 + 196])
                                    if not mem[_3678 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_3678 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                    else:
                        if not sub_b4ad1448:
                            if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                revert with 0, 17
                            if not stor212[address(arg1)]:
                                if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                    revert with 0, 17
                                if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4156 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4232 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4232 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4232 + 36 len 28]
                                    mem[64] = _4156 + 164
                                    mem[_4156 + 100] = 32
                                    mem[_4156 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4488 = mem[_4232]
                                    s = 0
                                    while s < _4488:
                                        mem[s + _4156 + 164] = mem[s + _4232 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4488) > _4488:
                                        mem[_4488 + _4156 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4156 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4156 + 168 len _4488 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4156 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4156 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4156 + 232] = mem[idx + _4156 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4156 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4156 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4156 + ceil32(return_data.size) + 165
                                        mem[_4156 + 164] = return_data.size
                                        mem[_4156 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4156 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4156 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4156 + ceil32(return_data.size) + 233] = mem[idx + _4156 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4156 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4156 + 196] == bool(mem[_4156 + 196])
                                            if not mem[_4156 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4156 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                    revert with 0, 17
                                if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4300 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4335 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4335 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4335 + 36 len 28]
                                    mem[64] = _4300 + 164
                                    mem[_4300 + 100] = 32
                                    mem[_4300 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4615 = mem[_4335]
                                    s = 0
                                    while s < _4615:
                                        mem[s + _4300 + 164] = mem[s + _4335 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4615) > _4615:
                                        mem[_4615 + _4300 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4300 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4300 + 168 len _4615 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4300 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4300 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4300 + 232] = mem[idx + _4300 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4300 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4300 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4300 + ceil32(return_data.size) + 165
                                        mem[_4300 + 164] = return_data.size
                                        mem[_4300 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4300 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4300 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4300 + ceil32(return_data.size) + 233] = mem[idx + _4300 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4300 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4300 + 196] == bool(mem[_4300 + 196])
                                            if not mem[_4300 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4300 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                        else:
                            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                                if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if not sub_b4ad1448:
                                    revert with 0, 18
                                if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                    revert with 0, 17
                                if not stor212[address(arg1)]:
                                    if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                        revert with 0, 17
                                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _4849 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _4931 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4931 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4931 + 36 len 28]
                                        mem[64] = _4849 + 164
                                        mem[_4849 + 100] = 32
                                        mem[_4849 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5395 = mem[_4931]
                                        s = 0
                                        while s < _5395:
                                            mem[s + _4849 + 164] = mem[s + _4931 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5395) > _5395:
                                            mem[_5395 + _4849 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_4849 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4849 + 168 len _5395 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4849 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4849 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4849 + 232] = mem[idx + _4849 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4849 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4849 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _4849 + ceil32(return_data.size) + 165
                                            mem[_4849 + 164] = return_data.size
                                            mem[_4849 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4849 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4849 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4849 + ceil32(return_data.size) + 233] = mem[idx + _4849 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4849 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4849 + 196] == bool(mem[_4849 + 196])
                                                if not mem[_4849 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4849 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                                else:
                                    if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                        revert with 0, 17
                                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _5026 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _5105 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5105 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5105 + 36 len 28]
                                        mem[64] = _5026 + 164
                                        mem[_5026 + 100] = 32
                                        mem[_5026 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5657 = mem[_5105]
                                        s = 0
                                        while s < _5657:
                                            mem[s + _5026 + 164] = mem[s + _5105 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5657) > _5657:
                                            mem[_5657 + _5026 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_5026 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5026 + 168 len _5657 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5026 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5026 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5026 + 232] = mem[idx + _5026 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5026 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5026 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _5026 + ceil32(return_data.size) + 165
                                            mem[_5026 + 164] = return_data.size
                                            mem[_5026 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5026 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5026 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5026 + ceil32(return_data.size) + 233] = mem[idx + _5026 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5026 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5026 + 196] == bool(mem[_5026 + 196])
                                                if not mem[_5026 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5026 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if not sub_b4ad1448:
                                    revert with 0, 18
                                if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                    revert with 0, 17
                                if not stor212[address(arg1)]:
                                    if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                        revert with 0, 17
                                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _4852 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _4934 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4934 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4934 + 36 len 28]
                                        mem[64] = _4852 + 164
                                        mem[_4852 + 100] = 32
                                        mem[_4852 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5398 = mem[_4934]
                                        s = 0
                                        while s < _5398:
                                            mem[s + _4852 + 164] = mem[s + _4934 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5398) > _5398:
                                            mem[_5398 + _4852 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_4852 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4852 + 168 len _5398 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4852 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4852 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4852 + 232] = mem[idx + _4852 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4852 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4852 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _4852 + ceil32(return_data.size) + 165
                                            mem[_4852 + 164] = return_data.size
                                            mem[_4852 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4852 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4852 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4852 + ceil32(return_data.size) + 233] = mem[idx + _4852 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4852 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4852 + 196] == bool(mem[_4852 + 196])
                                                if not mem[_4852 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4852 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                                else:
                                    if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                        revert with 0, 17
                                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _5028 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _5107 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5107 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5107 + 36 len 28]
                                        mem[64] = _5028 + 164
                                        mem[_5028 + 100] = 32
                                        mem[_5028 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5659 = mem[_5107]
                                        s = 0
                                        while s < _5659:
                                            mem[s + _5028 + 164] = mem[s + _5107 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5659) > _5659:
                                            mem[_5659 + _5028 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_5028 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5028 + 168 len _5659 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5028 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5028 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5028 + 232] = mem[idx + _5028 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5028 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5028 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _5028 + ceil32(return_data.size) + 165
                                            mem[_5028 + 164] = return_data.size
                                            mem[_5028 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5028 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5028 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5028 + ceil32(return_data.size) + 233] = mem[idx + _5028 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5028 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5028 + 196] == bool(mem[_5028 + 196])
                                                if not mem[_5028 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5028 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
            else:
                if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                    revert with 0, 17
                if not sub_b4ad1448:
                    revert with 0, 18
                if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                    revert with 0, 17
                sub_324c5359[stor210[idx].field_0].field_1024 += (sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448
                if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                    sub_324c5359[stor210[idx].field_0].field_768 = block.timestamp
                    if not arg1:
                        mem[0] = arg1
                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                        if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                            mem[0] = arg1
                            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                            sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                            _3679 = mem[64]
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            _3695 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3695 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3695 + 36 len 28]
                            mem[64] = _3679 + 164
                            mem[_3679 + 100] = 32
                            mem[_3679 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(sub_5da9e169[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _3795 = mem[_3695]
                            s = 0
                            while s < _3795:
                                mem[s + _3679 + 164] = mem[s + _3695 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3795) > _3795:
                                mem[_3795 + _3679 + 164] = 0
                            call sub_5da9e169[idx].field_0.mem[_3679 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3679 + 168 len _3795 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3679 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3679 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3679 + 232] = mem[idx + _3679 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3679 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_3679 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            else:
                                mem[64] = _3679 + ceil32(return_data.size) + 165
                                mem[_3679 + 164] = return_data.size
                                mem[_3679 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3679 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3679 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3679 + ceil32(return_data.size) + 233] = mem[idx + _3679 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3679 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_3679 + 196] == bool(mem[_3679 + 196])
                                    if not mem[_3679 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_3679 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                    else:
                        if not sub_b4ad1448:
                            if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                revert with 0, 17
                            if not stor212[address(arg1)]:
                                if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                    revert with 0, 17
                                if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4167 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4247 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4247 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4247 + 36 len 28]
                                    mem[64] = _4167 + 164
                                    mem[_4167 + 100] = 32
                                    mem[_4167 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4495 = mem[_4247]
                                    s = 0
                                    while s < _4495:
                                        mem[s + _4167 + 164] = mem[s + _4247 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4495) > _4495:
                                        mem[_4495 + _4167 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4167 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4167 + 168 len _4495 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4167 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4167 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4167 + 232] = mem[idx + _4167 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4167 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4167 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4167 + ceil32(return_data.size) + 165
                                        mem[_4167 + 164] = return_data.size
                                        mem[_4167 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4167 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4167 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4167 + ceil32(return_data.size) + 233] = mem[idx + _4167 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4167 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4167 + 196] == bool(mem[_4167 + 196])
                                            if not mem[_4167 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4167 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                    revert with 0, 17
                                if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4304 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4337 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4337 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4337 + 36 len 28]
                                    mem[64] = _4304 + 164
                                    mem[_4304 + 100] = 32
                                    mem[_4304 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4617 = mem[_4337]
                                    s = 0
                                    while s < _4617:
                                        mem[s + _4304 + 164] = mem[s + _4337 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4617) > _4617:
                                        mem[_4617 + _4304 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4304 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4304 + 168 len _4617 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4304 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4304 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4304 + 232] = mem[idx + _4304 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4304 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4304 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4304 + ceil32(return_data.size) + 165
                                        mem[_4304 + 164] = return_data.size
                                        mem[_4304 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4304 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4304 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4304 + ceil32(return_data.size) + 233] = mem[idx + _4304 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4304 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4304 + 196] == bool(mem[_4304 + 196])
                                            if not mem[_4304 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4304 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                        else:
                            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                                if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if not sub_b4ad1448:
                                    revert with 0, 18
                                if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                    revert with 0, 17
                                if not stor212[address(arg1)]:
                                    if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                        revert with 0, 17
                                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _4861 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _4945 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4945 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4945 + 36 len 28]
                                        mem[64] = _4861 + 164
                                        mem[_4861 + 100] = 32
                                        mem[_4861 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5417 = mem[_4945]
                                        s = 0
                                        while s < _5417:
                                            mem[s + _4861 + 164] = mem[s + _4945 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5417) > _5417:
                                            mem[_5417 + _4861 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_4861 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4861 + 168 len _5417 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4861 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4861 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4861 + 232] = mem[idx + _4861 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4861 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4861 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _4861 + ceil32(return_data.size) + 165
                                            mem[_4861 + 164] = return_data.size
                                            mem[_4861 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4861 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4861 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4861 + ceil32(return_data.size) + 233] = mem[idx + _4861 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4861 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4861 + 196] == bool(mem[_4861 + 196])
                                                if not mem[_4861 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4861 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                                else:
                                    if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                        revert with 0, 17
                                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _5038 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _5117 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5117 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5117 + 36 len 28]
                                        mem[64] = _5038 + 164
                                        mem[_5038 + 100] = 32
                                        mem[_5038 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5669 = mem[_5117]
                                        s = 0
                                        while s < _5669:
                                            mem[s + _5038 + 164] = mem[s + _5117 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5669) > _5669:
                                            mem[_5669 + _5038 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_5038 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5038 + 168 len _5669 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5038 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5038 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5038 + 232] = mem[idx + _5038 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5038 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5038 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _5038 + ceil32(return_data.size) + 165
                                            mem[_5038 + 164] = return_data.size
                                            mem[_5038 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5038 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5038 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5038 + ceil32(return_data.size) + 233] = mem[idx + _5038 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5038 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5038 + 196] == bool(mem[_5038 + 196])
                                                if not mem[_5038 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5038 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if not sub_b4ad1448:
                                    revert with 0, 18
                                if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                    revert with 0, 17
                                if not stor212[address(arg1)]:
                                    if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                        revert with 0, 17
                                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _4864 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _4948 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4948 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4948 + 36 len 28]
                                        mem[64] = _4864 + 164
                                        mem[_4864 + 100] = 32
                                        mem[_4864 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5420 = mem[_4948]
                                        s = 0
                                        while s < _5420:
                                            mem[s + _4864 + 164] = mem[s + _4948 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5420) > _5420:
                                            mem[_5420 + _4864 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_4864 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4864 + 168 len _5420 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4864 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4864 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4864 + 232] = mem[idx + _4864 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4864 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4864 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _4864 + ceil32(return_data.size) + 165
                                            mem[_4864 + 164] = return_data.size
                                            mem[_4864 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4864 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4864 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4864 + ceil32(return_data.size) + 233] = mem[idx + _4864 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4864 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4864 + 196] == bool(mem[_4864 + 196])
                                                if not mem[_4864 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4864 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                                else:
                                    if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                        revert with 0, 17
                                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _5040 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _5119 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5119 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5119 + 36 len 28]
                                        mem[64] = _5040 + 164
                                        mem[_5040 + 100] = 32
                                        mem[_5040 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5671 = mem[_5119]
                                        s = 0
                                        while s < _5671:
                                            mem[s + _5040 + 164] = mem[s + _5119 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5671) > _5671:
                                            mem[_5671 + _5040 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_5040 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5040 + 168 len _5671 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5040 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5040 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5040 + 232] = mem[idx + _5040 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5040 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5040 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _5040 + ceil32(return_data.size) + 165
                                            mem[_5040 + 164] = return_data.size
                                            mem[_5040 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5040 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5040 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5040 + ceil32(return_data.size) + 233] = mem[idx + _5040 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5040 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5040 + 196] == bool(mem[_5040 + 196])
                                                if not mem[_5040 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5040 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                else:
                    sub_324c5359[stor210[idx].field_0].field_768 = sub_324c5359[stor210[idx].field_0].field_0
                    if not arg1:
                        mem[0] = arg1
                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                        if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                            mem[0] = arg1
                            mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                            sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                            _3680 = mem[64]
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            _3698 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3698 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3698 + 36 len 28]
                            mem[64] = _3680 + 164
                            mem[_3680 + 100] = 32
                            mem[_3680 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(sub_5da9e169[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _3797 = mem[_3698]
                            s = 0
                            while s < _3797:
                                mem[s + _3680 + 164] = mem[s + _3698 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3797) > _3797:
                                mem[_3797 + _3680 + 164] = 0
                            call sub_5da9e169[idx].field_0.mem[_3680 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3680 + 168 len _3797 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3680 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3680 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3680 + 232] = mem[idx + _3680 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3680 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_3680 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            else:
                                mem[64] = _3680 + ceil32(return_data.size) + 165
                                mem[_3680 + 164] = return_data.size
                                mem[_3680 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3680 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3680 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3680 + ceil32(return_data.size) + 233] = mem[idx + _3680 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3680 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_3680 + 196] == bool(mem[_3680 + 196])
                                    if not mem[_3680 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_3680 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                            emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                    else:
                        if not sub_b4ad1448:
                            if sub_324c5359[stor210[idx].field_0].field_1024 < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                revert with 0, 17
                            if not stor212[address(arg1)]:
                                if False and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                    revert with 0, 17
                                if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4178 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4262 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4262 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4262 + 36 len 28]
                                    mem[64] = _4178 + 164
                                    mem[_4178 + 100] = 32
                                    mem[_4178 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4502 = mem[_4262]
                                    s = 0
                                    while s < _4502:
                                        mem[s + _4178 + 164] = mem[s + _4262 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4502) > _4502:
                                        mem[_4502 + _4178 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4178 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4178 + 168 len _4502 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4178 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4178 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4178 + 232] = mem[idx + _4178 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4178 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4178 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4178 + ceil32(return_data.size) + 165
                                        mem[_4178 + 164] = return_data.size
                                        mem[_4178 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4178 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4178 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4178 + ceil32(return_data.size) + 233] = mem[idx + _4178 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4178 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4178 + 196] == bool(mem[_4178 + 196])
                                            if not mem[_4178 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4178 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                    revert with 0, 17
                                if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    revert with 0, 17
                                sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                mem[0] = arg1
                                mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                    _4308 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    _4339 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4339 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4339 + 36 len 28]
                                    mem[64] = _4308 + 164
                                    mem[_4308 + 100] = 32
                                    mem[_4308 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(sub_5da9e169[idx].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    _4619 = mem[_4339]
                                    s = 0
                                    while s < _4619:
                                        mem[s + _4308 + 164] = mem[s + _4339 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_4619) > _4619:
                                        mem[_4619 + _4308 + 164] = 0
                                    call sub_5da9e169[idx].field_0.mem[_4308 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4308 + 168 len _4619 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4308 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4308 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4308 + 232] = mem[idx + _4308 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4308 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4308 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    else:
                                        mem[64] = _4308 + ceil32(return_data.size) + 165
                                        mem[_4308 + 164] = return_data.size
                                        mem[_4308 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4308 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4308 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4308 + ceil32(return_data.size) + 233] = mem[idx + _4308 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4308 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4308 + 196] == bool(mem[_4308 + 196])
                                            if not mem[_4308 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_4308 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                    emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                        else:
                            if sub_324c5359[stor210[idx].field_0].field_0 > block.timestamp:
                                if block.timestamp < sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / block.timestamp - sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if not sub_b4ad1448:
                                    revert with 0, 18
                                if sub_324c5359[stor210[idx].field_0].field_1024 > !((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                    revert with 0, 17
                                if not stor212[address(arg1)]:
                                    if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                        revert with 0, 17
                                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _4873 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _4959 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4959 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4959 + 36 len 28]
                                        mem[64] = _4873 + 164
                                        mem[_4873 + 100] = 32
                                        mem[_4873 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5439 = mem[_4959]
                                        s = 0
                                        while s < _5439:
                                            mem[s + _4873 + 164] = mem[s + _4959 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5439) > _5439:
                                            mem[_5439 + _4873 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_4873 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4873 + 168 len _5439 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4873 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4873 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4873 + 232] = mem[idx + _4873 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4873 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4873 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _4873 + ceil32(return_data.size) + 165
                                            mem[_4873 + 164] = return_data.size
                                            mem[_4873 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4873 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4873 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4873 + ceil32(return_data.size) + 233] = mem[idx + _4873 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4873 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4873 + 196] == bool(mem[_4873 + 196])
                                                if not mem[_4873 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4873 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                                else:
                                    if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                        revert with 0, 17
                                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((block.timestamp * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _5050 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _5129 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5129 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5129 + 36 len 28]
                                        mem[64] = _5050 + 164
                                        mem[_5050 + 100] = 32
                                        mem[_5050 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5681 = mem[_5129]
                                        s = 0
                                        while s < _5681:
                                            mem[s + _5050 + 164] = mem[s + _5129 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5681) > _5681:
                                            mem[_5681 + _5050 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_5050 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5050 + 168 len _5681 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5050 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5050 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5050 + 232] = mem[idx + _5050 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5050 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5050 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _5050 + ceil32(return_data.size) + 165
                                            mem[_5050 + 164] = return_data.size
                                            mem[_5050 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5050 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5050 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5050 + ceil32(return_data.size) + 233] = mem[idx + _5050 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5050 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5050 + 196] == bool(mem[_5050 + 196])
                                                if not mem[_5050 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5050 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                            else:
                                if sub_324c5359[stor210[idx].field_0].field_0 < sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768 and sub_324c5359[stor210[idx].field_0].field_256 > -1 / sub_324c5359[stor210[idx].field_0].field_0 - sub_324c5359[stor210[idx].field_0].field_768:
                                    revert with 0, 17
                                if not sub_b4ad1448:
                                    revert with 0, 18
                                if sub_324c5359[stor210[idx].field_0].field_1024 > !((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448):
                                    revert with 0, 17
                                if sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) < sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0:
                                    revert with 0, 17
                                if not stor212[address(arg1)]:
                                    if False and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > 0:
                                        revert with 0, 17
                                    if 0 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _4876 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _4962 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4962 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4962 + 36 len 28]
                                        mem[64] = _4876 + 164
                                        mem[_4876 + 100] = 32
                                        mem[_4876 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5442 = mem[_4962]
                                        s = 0
                                        while s < _5442:
                                            mem[s + _4876 + 164] = mem[s + _4962 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5442) > _5442:
                                            mem[_5442 + _4876 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_4876 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4876 + 168 len _5442 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4876 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4876 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4876 + 232] = mem[idx + _4876 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4876 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4876 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _4876 + ceil32(return_data.size) + 165
                                            mem[_4876 + 164] = return_data.size
                                            mem[_4876 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4876 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4876 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _4876 + ceil32(return_data.size) + 233] = mem[idx + _4876 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4876 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_4876 + 196] == bool(mem[_4876 + 196])
                                                if not mem[_4876 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_4876 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
                                else:
                                    if stakeBalanceOf[address(arg1)] and sub_324c5359[stor210[idx].field_0].field_1024 + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448) - sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 > -1 / stakeBalanceOf[address(arg1)]:
                                        revert with 0, 17
                                    if (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18 > !sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        revert with 0, 17
                                    sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 += (sub_324c5359[stor210[idx].field_0].field_1024 * stakeBalanceOf[address(arg1)]) + ((sub_324c5359[stor210[idx].field_0].field_0 * sub_324c5359[stor210[idx].field_0].field_256) - (sub_324c5359[stor210[idx].field_0].field_768 * sub_324c5359[stor210[idx].field_0].field_256) / sub_b4ad1448 * stakeBalanceOf[address(arg1)]) - (sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 * stakeBalanceOf[address(arg1)]) / 10^18
                                    sub_324c5359[stor210[idx].field_0][5][address(arg1)].field_0 = sub_324c5359[stor210[idx].field_0].field_1024
                                    mem[0] = arg1
                                    mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                    if sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0:
                                        mem[0] = arg1
                                        mem[32] = sha3(sub_5da9e169[idx].field_0, 209) + 6
                                        sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0 = 0
                                        _5052 = mem[64]
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        _5131 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5131 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5131 + 36 len 28]
                                        mem[64] = _5052 + 164
                                        mem[_5052 + 100] = 32
                                        mem[_5052 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_5da9e169[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5683 = mem[_5131]
                                        s = 0
                                        while s < _5683:
                                            mem[s + _5052 + 164] = mem[s + _5131 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5683) > _5683:
                                            mem[_5683 + _5052 + 164] = 0
                                        call sub_5da9e169[idx].field_0.mem[_5052 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5052 + 168 len _5683 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5052 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5052 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5052 + 232] = mem[idx + _5052 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5052 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5052 + 164] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        else:
                                            mem[64] = _5052 + ceil32(return_data.size) + 165
                                            mem[_5052 + 164] = return_data.size
                                            mem[_5052 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5052 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5052 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5052 + ceil32(return_data.size) + 233] = mem[idx + _5052 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5052 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5052 + 196] == bool(mem[_5052 + 196])
                                                if not mem[_5052 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5052 + ceil32(return_data.size) + 165] = sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0
                                        emit RewardClaimed(sub_324c5359[stor210[idx].field_0][6][address(arg1)].field_0, sub_5da9e169[idx].field_0, arg1, arg1);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor152 = 1
}



}
