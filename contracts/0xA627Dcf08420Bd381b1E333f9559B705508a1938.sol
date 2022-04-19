contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1)
#  - joinLobby(uint256 arg1, uint256 arg2)
#  - adminWithdraw()
#
const DRAW = 1


address owner;
array of struct stor1;
address operatorAddress;
uint256 treasury;
uint256 rewardRate;
uint256 treasuryRate;
uint256 minBetAmount;
address tokenAddress;
array of uint256 gamesList;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor99;
array of struct stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779002;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779003;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779004;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779005;
array of uint8 stor80084422859880547211683076133703299733277748156566366325829078699459944779006;

function sub_31bb1895(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(stor10[arg1][arg2])
}

function getTreasury() payable {
    return treasury
}

function gamesList(uint256 arg1) payable {
    return gamesList[arg1][0 len gamesList[arg1].length]
}

function getRewardRate() payable {
    return rewardRate
}

function getMinBetAmount() payable {
    return minBetAmount
}

function owner() payable {
    return owner
}

function getTreasuryRate() payable {
    return treasuryRate
}

function getOperator() payable {
    return operatorAddress
}

function token() payable {
    return tokenAddress
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

function setMinBetAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minBetAmount = arg1
    emit SetMinBetAmount(arg1);
    return 1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit SetOperator(operatorAddress, arg1);
    operatorAddress = arg1
    return 1
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

function sub_b86cc1ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = bool(stor9[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function setRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GameLobby: RewardRate can't be more than 100'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GameLobby: RewardRate can't be less than 1'
    rewardRate = arg1
    if arg1 > 100:
        revert with 0, 'SafeMath: subtraction overflow', 0
    treasuryRate = -arg1 + 100
    emit SetRewardRate(arg1);
    return 1
}

function setTreasuryRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GameLobby: TreasuryRate can't be more than 100'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GameLobby: TreasuryRate can't be less than 1'
    treasuryRate = arg1
    if arg1 > 100:
        revert with 0, 'SafeMath: subtraction overflow', 0
    rewardRate = -arg1 + 100
    emit SetTreasuryRate(arg1);
    return 1
}

function getLobby(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 'GameLobby: lobby does not exist'
    mem[768] = uint256(stor[sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 768
    s = 0
    while stor[(9 * arg1) + ('name', 'stor1', 1) + 1].length + 736 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return 32, uint256(stor1[arg1].field_0), 
           320,
           bool(uint8(stor1[arg1].field_512)),
           address(stor1[arg1].field_512),
           address(stor1[arg1].field_768),
           uint256(stor1[arg1].field_1024),
           uint256(stor1[arg1].field_1280),
           address(stor1[arg1].field_1536),
           uint256(stor1[arg1].field_1792),
           bool(uint8(stor1[arg1].field_2048)),
           stor[(9 * arg1) + ('name', 'stor1', 1) + 1].length,
           mem[768 len ceil32(stor[(9 * arg1) + ('name', 'stor1', 1) + 1].length)]
}

function getGames() payable {
    mem[64] = (32 * gamesList.length) + 128
    mem[96] = gamesList.length
    s = 128
    idx = 0
    while idx < gamesList.length:
        mem[0] = 8
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(gamesList[idx].length) + 32
        mem[_12] = gamesList[idx].length
        mem[0] = idx + sha3(8)
        mem[_12 + 32] = gamesList[idx]
        t = _12 + 32
        u = sha3(mem[0])
        while _12 + gamesList[idx].length > t:
            mem[t + 32] = uint256(stor1[u].field_0)
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _14:
        mem[t] = u + -_13 - 64
        _20 = mem[s]
        _22 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _22:
            mem[v + u + 32] = mem[v + _20 + 32]
            v = v + 32
            continue 
        if ceil32(_22) > _22:
            mem[_22 + u + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_22) + u + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_47ee985f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 9
    if uint8(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]):
        revert with 0, 'GameLobby: game already exist'
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 9
    uint8(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]) = 1
    gamesList.length++
    gamesList[gamesList.length][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    emit CreateGame(string rg1):
                    Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                    mem[arg1.length + 160 len (2 * ceil32(arg1.length)) + -arg1.length + 32],
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_844d1496(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg2 < minBetAmount:
        revert with 0, 'GameLobby: min bet error'
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 9
    if bool(uint8(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])) != 1:
        revert with 0, 'GameLobby: game not found'
    mem[ceil32(arg1.length) + 164] = msg.sender
    mem[ceil32(arg1.length) + 196] = this.address
    mem[ceil32(arg1.length) + 228] = arg2
    mem[ceil32(arg1.length) + 128] = 100
    mem[ceil32(arg1.length) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(arg1.length) + 260] = 32
    mem[ceil32(arg1.length) + 292] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + 324 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 324] = 0
    call tokenAddress.mem[ceil32(arg1.length) + 324 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 328 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(arg1.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg1.length) + 356] == bool(mem[ceil32(arg1.length) + 356])
            if not mem[ceil32(arg1.length) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1.length++
    uint256(stor1[stor1.length].field_0) = stor1.length
    uint256(stor[sha3((9 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)][]) = Array(len=arg1.length, data=arg1[all])
    uint8(storB10E[stor1.length].field_0) = 1
    address(storB10E[stor1.length].field_8) = msg.sender
    Mask(88, 0, storB10E[stor1.length].field_168) = 0
    storB10E[stor1.length] = 0
    storB10E[stor1.length] = 0
    storB10E[stor1.length] = 0
    storB10E[stor1.length] = 0
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = 0
    emit CreateLobby(arg2, stor1.length, sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), msg.sender);
    return stor1.length
}

function closeLobby(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'GameLobby: only operator'
    if arg1 >= stor1.length:
        revert with 0, 'GameLobby: lobby does not exist'
    if bool(uint8(stor1[arg1].field_512)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GameLobby: the lobby is already closed'
    require arg1 < stor1.length
    require arg1 < stor1.length
    if uint256(stor1[arg1].field_1024) > uint256(stor1[arg1].field_1280):
        address(stor1[arg1].field_1536) = address(stor1[arg1].field_520)
        uint8(stor1[arg1].field_512) = 0
        if not uint256(stor1[arg1].field_1792):
            if treasury < treasury:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not 2 * uint256(stor1[arg1].field_1792):
                if treasury < treasury:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                    revert with 0, 'SafeMath: addition overflow'
                treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
        require arg1 < stor1.length
        if not bool(stor1[arg1].field_256):
            mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
            emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), address(stor1[arg1].field_520));
        else:
            if bool(stor1[arg1].field_256) != 1:
                emit CloseLobby(arg1, sha3(mem[160 len -160]), address(stor1[arg1].field_520));
            else:
                idx = 0
                s = 0
                while idx < uint255(stor1[arg1].field_257):
                    mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), address(stor1[arg1].field_520));
    else:
        require arg1 < stor1.length
        if uint256(stor1[arg1].field_1024) < uint256(stor1[arg1].field_1280):
            address(stor1[arg1].field_1536) = address(stor1[arg1].field_768)
            uint8(stor1[arg1].field_512) = 0
            if not uint256(stor1[arg1].field_1792):
                if treasury < treasury:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not 2 * uint256(stor1[arg1].field_1792):
                    if treasury < treasury:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                        revert with 0, 'SafeMath: addition overflow'
                    treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
            require arg1 < stor1.length
            if not bool(stor1[arg1].field_256):
                mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), address(stor1[arg1].field_768));
            else:
                if bool(stor1[arg1].field_256) != 1:
                    emit CloseLobby(arg1, sha3(mem[160 len -160]), address(stor1[arg1].field_768));
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor1[arg1].field_257):
                        mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), address(stor1[arg1].field_768));
        else:
            uint8(stor1[arg1].field_1536) = 1
            Mask(152, 0, stor1[arg1].field_1544) = 0
            uint8(stor1[arg1].field_512) = 0
            if not uint256(stor1[arg1].field_1792):
                if treasury < treasury:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not 2 * uint256(stor1[arg1].field_1792):
                    if treasury < treasury:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                        revert with 0, 'SafeMath: addition overflow'
                    treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
            require arg1 < stor1.length
            if not bool(stor1[arg1].field_256):
                mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), 1);
            else:
                if bool(stor1[arg1].field_256) != 1:
                    emit CloseLobby(arg1, sha3(mem[160 len -160]), 1);
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor1[arg1].field_257):
                        mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), 1);
    return 1
}

