contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - recoverERC20(address arg1, uint256 arg2)
#  - withdrawExpiredLocks()
#  - stake(uint256 arg1, bool arg2)
#  - notifyRewardAmount(address arg1, uint256 arg2)
#  - emergencyWithdraw()
#  - _fallback()
#
const lockDuration = (1344 * 24 * 3600)

const rewardsDuration = (168 * 24 * 3600)


address owner;
address stakingTokenAddress;
address sub_6b61a172Address;
address genesisNFTAddress;
array of address rewardTokens;
mapping of struct rewardData;
uint8 paused;
uint8 sub_c4408c8a; offset 8
uint256 stor7; offset 8
uint256 startTimestamp;
array of address sub_41ac34e5;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of struct stor14;
uint256 totalSupply;
uint256 lockedSupply;
uint256 sub_50d6b5e3;
uint256 sub_85532aa7;
mapping of struct totalBalance;
array of struct stor20;
array of struct stor21;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function totalSupply() {
    return totalSupply
}

function rewardDistributors(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor11[arg1][arg2])
}

function sub_41ac34e5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_41ac34e5.length
    return sub_41ac34e5[arg1]
}

function rewardData(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardData[arg1].field_0, rewardData[arg1].field_256, rewardData[arg1].field_512, rewardData[arg1].field_768
}

function sub_50d6b5e3(?) {
    return sub_50d6b5e3
}

function paused() {
    return bool(paused)
}

function sub_6b61a172(?) {
    return sub_6b61a172Address
}

function totalBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalBalance[address(arg1)].field_0
}

function userRewardPerTokenPaid(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userRewardPerTokenPaid[arg1][arg2]
}

function stakingToken() {
    return stakingTokenAddress
}

function rewardTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return rewardTokens[arg1]
}

function sub_85532aa7(?) {
    return sub_85532aa7
}

function owner() {
    return owner
}

function genesisNFT() {
    return genesisNFTAddress
}

function sub_c4408c8a(?) {
    return bool(sub_c4408c8a)
}

function lockedSupply() {
    return lockedSupply
}

function startTimestamp() {
    return startTimestamp
}

function rewards(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return rewards[arg1][arg2]
}

function minters(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function sub_c8d4f14d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = Mask(248, 0, not sub_c4408c8a)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableStaking() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardData[stor2].field_512 = block.timestamp
    rewardData[stor2].field_0 = block.timestamp
    paused = 0
}

function lastTimeRewardApplicable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < rewardData[address(arg1)].field_0:
        return block.timestamp
    return rewardData[address(arg1)].field_0
}

function addGenesisNFT(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1) > 0
    genesisNFTAddress = arg1
}

