contract main {




// =====================  Runtime code  =====================


address owner;
array of struct balanceOf;
mapping of address tokenOwner;
mapping of struct rewards;
mapping of struct withdraws;
array of address stakersList;
uint256 totalStaked;
uint256 rewardsCount;
uint256 withdrawsCount;
address sub_fcee510eAddress;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function tokenOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenOwner[arg1]
}

function stakersList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stakersList.length
    return stakersList[arg1]
}

function stakedCount() {
    return totalStaked
}

function withdrawsCount() {
    return withdrawsCount
}

function withdraws(uint256 arg1) {
    require calldata.size - 4 >= 32
    return withdraws[arg1].field_0, withdraws[arg1].field_256
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_768
}

function totalStaked() {
    return totalStaked
}

function rewardsCount() {
    return rewardsCount
}

function owner() {
    return owner
}

function stakers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1].field_512, 
           balanceOf[arg1].field_768,
           balanceOf[arg1].field_1024,
           balanceOf[arg1].field_1280,
           balanceOf[arg1].field_1536
}

function rewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rewards[arg1].field_0, rewards[arg1].field_256, rewards[arg1].field_512, rewards[arg1].field_768
}

function sub_fcee510e(?) {
    return sub_fcee510eAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function percentOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[address(arg1)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not totalStaked:
        revert with 0, 18
    return (10000 * balanceOf[address(arg1)].field_768 / totalStaked / 100)
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function withdrawForOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Insufficient funds'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardsCount > -2:
        revert with 0, 17
    rewardsCount++
    rewards[stor7].field_0 = block.timestamp
    if 720 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    rewards[stor7].field_256 = block.timestamp + (720 * 24 * 3600)
    rewards[stor7].field_512 = msg.value
    if msg.value / 720 * 24 * 3600 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    rewards[stor7].field_768 = 60 * msg.value / 720 * 24 * 3600
}

function sub_e3263960(?) {
    if block.timestamp < 168 * 24 * 3600:
        revert with 0, 17
    idx = 0
    s = 0
    while idx < withdrawsCount:
        mem[0] = idx
        mem[32] = 4
        if block.timestamp - (168 * 24 * 3600) > withdraws[idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > !withdraws[idx].field_256:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + withdraws[idx].field_256
        continue 
    return s
}

function getReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)].field_768:
        return 0
    idx = 0
    s = 0
    while idx < rewardsCount:
        mem[0] = idx
        mem[32] = 3
        if rewards[idx].field_256 <= balanceOf[address(arg1)].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if balanceOf[address(arg1)].field_1024 >= rewards[idx].field_0:
            if block.timestamp < balanceOf[address(arg1)].field_1024:
                revert with 0, 17
            if block.timestamp - balanceOf[address(arg1)].field_1024 / 60 and rewards[idx].field_768 > -1 / block.timestamp - balanceOf[address(arg1)].field_1024 / 60:
                revert with 0, 17
            if balanceOf[address(arg1)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not totalStaked:
                revert with 0, 18
            if 10000 * balanceOf[address(arg1)].field_768 / totalStaked and block.timestamp - balanceOf[address(arg1)].field_1024 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(arg1)].field_768 / totalStaked:
                revert with 0, 17
            if s > !(10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - balanceOf[address(arg1)].field_1024 / 60 * rewards[idx].field_768 / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - balanceOf[address(arg1)].field_1024 / 60 * rewards[idx].field_768 / 10000)
            continue 
        if block.timestamp < rewards[idx].field_0:
            revert with 0, 17
        if block.timestamp - rewards[idx].field_0 / 60 and rewards[idx].field_768 > -1 / block.timestamp - rewards[idx].field_0 / 60:
            revert with 0, 17
        if balanceOf[address(arg1)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if 10000 * balanceOf[address(arg1)].field_768 / totalStaked and block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(arg1)].field_768 / totalStaked:
            revert with 0, 17
        if s > !(10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000)
        continue 
    return s
}

function totalRewardOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)].field_768:
        if 0 > !balanceOf[address(arg1)].field_1280:
            revert with 0, 17
        return balanceOf[address(arg1)].field_1280
    idx = 0
    s = 0
    while idx < rewardsCount:
        mem[0] = idx
        mem[32] = 3
        if rewards[idx].field_256 <= balanceOf[address(arg1)].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if balanceOf[address(arg1)].field_1024 >= rewards[idx].field_0:
            if block.timestamp < balanceOf[address(arg1)].field_1024:
                revert with 0, 17
            if block.timestamp - balanceOf[address(arg1)].field_1024 / 60 and rewards[idx].field_768 > -1 / block.timestamp - balanceOf[address(arg1)].field_1024 / 60:
                revert with 0, 17
            if balanceOf[address(arg1)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not totalStaked:
                revert with 0, 18
            if 10000 * balanceOf[address(arg1)].field_768 / totalStaked and block.timestamp - balanceOf[address(arg1)].field_1024 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(arg1)].field_768 / totalStaked:
                revert with 0, 17
            if s > !(10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - balanceOf[address(arg1)].field_1024 / 60 * rewards[idx].field_768 / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - balanceOf[address(arg1)].field_1024 / 60 * rewards[idx].field_768 / 10000)
            continue 
        if block.timestamp < rewards[idx].field_0:
            revert with 0, 17
        if block.timestamp - rewards[idx].field_0 / 60 and rewards[idx].field_768 > -1 / block.timestamp - rewards[idx].field_0 / 60:
            revert with 0, 17
        if balanceOf[address(arg1)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if 10000 * balanceOf[address(arg1)].field_768 / totalStaked and block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(arg1)].field_768 / totalStaked:
            revert with 0, 17
        if s > !(10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000)
        continue 
    if s > !balanceOf[address(arg1)].field_1280:
        revert with 0, 17
    return (s + balanceOf[address(arg1)].field_1280)
}

function rewardOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)].field_768:
        if 0 > !balanceOf[address(arg1)].field_1280:
            revert with 0, 17
        if balanceOf[address(arg1)].field_1280 < balanceOf[address(arg1)].field_1536:
            revert with 0, 17
        return (balanceOf[address(arg1)].field_1280 - balanceOf[address(arg1)].field_1536)
    idx = 0
    s = 0
    while idx < rewardsCount:
        mem[0] = idx
        mem[32] = 3
        if rewards[idx].field_256 <= balanceOf[address(arg1)].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if balanceOf[address(arg1)].field_1024 >= rewards[idx].field_0:
            if block.timestamp < balanceOf[address(arg1)].field_1024:
                revert with 0, 17
            if block.timestamp - balanceOf[address(arg1)].field_1024 / 60 and rewards[idx].field_768 > -1 / block.timestamp - balanceOf[address(arg1)].field_1024 / 60:
                revert with 0, 17
            if balanceOf[address(arg1)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not totalStaked:
                revert with 0, 18
            if 10000 * balanceOf[address(arg1)].field_768 / totalStaked and block.timestamp - balanceOf[address(arg1)].field_1024 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(arg1)].field_768 / totalStaked:
                revert with 0, 17
            if s > !(10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - balanceOf[address(arg1)].field_1024 / 60 * rewards[idx].field_768 / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - balanceOf[address(arg1)].field_1024 / 60 * rewards[idx].field_768 / 10000)
            continue 
        if block.timestamp < rewards[idx].field_0:
            revert with 0, 17
        if block.timestamp - rewards[idx].field_0 / 60 and rewards[idx].field_768 > -1 / block.timestamp - rewards[idx].field_0 / 60:
            revert with 0, 17
        if balanceOf[address(arg1)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if 10000 * balanceOf[address(arg1)].field_768 / totalStaked and block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(arg1)].field_768 / totalStaked:
            revert with 0, 17
        if s > !(10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (10000 * balanceOf[address(arg1)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000)
        continue 
    if s > !balanceOf[address(arg1)].field_1280:
        revert with 0, 17
    if s + balanceOf[address(arg1)].field_1280 < balanceOf[address(arg1)].field_1536:
        revert with 0, 17
    return (s + balanceOf[address(arg1)].field_1280 - balanceOf[address(arg1)].field_1536)
}

function stake(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    idx = 0
    while idx < stakersList.length:
        balanceOf[stor5[idx]].field_1024 = block.timestamp
        mem[0] = stakersList[idx]
        mem[32] = 1
        if not balanceOf[stor5[idx]].field_768:
            if balanceOf[stor5[idx]].field_1280 > -1:
                revert with 0, 17
        else:
            s = 0
            t = 0
            while s < rewardsCount:
                mem[0] = s
                mem[32] = 3
                if rewards[s].field_256 <= balanceOf[stor5[idx]].field_1024:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if balanceOf[stor5[idx]].field_1024 >= rewards[s].field_0:
                    if block.timestamp < balanceOf[stor5[idx]].field_1024:
                        revert with 0, 17
                    if block.timestamp - balanceOf[stor5[idx]].field_1024 / 60 and rewards[s].field_768 > -1 / block.timestamp - balanceOf[stor5[idx]].field_1024 / 60:
                        revert with 0, 17
                    if balanceOf[stor5[idx]].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if 10000 * balanceOf[stor5[idx]].field_768 / totalStaked and block.timestamp - balanceOf[stor5[idx]].field_1024 / 60 * rewards[s].field_768 > -1 / 10000 * balanceOf[stor5[idx]].field_768 / totalStaked:
                        revert with 0, 17
                    if t > !(10000 * balanceOf[stor5[idx]].field_768 / totalStaked * block.timestamp - balanceOf[stor5[idx]].field_1024 / 60 * rewards[s].field_768 / 10000):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + (10000 * balanceOf[stor5[idx]].field_768 / totalStaked * block.timestamp - balanceOf[stor5[idx]].field_1024 / 60 * rewards[s].field_768 / 10000)
                    continue 
                if block.timestamp < rewards[s].field_0:
                    revert with 0, 17
                if block.timestamp - rewards[s].field_0 / 60 and rewards[s].field_768 > -1 / block.timestamp - rewards[s].field_0 / 60:
                    revert with 0, 17
                if balanceOf[stor5[idx]].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not totalStaked:
                    revert with 0, 18
                if 10000 * balanceOf[stor5[idx]].field_768 / totalStaked and block.timestamp - rewards[s].field_0 / 60 * rewards[s].field_768 > -1 / 10000 * balanceOf[stor5[idx]].field_768 / totalStaked:
                    revert with 0, 17
                if t > !(10000 * balanceOf[stor5[idx]].field_768 / totalStaked * block.timestamp - rewards[s].field_0 / 60 * rewards[s].field_768 / 10000):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + (10000 * balanceOf[stor5[idx]].field_768 / totalStaked * block.timestamp - rewards[s].field_0 / 60 * rewards[s].field_768 / 10000)
                continue 
            if balanceOf[stor5[idx]].field_1280 > !t:
                revert with 0, 17
            balanceOf[stor5[idx]].field_1280 += t
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not balanceOf[address(arg2)].field_768:
        if not balanceOf[address(arg2)].field_1024:
            balanceOf[address(arg2)].field_1024 = block.timestamp
            balanceOf[address(arg2)].field_512 = stakersList.length
            stakersList.length++
            stor36B6[stor5.length] = arg2
    if balanceOf[address(arg2)].field_768 > -2:
        revert with 0, 17
    balanceOf[address(arg2)].field_768++
    balanceOf[address(arg2)].field_0++
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_0].field_0 = arg1
    if balanceOf[address(arg2)].field_0 < 1:
        revert with 0, 17
    tokenOwner[arg1] = arg2
    if totalStaked > -2:
        revert with 0, 17
    totalStaked++
    emit Staked(address(arg2), arg1);
}

