contract main {




// =====================  Runtime code  =====================


address owner;
array of struct balanceOf;
mapping of struct rewards;
mapping of struct withdraws;
array of address stakersList;
uint256 totalStaked;
uint256 rewardsCount;
uint256 withdrawsCount;
address sub_fcee510eAddress;

function stakersList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stakersList.length
    return address(stakersList[arg1])
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
    return balanceOf[address(arg1)].field_512
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
    return balanceOf[arg1].field_256, 
           balanceOf[arg1].field_512,
           balanceOf[arg1].field_768,
           balanceOf[arg1].field_1024,
           balanceOf[arg1].field_1280
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

function deposit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsCount++
    rewards[stor6].field_0 = block.timestamp
    rewards[stor6].field_256 = block.timestamp + (720 * 24 * 3600)
    rewards[stor6].field_512 = msg.value
    rewards[stor6].field_768 = 60 * msg.value / 720 * 24 * 3600
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

function percentOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)].field_512:
        return 0
    if balanceOf[address(arg1)].field_512 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not totalStaked:
        revert with 0, 18
    return (10000 * balanceOf[address(arg1)].field_512 / totalStaked / 100)
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

function sub_e3263960(?) {
    if block.timestamp < 168 * 24 * 3600:
        revert with 0, 17
    idx = 0
    s = 0
    while idx < withdrawsCount:
        mem[0] = idx
        mem[32] = 3
        if block.timestamp - (168 * 24 * 3600) > withdraws[idx].field_0:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > !withdraws[idx].field_256:
            revert with 0, 17
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = s + withdraws[idx].field_256
        continue 
    return s
}

function _getReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)].field_512:
        return 0
    idx = 0
    s = 0
    while idx < rewardsCount:
        mem[0] = idx
        mem[32] = 2
        if rewards[idx].field_256 <= balanceOf[address(arg1)].field_768:
            idx = idx + 1
            s = s
            continue 
        if not totalStaked:
            revert with 0, 18
        if balanceOf[address(arg1)].field_768 >= rewards[idx].field_0:
            idx = idx + 1
            s = (10000 * balanceOf[address(arg1)].field_512 / totalStaked * block.timestamp - balanceOf[address(arg1)].field_768 / 60 * rewards[idx].field_768 / 10000) + s
            continue 
        idx = idx + 1
        s = (10000 * balanceOf[address(arg1)].field_512 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000) + s
        continue 
    return s
}

function totalRewardOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)].field_512:
        if 0 > !balanceOf[address(arg1)].field_1024:
            revert with 0, 17
        return balanceOf[address(arg1)].field_1024
    idx = 0
    s = 0
    while idx < rewardsCount:
        mem[0] = idx
        mem[32] = 2
        if rewards[idx].field_256 <= balanceOf[address(arg1)].field_768:
            idx = idx + 1
            s = s
            continue 
        if not totalStaked:
            revert with 0, 18
        if balanceOf[address(arg1)].field_768 >= rewards[idx].field_0:
            idx = idx + 1
            s = (10000 * balanceOf[address(arg1)].field_512 / totalStaked * block.timestamp - balanceOf[address(arg1)].field_768 / 60 * rewards[idx].field_768 / 10000) + s
            continue 
        idx = idx + 1
        s = (10000 * balanceOf[address(arg1)].field_512 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000) + s
        continue 
    if s > !balanceOf[address(arg1)].field_1024:
        revert with 0, 17
    return (s + balanceOf[address(arg1)].field_1024)
}

function rewardOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)].field_512:
        if 0 > !balanceOf[address(arg1)].field_1024:
            revert with 0, 17
        if balanceOf[address(arg1)].field_1024 < balanceOf[address(arg1)].field_1280:
            revert with 0, 17
        return (balanceOf[address(arg1)].field_1024 - balanceOf[address(arg1)].field_1280)
    idx = 0
    s = 0
    while idx < rewardsCount:
        mem[0] = idx
        mem[32] = 2
        if rewards[idx].field_256 <= balanceOf[address(arg1)].field_768:
            idx = idx + 1
            s = s
            continue 
        if not totalStaked:
            revert with 0, 18
        if balanceOf[address(arg1)].field_768 >= rewards[idx].field_0:
            idx = idx + 1
            s = (10000 * balanceOf[address(arg1)].field_512 / totalStaked * block.timestamp - balanceOf[address(arg1)].field_768 / 60 * rewards[idx].field_768 / 10000) + s
            continue 
        idx = idx + 1
        s = (10000 * balanceOf[address(arg1)].field_512 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000) + s
        continue 
    if s > !balanceOf[address(arg1)].field_1024:
        revert with 0, 17
    if s + balanceOf[address(arg1)].field_1024 < balanceOf[address(arg1)].field_1280:
        revert with 0, 17
    return (s + balanceOf[address(arg1)].field_1024 - balanceOf[address(arg1)].field_1280)
}