function getRewardForDuration(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardData[address(arg1)].field_256 and 168 * 24 * 3600 > -1 / rewardData[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (168 * 24 * 3600 * rewardData[address(arg1)].field_256)
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1) > 0
    stor10[address(arg1)] = 1
    sub_41ac34e5.length++
    sub_41ac34e5[sub_41ac34e5.length] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approveRewardDistributor(address arg1, address arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not rewardData[address(arg1)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PendragonStaking::approveRewardDistributor: Invalid'
    stor11[address(arg1)][address(arg2)] = uint8(arg3)
    emit 0xd890240f: arg3, arg1, arg2
}

function addReward(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardData[address(arg1)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PendragonStaking::addReward: Invalid'
    rewardTokens.length++
    stor36B6[stor5.length] = arg1
    rewardData[address(arg1)].field_512 = block.timestamp
    rewardData[address(arg1)].field_0 = block.timestamp
    stor11[address(arg1)][address(arg2)] = 1
    emit RewardTokenAdded(arg1);
    emit 0xd890240f: 1, arg1, arg2
}

function sub_8e1d723b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require stor14[arg1 << 240].field_0
    if stor14[arg1 << 240].field_512:
        if block.timestamp < stor14[arg1 << 240].field_256:
            revert with 'NH{q', 17
        if block.timestamp - stor14[arg1 << 240].field_256 and sub_85532aa7 > -1 / block.timestamp - stor14[arg1 << 240].field_256:
            revert with 'NH{q', 17
        if stor14[arg1 << 240].field_256 > -604801:
            revert with 'NH{q', 17
        return (block.timestamp * sub_85532aa7) - (stor14[arg1 << 240].field_256 * sub_85532aa7), 
               stor14[arg1 << 240].field_256 + (168 * 24 * 3600) <= block.timestamp
    require block.timestamp > stor14[arg1 << 240].field_0
    if block.timestamp < stor14[arg1 << 240].field_0:
        revert with 'NH{q', 17
    if block.timestamp - stor14[arg1 << 240].field_0 and sub_85532aa7 > -1 / block.timestamp - stor14[arg1 << 240].field_0:
        revert with 'NH{q', 17
    return (block.timestamp * sub_85532aa7) - (stor14[arg1 << 240].field_0 * sub_85532aa7), 1
}

function sub_a2a16d35(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint16(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _26 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
        require ext_code.size(genesisNFTAddress)
        staticcall genesisNFTAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args (_26 << 240)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_29] == mem[_29 + 12 len 20]
        if mem[_29 + 12 len 20] != msg.sender:
            revert with 0, 'You are not the owner of this token'
        mem[0] = uint16(_26)
        mem[32] = 14
        if stor14[_26 << 240].field_0:
            mem[0] = uint16(_26)
            mem[32] = 14
            stor14[_26 << 240].field_0 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawableBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalBalance[address(arg1)].field_768:
        if totalBalance[address(arg1)].field_256 > !totalBalance[address(arg1)].field_768:
            revert with 'NH{q', 17
        if totalBalance[address(arg1)].field_256 + totalBalance[address(arg1)].field_768 < 0:
            revert with 'NH{q', 17
        return totalBalance[address(arg1)].field_256 + totalBalance[address(arg1)].field_768, 0
    idx = 0
    while idx < stor21[address(arg1)].field_0:
        mem[32] = 21
        if idx >= stor21[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 21)
        if 0 == stor21[address(arg1)][idx].field_0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[32] = 21
        if idx >= stor21[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 21)
        if stor21[address(arg1)][idx].field_256 <= block.timestamp:
            if 0 > !stor21[address(arg1)][idx].field_0:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if totalBalance[address(arg1)].field_768 < 0:
            revert with 'NH{q', 17
        if totalBalance[address(arg1)].field_256 > !totalBalance[address(arg1)].field_768:
            revert with 'NH{q', 17
        if totalBalance[address(arg1)].field_256 + totalBalance[address(arg1)].field_768 < totalBalance[address(arg1)].field_769:
            revert with 'NH{q', 17
        return totalBalance[address(arg1)].field_256 + totalBalance[address(arg1)].field_768 - totalBalance[address(arg1)].field_769, 
               totalBalance[address(arg1)].field_769
    if totalBalance[address(arg1)].field_768 < 0:
        revert with 'NH{q', 17
    if totalBalance[address(arg1)].field_256 > !totalBalance[address(arg1)].field_768:
        revert with 'NH{q', 17
    if totalBalance[address(arg1)].field_256 + totalBalance[address(arg1)].field_768 < totalBalance[address(arg1)].field_769:
        revert with 'NH{q', 17
    return totalBalance[address(arg1)].field_256 + totalBalance[address(arg1)].field_768 - totalBalance[address(arg1)].field_769, 
           totalBalance[address(arg1)].field_769
}

function earnedBalances(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 21
    idx = 0
    s = 0
    t = 96
    u = 0
    while idx < stor21[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 21)
        if stor21[address(arg1)][idx].field_256 <= block.timestamp:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if s:
            if idx >= stor21[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 21)
            _23 = mem[64]
            mem[64] = mem[64] + 64
            mem[_23] = stor21[address(arg1)][idx].field_0
            mem[_23 + 32] = stor21[address(arg1)][idx].field_256
            if s >= mem[t]:
                revert with 'NH{q', 50
            mem[(32 * s) + t + 32] = _23
            if s == -1:
                revert with 'NH{q', 17
            if idx >= stor21[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 21)
            if u > !stor21[address(arg1)][idx].field_0:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t
            u = u + stor21[address(arg1)][idx].field_0
            continue 
        if stor21[address(arg1)].field_0 < idx:
            revert with 'NH{q', 17
        if stor21[address(arg1)].field_0 - idx > test266151307():
            revert with 'NH{q', 65
        _29 = mem[64]
        mem[mem[64]] = stor21[address(arg1)].field_0 - idx
        if not stor21[address(arg1)].field_0 - idx:
            if idx >= stor21[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 21)
            _33 = mem[64] + (32 * stor21[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor21[address(arg1)].field_0 - idx) + 96
            mem[_33] = stor21[address(arg1)][idx].field_0
            mem[_33 + 32] = stor21[address(arg1)][idx].field_256
            if s >= mem[_29]:
                revert with 'NH{q', 50
            mem[(32 * s) + _29 + 32] = _33
        else:
            _40 = mem[64] + (32 * stor21[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor21[address(arg1)].field_0 - idx) + 96
            mem[_40] = 0
            mem[_40 + 32] = 0
            mem[_29 + 32] = _40
            v = _29 + 32
            t = stor21[address(arg1)].field_0 - idx
            while t - 1:
                _40 = mem[64]
                mem[64] = mem[64] + 64
                mem[_40] = 0
                mem[_40 + 32] = 0
                mem[v + 32] = _40
                v = v + 32
                t = t - 1
                continue 
            if idx >= stor21[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 21)
            _46 = mem[64]
            mem[64] = mem[64] + 64
            mem[_46] = stor21[address(arg1)][idx].field_0
            mem[_46 + 32] = stor21[address(arg1)][idx].field_256
            if s >= mem[_29]:
                revert with 'NH{q', 50
            mem[(32 * s) + _29 + 32] = _46
        if s == -1:
            revert with 'NH{q', 17
        if idx >= stor21[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 21)
        if u > !stor21[address(arg1)][idx].field_0:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        t = _29
        u = u + stor21[address(arg1)][idx].field_0
        continue 
    _19 = mem[64]
    mem[mem[64]] = u
    mem[mem[64] + 32] = 64
    _21 = mem[t]
    mem[mem[64] + 64] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 96
    while idx < _21:
        _41 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_41 + 32]
        idx = idx + 1
        s = s + 32
        u = u + 64
        continue 
    return memory
      from mem[64]
       len _19 + (64 * _21) + -mem[64] + 96
}

function lockedBalances(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 20
    idx = 0
    s = 0
    t = 96
    u = 0
    while idx < stor20[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 20)
        if stor20[address(arg1)][idx].field_256 <= block.timestamp:
            if idx >= stor20[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 20)
            if 0 > !stor20[address(arg1)][idx].field_0:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if s:
            if idx >= stor20[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 20)
            _27 = mem[64]
            mem[64] = mem[64] + 64
            mem[_27] = stor20[address(arg1)][idx].field_0
            mem[_27 + 32] = stor20[address(arg1)][idx].field_256
            if s >= mem[t]:
                revert with 'NH{q', 50
            mem[(32 * s) + t + 32] = _27
            if s == -1:
                revert with 'NH{q', 17
            if idx >= stor20[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 20)
            if u > !stor20[address(arg1)][idx].field_0:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t
            u = u + stor20[address(arg1)][idx].field_0
            continue 
        if stor20[address(arg1)].field_0 < idx:
            revert with 'NH{q', 17
        if stor20[address(arg1)].field_0 - idx > test266151307():
            revert with 'NH{q', 65
        _33 = mem[64]
        mem[mem[64]] = stor20[address(arg1)].field_0 - idx
        if not stor20[address(arg1)].field_0 - idx:
            if idx >= stor20[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 20)
            _37 = mem[64] + (32 * stor20[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor20[address(arg1)].field_0 - idx) + 96
            mem[_37] = stor20[address(arg1)][idx].field_0
            mem[_37 + 32] = stor20[address(arg1)][idx].field_256
            if s >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * s) + _33 + 32] = _37
        else:
            _44 = mem[64] + (32 * stor20[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor20[address(arg1)].field_0 - idx) + 96
            mem[_44] = 0
            mem[_44 + 32] = 0
            mem[_33 + 32] = _44
            v = _33 + 32
            t = stor20[address(arg1)].field_0 - idx
            while t - 1:
                _44 = mem[64]
                mem[64] = mem[64] + 64
                mem[_44] = 0
                mem[_44 + 32] = 0
                mem[v + 32] = _44
                v = v + 32
                t = t - 1
                continue 
            if idx >= stor20[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 20)
            _50 = mem[64]
            mem[64] = mem[64] + 64
            mem[_50] = stor20[address(arg1)][idx].field_0
            mem[_50 + 32] = stor20[address(arg1)][idx].field_256
            if s >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * s) + _33 + 32] = _50
        if s == -1:
            revert with 'NH{q', 17
        if idx >= stor20[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 20)
        if u > !stor20[address(arg1)][idx].field_0:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        t = _33
        u = u + stor20[address(arg1)][idx].field_0
        continue 
    mem[0] = arg1
    mem[32] = 19
    _22 = mem[64]
    mem[mem[64]] = totalBalance[address(arg1)].field_512
    mem[mem[64] + 32] = 0
    mem[mem[64] + 64] = u
    mem[mem[64] + 96] = 128
    _24 = mem[t]
    mem[mem[64] + 128] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 160
    while idx < _24:
        _45 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_45 + 32]
        idx = idx + 1
        s = s + 32
        u = u + 64
        continue 
    return memory
      from mem[64]
       len _22 + (64 * _24) + -mem[64] + 160
}