function withdraw() {
    balanceOf[address(msg.sender)].field_1024 = block.timestamp
    if not balanceOf[address(msg.sender)].field_768:
        if balanceOf[address(msg.sender)].field_1280 > -1:
            revert with 0, 17
    else:
        idx = 0
        s = 0
        while idx < rewardsCount:
            mem[0] = idx
            mem[32] = 3
            if rewards[idx].field_256 <= balanceOf[address(msg.sender)].field_1024:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if balanceOf[address(msg.sender)].field_1024 >= rewards[idx].field_0:
                if block.timestamp < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 17
                if block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60 and rewards[idx].field_768 > -1 / block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60:
                    revert with 0, 17
                if balanceOf[address(msg.sender)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not totalStaked:
                    revert with 0, 18
                if 10000 * balanceOf[address(msg.sender)].field_768 / totalStaked and block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(msg.sender)].field_768 / totalStaked:
                    revert with 0, 17
                if s > !(10000 * balanceOf[address(msg.sender)].field_768 / totalStaked * block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60 * rewards[idx].field_768 / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10000 * balanceOf[address(msg.sender)].field_768 / totalStaked * block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60 * rewards[idx].field_768 / 10000)
                continue 
            if block.timestamp < rewards[idx].field_0:
                revert with 0, 17
            if block.timestamp - rewards[idx].field_0 / 60 and rewards[idx].field_768 > -1 / block.timestamp - rewards[idx].field_0 / 60:
                revert with 0, 17
            if balanceOf[address(msg.sender)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not totalStaked:
                revert with 0, 18
            if 10000 * balanceOf[address(msg.sender)].field_768 / totalStaked and block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(msg.sender)].field_768 / totalStaked:
                revert with 0, 17
            if s > !(10000 * balanceOf[address(msg.sender)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * balanceOf[address(msg.sender)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000)
            continue 
        if balanceOf[address(msg.sender)].field_1280 > !s:
            revert with 0, 17
        balanceOf[address(msg.sender)].field_1280 += s
    if balanceOf[msg.sender].field_1280 < balanceOf[msg.sender].field_1536:
        revert with 0, 17
    if eth.balance(this.address) < balanceOf[msg.sender].field_1280 - balanceOf[msg.sender].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The function is not available at the moment, try again later'
    if balanceOf[msg.sender].field_1536 > !(balanceOf[msg.sender].field_1280 - balanceOf[msg.sender].field_1536):
        revert with 0, 17
    balanceOf[msg.sender].field_1536 = balanceOf[msg.sender].field_1280
    if withdrawsCount > -2:
        revert with 0, 17
    withdrawsCount++
    withdraws[stor8].field_0 = block.timestamp
    withdraws[stor8].field_256 = balanceOf[msg.sender].field_1280 - balanceOf[msg.sender].field_1536
    call msg.sender with:
       value balanceOf[msg.sender].field_1280 - balanceOf[msg.sender].field_1536 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RewardPaid((balanceOf[msg.sender].field_1280 - balanceOf[msg.sender].field_1536), msg.sender);
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= balanceOf[msg.sender].field_768
    balanceOf[address(msg.sender)].field_1024 = block.timestamp
    if not balanceOf[address(msg.sender)].field_768:
        if balanceOf[address(msg.sender)].field_1280 > -1:
            revert with 0, 17
    else:
        idx = 0
        s = 0
        while idx < rewardsCount:
            mem[0] = idx
            mem[32] = 3
            if rewards[idx].field_256 <= balanceOf[address(msg.sender)].field_1024:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if balanceOf[address(msg.sender)].field_1024 >= rewards[idx].field_0:
                if block.timestamp < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 17
                if block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60 and rewards[idx].field_768 > -1 / block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60:
                    revert with 0, 17
                if balanceOf[address(msg.sender)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not totalStaked:
                    revert with 0, 18
                if 10000 * balanceOf[address(msg.sender)].field_768 / totalStaked and block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(msg.sender)].field_768 / totalStaked:
                    revert with 0, 17
                if s > !(10000 * balanceOf[address(msg.sender)].field_768 / totalStaked * block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60 * rewards[idx].field_768 / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10000 * balanceOf[address(msg.sender)].field_768 / totalStaked * block.timestamp - balanceOf[address(msg.sender)].field_1024 / 60 * rewards[idx].field_768 / 10000)
                continue 
            if block.timestamp < rewards[idx].field_0:
                revert with 0, 17
            if block.timestamp - rewards[idx].field_0 / 60 and rewards[idx].field_768 > -1 / block.timestamp - rewards[idx].field_0 / 60:
                revert with 0, 17
            if balanceOf[address(msg.sender)].field_768 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not totalStaked:
                revert with 0, 18
            if 10000 * balanceOf[address(msg.sender)].field_768 / totalStaked and block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 > -1 / 10000 * balanceOf[address(msg.sender)].field_768 / totalStaked:
                revert with 0, 17
            if s > !(10000 * balanceOf[address(msg.sender)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * balanceOf[address(msg.sender)].field_768 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000)
            continue 
        if balanceOf[address(msg.sender)].field_1280 > !s:
            revert with 0, 17
        balanceOf[address(msg.sender)].field_1280 += s
    idx = 0
    while idx < arg1:
        if idx >= balanceOf[msg.sender].field_0:
            revert with 0, 50
        if balanceOf[address(msg.sender)].field_768 < 1:
            revert with 0, 17
        balanceOf[address(msg.sender)].field_768--
        if balanceOf[address(msg.sender)].field_0 < 1:
            revert with 0, 17
        if balanceOf[address(msg.sender)].field_0 - 1 >= balanceOf[address(msg.sender)].field_0:
            revert with 0, 50
        if balanceOf[address(msg.sender)][1][balanceOf[msg.sender][idx].field_0].field_0 >= balanceOf[address(msg.sender)].field_0:
            revert with 0, 50
        balanceOf[address(msg.sender)][balanceOf[address(msg.sender)][1][balanceOf[msg.sender][idx].field_0].field_0].field_0 = balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0
        balanceOf[address(msg.sender)][1][balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0].field_0 = balanceOf[address(msg.sender)][1][balanceOf[msg.sender][idx].field_0].field_0
        if balanceOf[address(msg.sender)].field_0:
            if not balanceOf[address(msg.sender)].field_0:
                revert with 0, 49
            balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = 0
            balanceOf[address(msg.sender)].field_0--
            balanceOf[address(msg.sender)][1][balanceOf[msg.sender][idx].field_0].field_0 = 0
        if not balanceOf[address(msg.sender)].field_768:
            if stakersList.length < 1:
                revert with 0, 17
            if stakersList.length - 1 >= stakersList.length:
                revert with 0, 50
            if balanceOf[address(msg.sender)].field_512 >= stakersList.length:
                revert with 0, 50
            stakersList[stor1[address(msg.sender)].field_512] = stakersList[stakersList.length]
            if stakersList.length:
                if not stakersList.length:
                    revert with 0, 49
                stakersList[stakersList.length] = 0
                stakersList.length--
            balanceOf[address(msg.sender)].field_1024 = 0
        mem[0] = balanceOf[msg.sender][idx].field_0
        mem[32] = 2
        tokenOwner[stor1[msg.sender][idx].field_0] = 0
        if totalStaked < 1:
            revert with 0, 17
        totalStaked--
        mem[132] = msg.sender
        mem[164] = balanceOf[msg.sender][idx].field_0
        require ext_code.size(sub_fcee510eAddress)
        call sub_fcee510eAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args this.address, msg.sender, balanceOf[msg.sender][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = msg.sender
        mem[128] = balanceOf[msg.sender][idx].field_0
        emit UnStaked(msg.sender, balanceOf[msg.sender][idx].field_0);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