function setScore(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if operatorAddress != msg.sender:
        revert with 0, 'GameLobby: only operator'
    if arg1 >= stor1.length:
        revert with 0, 'GameLobby: lobby does not exist'
    if bool(uint8(stor1[arg1].field_512)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GameLobby: the lobby is already closed'
    require arg1 < stor1.length
    if arg3 == address(stor1[arg1].field_520):
        if uint256(stor1[arg1].field_1024):
            revert with 0, 'GameLobby: score already set'
        uint256(stor1[arg1].field_1024) = arg2
    else:
        if address(stor1[arg1].field_768) != arg3:
            revert with 0, 'GameLobby: wrong target'
        if uint256(stor1[arg1].field_1280):
            revert with 0, 'GameLobby: score already set'
        uint256(stor1[arg1].field_1280) = arg2
    if not bool(stor1[arg1].field_256):
        mem[96] = Mask(248, 8, uint256(stor1[arg1].field_256))
        emit SetScore(arg2, arg1, sha3(mem[96 len stor1[arg1].field_257 % 128]), arg3);
        if uint256(stor1[arg1].field_1024) > 0:
            if uint256(stor1[arg1].field_1280) > 0:
                if operatorAddress != msg.sender:
                    revert with 0, 'GameLobby: only operator'
                if arg1 >= stor1.length:
                    revert with 0, 'GameLobby: lobby does not exist'
                if bool(uint8(stor1[arg1].field_512)) != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GameLobby: the lobby is already closed'
                require arg1 < stor1.length
                require arg1 < stor1.length
                if uint256(stor1[arg1].field_1024) > uint256(stor1[arg1].field_1280):
                    address(stor1[arg1].field_1536) = address(stor1[arg1].field_520)
                    uint8(stor1[arg1].field_512) = 0
                    if not uint256(stor1[arg1].field_1792):
                        if treasury < treasury:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not 2 * uint256(stor1[arg1].field_1792):
                            if treasury < treasury:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                                revert with 0, 'SafeMath: addition overflow'
                            treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
                    require arg1 < stor1.length
                    if not bool(stor1[arg1].field_256):
                        mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                        emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), address(stor1[arg1].field_520));
                    else:
                        if bool(stor1[arg1].field_256) != 1:
                            emit CloseLobby(arg1, sha3(mem[160 len -160]), address(stor1[arg1].field_520));
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor1[arg1].field_257):
                                mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), address(stor1[arg1].field_520));
                else:
                    require arg1 < stor1.length
                    if uint256(stor1[arg1].field_1024) < uint256(stor1[arg1].field_1280):
                        address(stor1[arg1].field_1536) = address(stor1[arg1].field_768)
                        uint8(stor1[arg1].field_512) = 0
                        if not uint256(stor1[arg1].field_1792):
                            if treasury < treasury:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not 2 * uint256(stor1[arg1].field_1792):
                                if treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                                treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
                        require arg1 < stor1.length
                        if not bool(stor1[arg1].field_256):
                            mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                            emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), address(stor1[arg1].field_768));
                        else:
                            if bool(stor1[arg1].field_256) != 1:
                                emit CloseLobby(arg1, sha3(mem[160 len -160]), address(stor1[arg1].field_768));
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor1[arg1].field_257):
                                    mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), address(stor1[arg1].field_768));
                    else:
                        uint8(stor1[arg1].field_1536) = 1
                        Mask(152, 0, stor1[arg1].field_1544) = 0
                        uint8(stor1[arg1].field_512) = 0
                        if not uint256(stor1[arg1].field_1792):
                            if treasury < treasury:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not 2 * uint256(stor1[arg1].field_1792):
                                if treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                                treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
                        require arg1 < stor1.length
                        if not bool(stor1[arg1].field_256):
                            mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                            emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), 1);
                        else:
                            if bool(stor1[arg1].field_256) != 1:
                                emit CloseLobby(arg1, sha3(mem[160 len -160]), 1);
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor1[arg1].field_257):
                                    mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), 1);
    else:
        if bool(stor1[arg1].field_256) != 1:
            emit SetScore(arg2, arg1, sha3(mem[96 len -96]), arg3);
            if uint256(stor1[arg1].field_1024) > 0:
                if uint256(stor1[arg1].field_1280) > 0:
                    if operatorAddress != msg.sender:
                        revert with 0, 'GameLobby: only operator'
                    if arg1 >= stor1.length:
                        revert with 0, 'GameLobby: lobby does not exist'
                    if bool(uint8(stor1[arg1].field_512)) != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GameLobby: the lobby is already closed'
                    require arg1 < stor1.length
                    require arg1 < stor1.length
                    if uint256(stor1[arg1].field_1024) > uint256(stor1[arg1].field_1280):
                        address(stor1[arg1].field_1536) = address(stor1[arg1].field_520)
                        uint8(stor1[arg1].field_512) = 0
                        if not uint256(stor1[arg1].field_1792):
                            if treasury < treasury:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not 2 * uint256(stor1[arg1].field_1792):
                                if treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                                treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
                        require arg1 < stor1.length
                        if not bool(stor1[arg1].field_256):
                            mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                            emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), address(stor1[arg1].field_520));
                        else:
                            if bool(stor1[arg1].field_256) != 1:
                                emit CloseLobby(arg1, sha3(mem[160 len -160]), address(stor1[arg1].field_520));
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor1[arg1].field_257):
                                    mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), address(stor1[arg1].field_520));
                    else:
                        require arg1 < stor1.length
                        if uint256(stor1[arg1].field_1024) < uint256(stor1[arg1].field_1280):
                            address(stor1[arg1].field_1536) = address(stor1[arg1].field_768)
                            uint8(stor1[arg1].field_512) = 0
                            if not uint256(stor1[arg1].field_1792):
                                if treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 2 * uint256(stor1[arg1].field_1792):
                                    if treasury < treasury:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                                        revert with 0, 'SafeMath: addition overflow'
                                    treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
                            require arg1 < stor1.length
                            if not bool(stor1[arg1].field_256):
                                mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                                emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), address(stor1[arg1].field_768));
                            else:
                                if bool(stor1[arg1].field_256) != 1:
                                    emit CloseLobby(arg1, sha3(mem[160 len -160]), address(stor1[arg1].field_768));
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor1[arg1].field_257):
                                        mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), address(stor1[arg1].field_768));
                        else:
                            uint8(stor1[arg1].field_1536) = 1
                            Mask(152, 0, stor1[arg1].field_1544) = 0
                            uint8(stor1[arg1].field_512) = 0
                            if not uint256(stor1[arg1].field_1792):
                                if treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 2 * uint256(stor1[arg1].field_1792):
                                    if treasury < treasury:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                                        revert with 0, 'SafeMath: addition overflow'
                                    treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
                            require arg1 < stor1.length
                            if not bool(stor1[arg1].field_256):
                                mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                                emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), 1);
                            else:
                                if bool(stor1[arg1].field_256) != 1:
                                    emit CloseLobby(arg1, sha3(mem[160 len -160]), 1);
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor1[arg1].field_257):
                                        mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), 1);
        else:
            idx = 0
            s = 0
            while idx < uint255(stor1[arg1].field_257):
                mem[idx + 96] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            emit SetScore(arg2, arg1, sha3(mem[96 len uint255(stor1[arg1].field_257)]), arg3);
            if uint256(stor1[arg1].field_1024) > 0:
                if uint256(stor1[arg1].field_1280) > 0:
                    if operatorAddress != msg.sender:
                        revert with 0, 'GameLobby: only operator'
                    if arg1 >= stor1.length:
                        revert with 0, 'GameLobby: lobby does not exist'
                    if bool(uint8(stor1[arg1].field_512)) != 1:
                        revert with 0, 'GameLobby: the lobby is already closed'
                    require arg1 < stor1.length
                    require arg1 < stor1.length
                    if uint256(stor1[arg1].field_1024) > uint256(stor1[arg1].field_1280):
                        address(stor1[arg1].field_1536) = address(stor1[arg1].field_520)
                        uint8(stor1[arg1].field_512) = 0
                        if not uint256(stor1[arg1].field_1792):
                            if treasury < treasury:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 2 * uint256(stor1[arg1].field_1792):
                                if treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                                treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
                        require arg1 < stor1.length
                        if not bool(stor1[arg1].field_256):
                            mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                            emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), address(stor1[arg1].field_520));
                        else:
                            if bool(stor1[arg1].field_256) != 1:
                                emit CloseLobby(arg1, sha3(mem[160 len -160]), address(stor1[arg1].field_520));
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor1[arg1].field_257):
                                    mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), address(stor1[arg1].field_520));
                    else:
                        require arg1 < stor1.length
                        if uint256(stor1[arg1].field_1024) < uint256(stor1[arg1].field_1280):
                            address(stor1[arg1].field_1536) = address(stor1[arg1].field_768)
                            uint8(stor1[arg1].field_512) = 0
                            if not uint256(stor1[arg1].field_1792):
                                if treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not 2 * uint256(stor1[arg1].field_1792):
                                    if treasury < treasury:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                                        revert with 0, 'SafeMath: addition overflow'
                                    treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
                            require arg1 < stor1.length
                            if not bool(stor1[arg1].field_256):
                                mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                                emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), address(stor1[arg1].field_768));
                            else:
                                if bool(stor1[arg1].field_256) != 1:
                                    emit CloseLobby(arg1, sha3(mem[160 len -160]), address(stor1[arg1].field_768));
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor1[arg1].field_257):
                                        mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), address(stor1[arg1].field_768));
                        else:
                            uint8(stor1[arg1].field_1536) = 1
                            Mask(152, 0, stor1[arg1].field_1544) = 0
                            uint8(stor1[arg1].field_512) = 0
                            if not uint256(stor1[arg1].field_1792):
                                if treasury < treasury:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 2 * uint256(stor1[arg1].field_1792) / uint256(stor1[arg1].field_1792) != 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not 2 * uint256(stor1[arg1].field_1792):
                                    if treasury < treasury:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 2 * uint256(stor1[arg1].field_1792) != treasuryRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100) + treasury < treasury:
                                        revert with 0, 'SafeMath: addition overflow'
                                    treasury += treasuryRate * 2 * uint256(stor1[arg1].field_1792) / 100
                            require arg1 < stor1.length
                            if not bool(stor1[arg1].field_256):
                                mem[160] = Mask(248, 8, uint256(stor1[arg1].field_256))
                                emit CloseLobby(arg1, sha3(mem[160 len stor1[arg1].field_257 % 128]), 1);
                            else:
                                if bool(stor1[arg1].field_256) != 1:
                                    emit CloseLobby(arg1, sha3(mem[160 len -160]), 1);
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor1[arg1].field_257):
                                        mem[idx + 160] = uint256(stor[s + sha3((9 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    emit CloseLobby(arg1, sha3(mem[160 len uint255(stor1[arg1].field_257)]), 1);
    return 1
}



}