function withdraw() {
    if not balanceOf[address(msg.sender)].field_512:
        balanceOf[address(msg.sender)].field_768 = block.timestamp
    else:
        idx = 0
        s = 0
        while idx < rewardsCount:
            mem[0] = idx
            mem[32] = 2
            if rewards[idx].field_256 <= balanceOf[address(msg.sender)].field_768:
                idx = idx + 1
                s = s
                continue 
            if not totalStaked:
                revert with 0, 18
            if balanceOf[address(msg.sender)].field_768 >= rewards[idx].field_0:
                idx = idx + 1
                s = (10000 * balanceOf[address(msg.sender)].field_512 / totalStaked * block.timestamp - balanceOf[address(msg.sender)].field_768 / 60 * rewards[idx].field_768 / 10000) + s
                continue 
            idx = idx + 1
            s = (10000 * balanceOf[address(msg.sender)].field_512 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000) + s
            continue 
        balanceOf[address(msg.sender)].field_768 = block.timestamp
        balanceOf[address(msg.sender)].field_1024 += s
    if eth.balance(this.address) < balanceOf[msg.sender].field_1024 - balanceOf[msg.sender].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The function is not available at the moment, try again later'
    balanceOf[msg.sender].field_1280 = balanceOf[msg.sender].field_1024
    withdrawsCount++
    withdraws[stor7].field_0 = block.timestamp
    withdraws[stor7].field_256 = balanceOf[msg.sender].field_1024 - balanceOf[msg.sender].field_1280
    call msg.sender with:
       value balanceOf[msg.sender].field_1024 - balanceOf[msg.sender].field_1280 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= balanceOf[msg.sender].field_512
    if not balanceOf[address(msg.sender)].field_512:
        balanceOf[address(msg.sender)].field_768 = block.timestamp
    else:
        idx = 0
        s = 0
        while idx < rewardsCount:
            mem[0] = idx
            mem[32] = 2
            if rewards[idx].field_256 <= balanceOf[address(msg.sender)].field_768:
                idx = idx + 1
                s = s
                continue 
            if not totalStaked:
                revert with 0, 18
            if balanceOf[address(msg.sender)].field_768 >= rewards[idx].field_0:
                idx = idx + 1
                s = (10000 * balanceOf[address(msg.sender)].field_512 / totalStaked * block.timestamp - balanceOf[address(msg.sender)].field_768 / 60 * rewards[idx].field_768 / 10000) + s
                continue 
            idx = idx + 1
            s = (10000 * balanceOf[address(msg.sender)].field_512 / totalStaked * block.timestamp - rewards[idx].field_0 / 60 * rewards[idx].field_768 / 10000) + s
            continue 
        balanceOf[address(msg.sender)].field_768 = block.timestamp
        balanceOf[address(msg.sender)].field_1024 += s
    idx = 0
    while idx < arg1:
        balanceOf[msg.sender].field_512--
        if balanceOf[msg.sender].field_0 - 1 >= balanceOf[msg.sender].field_0:
            revert with 0, 50
        if not balanceOf[msg.sender].field_0:
            revert with 0, 49
        mem[0] = sha3(msg.sender, 1)
        balanceOf[msg.sender][balanceOf[msg.sender].field_0].field_0 = 0
        balanceOf[msg.sender].field_0--
        totalStaked--
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = balanceOf[msg.sender][balanceOf[msg.sender].field_0].field_0
        require ext_code.size(sub_fcee510eAddress)
        call sub_fcee510eAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, balanceOf[msg.sender][balanceOf[msg.sender].field_0].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function stake(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[100] = msg.sender
    mem[132] = this.address
    staticcall sub_fcee510eAddress.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    idx = 0
    while idx < stakersList.length:
        mem[0] = address(stakersList[idx])
        mem[32] = 1
        if not balanceOf[address(stor4[idx])].field_512:
            balanceOf[address(stor4[idx])].field_768 = block.timestamp
        else:
            s = 0
            t = 0
            while s < rewardsCount:
                mem[0] = s
                mem[32] = 2
                if rewards[s].field_256 <= balanceOf[address(stor4[idx])].field_768:
                    s = s + 1
                    t = t
                    continue 
                if not totalStaked:
                    revert with 0, 18
                if balanceOf[address(stor4[idx])].field_768 >= rewards[s].field_0:
                    s = s + 1
                    t = (10000 * balanceOf[address(stor4[idx])].field_512 / totalStaked * block.timestamp - balanceOf[address(stor4[idx])].field_768 / 60 * rewards[s].field_768 / 10000) + t
                    continue 
                s = s + 1
                t = (10000 * balanceOf[address(stor4[idx])].field_512 / totalStaked * block.timestamp - rewards[s].field_0 / 60 * rewards[s].field_768 / 10000) + t
                continue 
            balanceOf[address(stor4[idx])].field_768 = block.timestamp
            balanceOf[address(stor4[idx])].field_1024 += t
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        staticcall sub_fcee510eAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_44] == mem[_44 + 12 len 20]
        require mem[_44 + 12 len 20] == msg.sender
        if not balanceOf[msg.sender].field_512:
            if not balanceOf[msg.sender].field_768:
                balanceOf[msg.sender].field_768 = block.timestamp
                balanceOf[msg.sender].field_256 = stakersList.length
                stakersList.length++
                uint256(stakersList[stakersList.length]) = msg.sender or Mask(96, 160, uint256(stakersList[stakersList.length]))
        balanceOf[msg.sender].field_512++
        if idx >= arg1.length:
            revert with 0, 50
        balanceOf[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 1)
        balanceOf[msg.sender][balanceOf[msg.sender].field_0].field_0 = cd[((32 * idx) + arg1 + 36)]
        totalStaked++
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(sub_fcee510eAddress)
        call sub_fcee510eAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