function sub_d05e14dc(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint16(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require sub_c4408c8a
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _38 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
        require ext_code.size(genesisNFTAddress)
        staticcall genesisNFTAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args (_38 << 240)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_41] == mem[_41 + 12 len 20]
        if mem[_41 + 12 len 20] != msg.sender:
            revert with 0, 'You are not the owner of this token'
        mem[0] = uint16(_38)
        mem[32] = 14
        require stor14[_38 << 240].field_0
        if not stor14[_38 << 240].field_512:
            require block.timestamp > stor14[_38 << 240].field_0
            if block.timestamp < stor14[_38 << 240].field_0:
                revert with 'NH{q', 17
            if block.timestamp - stor14[_38 << 240].field_0 and sub_85532aa7 > -1 / block.timestamp - stor14[_38 << 240].field_0:
                revert with 'NH{q', 17
            if stor14[_38 << 240].field_512 == -1:
                revert with 'NH{q', 17
            stor14[_38 << 240].field_512++
            mem[0] = uint16(_38)
            mem[32] = 14
            stor14[_38 << 240].field_256 = block.timestamp
            if stor14[_38 << 240].field_768 > !((block.timestamp * sub_85532aa7) - (stor14[_38 << 240].field_0 * sub_85532aa7)):
                revert with 'NH{q', 17
            stor14[_38 << 240].field_768 = stor14[_38 << 240].field_768 + (block.timestamp * sub_85532aa7) - (stor14[_38 << 240].field_0 * sub_85532aa7)
            if s > !((block.timestamp * sub_85532aa7) - (stor14[_38 << 240].field_0 * sub_85532aa7)):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (block.timestamp * sub_85532aa7) - (stor14[_38 << 240].field_0 * sub_85532aa7)
            continue 
        if block.timestamp < stor14[_38 << 240].field_256:
            revert with 'NH{q', 17
        if block.timestamp - stor14[_38 << 240].field_256 and sub_85532aa7 > -1 / block.timestamp - stor14[_38 << 240].field_256:
            revert with 'NH{q', 17
        if stor14[_38 << 240].field_256 > -604801:
            revert with 'NH{q', 17
        if stor14[_38 << 240].field_256 + (168 * 24 * 3600) > block.timestamp:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if stor14[_38 << 240].field_512 == -1:
            revert with 'NH{q', 17
        stor14[_38 << 240].field_512++
        mem[0] = uint16(_38)
        mem[32] = 14
        stor14[_38 << 240].field_256 = block.timestamp
        if stor14[_38 << 240].field_768 > !((block.timestamp * sub_85532aa7) - (stor14[_38 << 240].field_256 * sub_85532aa7)):
            revert with 'NH{q', 17
        stor14[_38 << 240].field_768 = stor14[_38 << 240].field_768 + (block.timestamp * sub_85532aa7) - (stor14[_38 << 240].field_256 * sub_85532aa7)
        if s > !((block.timestamp * sub_85532aa7) - (stor14[_38 << 240].field_256 * sub_85532aa7)):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (block.timestamp * sub_85532aa7) - (stor14[_38 << 240].field_256 * sub_85532aa7)
        continue 
    require ext_code.size(sub_6b61a172Address)
    call sub_6b61a172Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rewardPerToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakingTokenAddress == arg1:
        if not lockedSupply:
            return rewardData[address(arg1)].field_768
        if block.timestamp < rewardData[address(arg1)].field_0:
            if block.timestamp < rewardData[address(arg1)].field_512:
                revert with 'NH{q', 17
            if block.timestamp - rewardData[address(arg1)].field_512 and rewardData[address(arg1)].field_256 > -1 / block.timestamp - rewardData[address(arg1)].field_512:
                revert with 'NH{q', 17
            if (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) and 10^18 > -1 / (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
                revert with 'NH{q', 17
            if not lockedSupply:
                revert with 'NH{q', 18
            if rewardData[address(arg1)].field_768 > !((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply):
                revert with 'NH{q', 17
            return (rewardData[address(arg1)].field_768 + ((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply))
        if rewardData[address(arg1)].field_0 < rewardData[address(arg1)].field_512:
            revert with 'NH{q', 17
        if rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512 and rewardData[address(arg1)].field_256 > -1 / rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512:
            revert with 'NH{q', 17
        if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) and 10^18 > -1 / (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
            revert with 'NH{q', 17
        if not lockedSupply:
            revert with 'NH{q', 18
        if rewardData[address(arg1)].field_768 > !((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply):
            revert with 'NH{q', 17
        return (rewardData[address(arg1)].field_768 + ((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply))
    if not totalSupply:
        return rewardData[address(arg1)].field_768
    if block.timestamp < rewardData[address(arg1)].field_0:
        if block.timestamp < rewardData[address(arg1)].field_512:
            revert with 'NH{q', 17
        if block.timestamp - rewardData[address(arg1)].field_512 and rewardData[address(arg1)].field_256 > -1 / block.timestamp - rewardData[address(arg1)].field_512:
            revert with 'NH{q', 17
        if (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) and 10^18 > -1 / (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if rewardData[address(arg1)].field_768 > !((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply):
            revert with 'NH{q', 17
        return (rewardData[address(arg1)].field_768 + ((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply))
    if rewardData[address(arg1)].field_0 < rewardData[address(arg1)].field_512:
        revert with 'NH{q', 17
    if rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512 and rewardData[address(arg1)].field_256 > -1 / rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512:
        revert with 'NH{q', 17
    if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) and 10^18 > -1 / (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if rewardData[address(arg1)].field_768 > !((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply):
        revert with 'NH{q', 17
    return (rewardData[address(arg1)].field_768 + ((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply))
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if lockedSupply:
        if block.timestamp < rewardData[stor2].field_0:
            if block.timestamp < rewardData[stor2].field_512:
                revert with 'NH{q', 17
            if block.timestamp - rewardData[stor2].field_512 and rewardData[stor2].field_256 > -1 / block.timestamp - rewardData[stor2].field_512:
                revert with 'NH{q', 17
            if (block.timestamp * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256):
                revert with 'NH{q', 17
            if not lockedSupply:
                revert with 'NH{q', 18
            if rewardData[stor2].field_768 > !((10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply):
                revert with 'NH{q', 17
            rewardData[stor2].field_768 += (10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply
        else:
            if rewardData[stor2].field_0 < rewardData[stor2].field_512:
                revert with 'NH{q', 17
            if rewardData[stor2].field_0 - rewardData[stor2].field_512 and rewardData[stor2].field_256 > -1 / rewardData[stor2].field_0 - rewardData[stor2].field_512:
                revert with 'NH{q', 17
            if (rewardData[stor2].field_0 * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256) and 10^18 > -1 / (rewardData[stor2].field_0 * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256):
                revert with 'NH{q', 17
            if not lockedSupply:
                revert with 'NH{q', 18
            if rewardData[stor2].field_768 > !((10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply):
                revert with 'NH{q', 17
            rewardData[stor2].field_768 += (10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply
    if block.timestamp < rewardData[stor2].field_0:
        rewardData[stor2].field_512 = block.timestamp
    else:
        rewardData[stor2].field_512 = rewardData[stor2].field_0
    if not arg1:
        idx = 1
        s = stakingTokenAddress
        while idx < rewardTokens.length:
            if totalSupply:
                if block.timestamp < rewardData[stor5[idx]].field_0:
                    if block.timestamp < rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / block.timestamp - rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                        revert with 'NH{q', 17
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if rewardData[stor5[idx]].field_768 > !((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                        revert with 'NH{q', 17
                    rewardData[stor5[idx]].field_768 += (10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply
                else:
                    if rewardData[stor5[idx]].field_0 < rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                        revert with 'NH{q', 17
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if rewardData[stor5[idx]].field_768 > !((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                        revert with 'NH{q', 17
                    rewardData[stor5[idx]].field_768 += (10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply
            mem[0] = rewardTokens[idx]
            mem[32] = 6
            if block.timestamp < rewardData[stor5[idx]].field_0:
                rewardData[stor5[idx]].field_512 = block.timestamp
            else:
                rewardData[stor5[idx]].field_512 = rewardData[stor5[idx]].field_0
            if arg1:
                if not totalSupply:
                    if rewardData[stor5[idx]].field_768 < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if False and rewardData[stor5[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > 0:
                        revert with 'NH{q', 17
                else:
                    if block.timestamp < rewardData[stor5[idx]].field_0:
                        if block.timestamp < rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / block.timestamp - rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if rewardData[stor5[idx]].field_768 > !((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if False and rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > 0:
                            revert with 'NH{q', 17
                    else:
                        if rewardData[stor5[idx]].field_0 < rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if rewardData[stor5[idx]].field_768 > !((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if False and rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > 0:
                            revert with 'NH{q', 17
                if 0 > !rewards[address(arg1)][stor5[idx]]:
                    revert with 'NH{q', 17
                mem[0] = rewardTokens[idx]
                mem[32] = sha3(address(arg1), 12)
                userRewardPerTokenPaid[address(arg1)][stor5[idx]] = rewardData[stor5[idx]].field_768
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = rewardTokens[idx]
            continue 
    else:
        if not lockedSupply:
            if rewardData[stor2].field_768 < userRewardPerTokenPaid[address(arg1)][stor2]:
                revert with 'NH{q', 17
            if totalBalance[address(arg1)].field_512 and rewardData[stor2].field_768 - userRewardPerTokenPaid[address(arg1)][stor2] > -1 / totalBalance[address(arg1)].field_512:
                revert with 'NH{q', 17
            if (rewardData[stor2].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor2] * totalBalance[address(arg1)].field_512) / 10^18 > !rewards[address(arg1)][stor2]:
                revert with 'NH{q', 17
            rewards[address(arg1)][stor2] += (rewardData[stor2].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor2] * totalBalance[address(arg1)].field_512) / 10^18
        else:
            if block.timestamp < rewardData[stor2].field_0:
                if block.timestamp < rewardData[stor2].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - rewardData[stor2].field_512 and rewardData[stor2].field_256 > -1 / block.timestamp - rewardData[stor2].field_512:
                    revert with 'NH{q', 17
                if (block.timestamp * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256):
                    revert with 'NH{q', 17
                if not lockedSupply:
                    revert with 'NH{q', 18
                if rewardData[stor2].field_768 > !((10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply):
                    revert with 'NH{q', 17
                if rewardData[stor2].field_768 + ((10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply) < userRewardPerTokenPaid[address(arg1)][stor2]:
                    revert with 'NH{q', 17
                if totalBalance[address(arg1)].field_512 and rewardData[stor2].field_768 + ((10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply) - userRewardPerTokenPaid[address(arg1)][stor2] > -1 / totalBalance[address(arg1)].field_512:
                    revert with 'NH{q', 17
                if (rewardData[stor2].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor2] * totalBalance[address(arg1)].field_512) / 10^18 > !rewards[address(arg1)][stor2]:
                    revert with 'NH{q', 17
                rewards[address(arg1)][stor2] += (rewardData[stor2].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor2] * totalBalance[address(arg1)].field_512) / 10^18
            else:
                if rewardData[stor2].field_0 < rewardData[stor2].field_512:
                    revert with 'NH{q', 17
                if rewardData[stor2].field_0 - rewardData[stor2].field_512 and rewardData[stor2].field_256 > -1 / rewardData[stor2].field_0 - rewardData[stor2].field_512:
                    revert with 'NH{q', 17
                if (rewardData[stor2].field_0 * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256) and 10^18 > -1 / (rewardData[stor2].field_0 * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256):
                    revert with 'NH{q', 17
                if not lockedSupply:
                    revert with 'NH{q', 18
                if rewardData[stor2].field_768 > !((10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply):
                    revert with 'NH{q', 17
                if rewardData[stor2].field_768 + ((10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply) < userRewardPerTokenPaid[address(arg1)][stor2]:
                    revert with 'NH{q', 17
                if totalBalance[address(arg1)].field_512 and rewardData[stor2].field_768 + ((10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply) - userRewardPerTokenPaid[address(arg1)][stor2] > -1 / totalBalance[address(arg1)].field_512:
                    revert with 'NH{q', 17
                if (rewardData[stor2].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor2] * totalBalance[address(arg1)].field_512) / 10^18 > !rewards[address(arg1)][stor2]:
                    revert with 'NH{q', 17
                rewards[address(arg1)][stor2] += (rewardData[stor2].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor2] * totalBalance[address(arg1)].field_512) / 10^18
        userRewardPerTokenPaid[address(arg1)][stor2] = rewardData[stor2].field_768
        idx = 1
        s = stakingTokenAddress
        while idx < rewardTokens.length:
            if totalSupply:
                if block.timestamp < rewardData[stor5[idx]].field_0:
                    if block.timestamp < rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / block.timestamp - rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                        revert with 'NH{q', 17
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if rewardData[stor5[idx]].field_768 > !((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                        revert with 'NH{q', 17
                    rewardData[stor5[idx]].field_768 += (10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply
                else:
                    if rewardData[stor5[idx]].field_0 < rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                        revert with 'NH{q', 17
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if rewardData[stor5[idx]].field_768 > !((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                        revert with 'NH{q', 17
                    rewardData[stor5[idx]].field_768 += (10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply
            mem[0] = rewardTokens[idx]
            mem[32] = 6
            if block.timestamp < rewardData[stor5[idx]].field_0:
                rewardData[stor5[idx]].field_512 = block.timestamp
            else:
                rewardData[stor5[idx]].field_512 = rewardData[stor5[idx]].field_0
            if arg1:
                if not totalSupply:
                    if rewardData[stor5[idx]].field_768 < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if totalBalance[address(arg1)].field_0 and rewardData[stor5[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    rewards[address(arg1)][stor5[idx]] += (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18
                else:
                    if block.timestamp < rewardData[stor5[idx]].field_0:
                        if block.timestamp < rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / block.timestamp - rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if rewardData[stor5[idx]].field_768 > !((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if totalBalance[address(arg1)].field_0 and rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_0:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        rewards[address(arg1)][stor5[idx]] += (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18
                    else:
                        if rewardData[stor5[idx]].field_0 < rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if rewardData[stor5[idx]].field_768 > !((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if totalBalance[address(arg1)].field_0 and rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_0:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        rewards[address(arg1)][stor5[idx]] += (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18
                mem[0] = rewardTokens[idx]
                mem[32] = sha3(address(arg1), 12)
                userRewardPerTokenPaid[address(arg1)][stor5[idx]] = rewardData[stor5[idx]].field_768
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = rewardTokens[idx]
            continue 
    if not stor10[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PendragonStaking::mint: Only minters allowed'
    require not paused
    if totalSupply > !arg2:
        revert with 'NH{q', 17
    totalSupply += arg2
    if totalBalance[address(arg1)].field_0 > !arg2:
        revert with 'NH{q', 17
    totalBalance[address(arg1)].field_0 += arg2
    if totalBalance[address(arg1)].field_768 > !arg2:
        revert with 'NH{q', 17
    totalBalance[address(arg1)].field_768 += arg2
    if block.timestamp / 168 * 24 * 3600 and 168 * 24 * 3600 > -1 / block.timestamp / 168 * 24 * 3600:
        revert with 'NH{q', 17
    if 168 * 24 * 3600 * block.timestamp / 168 * 24 * 3600 > -4838401:
        revert with 'NH{q', 17
    if not stor21[address(arg1)].field_0:
        stor21[address(arg1)].field_0++
        stor21[address(arg1)][stor21[address(arg1)].field_0].field_0 = arg2
        stor21[address(arg1)][stor21[address(arg1)].field_0].field_256 = (168 * 24 * 3600 * block.timestamp / 168 * 24 * 3600) + (1344 * 24 * 3600)
    else:
        if stor21[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if stor21[address(arg1)].field_0 - 1 >= stor21[address(arg1)].field_0:
            revert with 'NH{q', 50
        if stor21[address(arg1)][stor21[address(arg1)].field_0 - 1].field_256 < (168 * 24 * 3600 * block.timestamp / 168 * 24 * 3600) + (1344 * 24 * 3600):
            stor21[address(arg1)].field_0++
            stor21[address(arg1)][stor21[address(arg1)].field_0].field_0 = arg2
            stor21[address(arg1)][stor21[address(arg1)].field_0].field_256 = (168 * 24 * 3600 * block.timestamp / 168 * 24 * 3600) + (1344 * 24 * 3600)
        else:
            if stor21[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if stor21[address(arg1)].field_0 - 1 >= stor21[address(arg1)].field_0:
                revert with 'NH{q', 50
            if stor21[address(arg1)][stor21[address(arg1)].field_0 - 1].field_0 > !arg2:
                revert with 'NH{q', 17
            if stor21[address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if stor21[address(arg1)].field_0 - 1 >= stor21[address(arg1)].field_0:
                revert with 'NH{q', 50
            stor21[address(arg1)][stor21[address(arg1)].field_0 - 1].field_0 += arg2
    require ext_code.size(sub_6b61a172Address)
    call sub_6b61a172Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Staked(arg2, arg1);
}

function claimableRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardTokens.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = rewardTokens.length
    mem[64] = (32 * rewardTokens.length) + 128
    if not rewardTokens.length:
        idx = 0
        while idx < rewardTokens.length:
            if idx >= rewardTokens.length:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128]] = rewardTokens[idx]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not idx:
                if not lockedSupply:
                    mem[0] = rewardTokens[idx]
                    mem[32] = 6
                    if rewardData[stor5[idx]].field_768 < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if totalBalance[address(arg1)].field_512 and rewardData[stor5[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_512:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18) + rewards[address(arg1)][stor5[idx]]
                else:
                    if block.timestamp < rewardData[stor5[idx]].field_0:
                        if block.timestamp < rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / block.timestamp - rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                            revert with 'NH{q', 17
                        if not lockedSupply:
                            revert with 'NH{q', 18
                        mem[0] = rewardTokens[idx]
                        mem[32] = 6
                        if rewardData[stor5[idx]].field_768 > !((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply):
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if totalBalance[address(arg1)].field_512 and rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_512:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18) + rewards[address(arg1)][stor5[idx]]
                    else:
                        if rewardData[stor5[idx]].field_0 < rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                            revert with 'NH{q', 17
                        if not lockedSupply:
                            revert with 'NH{q', 18
                        mem[0] = rewardTokens[idx]
                        mem[32] = 6
                        if rewardData[stor5[idx]].field_768 > !((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply):
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if totalBalance[address(arg1)].field_512 and rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_512:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18) + rewards[address(arg1)][stor5[idx]]
            else:
                if not totalSupply:
                    mem[0] = rewardTokens[idx]
                    mem[32] = 6
                    if rewardData[stor5[idx]].field_768 < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if totalBalance[address(arg1)].field_0 and rewardData[stor5[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18) + rewards[address(arg1)][stor5[idx]]
                else:
                    if block.timestamp < rewardData[stor5[idx]].field_0:
                        if block.timestamp < rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / block.timestamp - rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        mem[0] = rewardTokens[idx]
                        mem[32] = 6
                        if rewardData[stor5[idx]].field_768 > !((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if totalBalance[address(arg1)].field_0 and rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_0:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18) + rewards[address(arg1)][stor5[idx]]
                    else:
                        if rewardData[stor5[idx]].field_0 < rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        mem[0] = rewardTokens[idx]
                        mem[32] = 6
                        if rewardData[stor5[idx]].field_768 > !((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                            revert with 'NH{q', 17
                        if rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if totalBalance[address(arg1)].field_0 and rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_0:
                            revert with 'NH{q', 17
                        if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18) + rewards[address(arg1)][stor5[idx]]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _63 = mem[64]
        mem[mem[64]] = 32
        _66 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _66:
            _143 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_143 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _63 + (64 * _66) + -mem[64] + 64
    mem[64] = (32 * rewardTokens.length) + 192
    mem[(32 * rewardTokens.length) + 128] = 0
    mem[(32 * rewardTokens.length) + 160] = 0
    mem[128] = (32 * rewardTokens.length) + 128
    s = 128
    idx = rewardTokens.length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * rewardTokens.length) + 128] = 0
        mem[(32 * rewardTokens.length) + 160] = 0
        mem[s + 32] = (32 * rewardTokens.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    _142 = mem[96]
    idx = 0
    while idx < _142:
        if idx >= rewardTokens.length:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + 128]] = rewardTokens[idx]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not idx:
            if not lockedSupply:
                mem[0] = rewardTokens[idx]
                mem[32] = 6
                if rewardData[stor5[idx]].field_768 < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                    revert with 'NH{q', 17
                if totalBalance[address(arg1)].field_512 and rewardData[stor5[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_512:
                    revert with 'NH{q', 17
                if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18) + rewards[address(arg1)][stor5[idx]]
            else:
                if block.timestamp < rewardData[stor5[idx]].field_0:
                    if block.timestamp < rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / block.timestamp - rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                        revert with 'NH{q', 17
                    if not lockedSupply:
                        revert with 'NH{q', 18
                    mem[0] = rewardTokens[idx]
                    mem[32] = 6
                    if rewardData[stor5[idx]].field_768 > !((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply):
                        revert with 'NH{q', 17
                    if rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if totalBalance[address(arg1)].field_512 and rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_512:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18) + rewards[address(arg1)][stor5[idx]]
                else:
                    if rewardData[stor5[idx]].field_0 < rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                        revert with 'NH{q', 17
                    if not lockedSupply:
                        revert with 'NH{q', 18
                    mem[0] = rewardTokens[idx]
                    mem[32] = 6
                    if rewardData[stor5[idx]].field_768 > !((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply):
                        revert with 'NH{q', 17
                    if rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if totalBalance[address(arg1)].field_512 and rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_512:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_512) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_512) / 10^18) + rewards[address(arg1)][stor5[idx]]
        else:
            if not totalSupply:
                mem[0] = rewardTokens[idx]
                mem[32] = 6
                if rewardData[stor5[idx]].field_768 < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                    revert with 'NH{q', 17
                if totalBalance[address(arg1)].field_0 and rewardData[stor5[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18) + rewards[address(arg1)][stor5[idx]]
            else:
                if block.timestamp < rewardData[stor5[idx]].field_0:
                    if block.timestamp < rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / block.timestamp - rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (block.timestamp * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                        revert with 'NH{q', 17
                    if not totalSupply:
                        revert with 'NH{q', 18
                    mem[0] = rewardTokens[idx]
                    mem[32] = 6
                    if rewardData[stor5[idx]].field_768 > !((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                        revert with 'NH{q', 17
                    if rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if totalBalance[address(arg1)].field_0 and rewardData[stor5[idx]].field_768 + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * block.timestamp * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18) + rewards[address(arg1)][stor5[idx]]
                else:
                    if rewardData[stor5[idx]].field_0 < rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512 and rewardData[stor5[idx]].field_256 > -1 / rewardData[stor5[idx]].field_0 - rewardData[stor5[idx]].field_512:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) and 10^18 > -1 / (rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256):
                        revert with 'NH{q', 17
                    if not totalSupply:
                        revert with 'NH{q', 18
                    mem[0] = rewardTokens[idx]
                    mem[32] = 6
                    if rewardData[stor5[idx]].field_768 > !((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply):
                        revert with 'NH{q', 17
                    if rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) < userRewardPerTokenPaid[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if totalBalance[address(arg1)].field_0 and rewardData[stor5[idx]].field_768 + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply) - userRewardPerTokenPaid[address(arg1)][stor5[idx]] > -1 / totalBalance[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if (rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)][stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 32] = ((rewardData[stor5[idx]].field_768 * totalBalance[address(arg1)].field_0) + ((10^18 * rewardData[stor5[idx]].field_0 * rewardData[stor5[idx]].field_256) - (10^18 * rewardData[stor5[idx]].field_512 * rewardData[stor5[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor5[idx]] * totalBalance[address(arg1)].field_0) / 10^18) + rewards[address(arg1)][stor5[idx]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _147 = mem[64]
    mem[mem[64]] = 32
    _150 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _150:
        _197 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_197 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _147 + (64 * _150) + -mem[64] + 64
}

function unlockedBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = totalBalance[address(arg1)].field_256
    while idx < stor21[msg.sender].field_0:
        if stor21[msg.sender][idx].field_256 > block.timestamp:
            return s
        if idx >= stor21[msg.sender].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(msg.sender, 21)
        if s > !stor21[msg.sender][idx].field_0:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + stor21[msg.sender][idx].field_0
        continue 
    return (totalBalance[address(arg1)].field_256 + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (totalBalance[address(arg1)].field_256 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0) + (s * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0 * stor21[msg.sender].field_0))
}



}
