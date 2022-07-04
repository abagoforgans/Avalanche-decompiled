contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_4b73c85b;
mapping of address sub_8c6f90ba;
array of struct stakerToTokenIds;
mapping of uint256 lastClaimedAt;
uint8 stor5;
uint256 maxPerWallet;
uint8 stor7;
uint8 stor7; offset 8
uint8 stor7; offset 16
uint256 stor7; offset 16
uint256 stor7; offset 8
uint256 sub_4936a178;
uint256 sub_a7f5882c;
uint256 sub_cac09aff;
uint256 sub_70d71ef1;
uint256 sub_b79d1f6a;
uint256 sub_167b0368;
uint256 bonusPercent;
address sub_a29230efAddress;
address NEXUSAddress;

function sub_0b3acc6c(?) payable {
    return bool(stor5)
}

function sub_167b0368(?) payable {
    return sub_167b0368
}

function NEXUS() payable {
    return NEXUSAddress
}

function lastClaimedAt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaimedAt[arg1]
}

function maxPerWallet() payable {
    return maxPerWallet
}

function sub_4936a178(?) payable {
    return sub_4936a178
}

function sub_4b73c85b(?) payable {
    require calldata.size - 4 >= 32
    return sub_4b73c85b[arg1]
}

function sub_5877c250(?) payable {
    return bool(uint8(stor7.field_8))
}

function sub_5aeefe0b(?) payable {
    return bool(uint8(stor7.field_0))
}

function sub_70d71ef1(?) payable {
    return sub_70d71ef1
}

function tokenIdToStaker(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(sub_8c6f90ba[arg1])
}

function sub_8c6f90ba(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_8c6f90ba[arg1])
}

function owner() payable {
    return owner
}

function sub_a29230ef(?) payable {
    return sub_a29230efAddress
}

function sub_a7f5882c(?) payable {
    return sub_a7f5882c
}

function sub_b79d1f6a(?) payable {
    return sub_b79d1f6a
}

function stakerToTokenIds(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < stakerToTokenIds[arg1].field_0
    return stakerToTokenIds[arg1][arg2].field_0
}

function bonusPercent() payable {
    return bonusPercent
}

function sub_cac09aff(?) payable {
    return sub_cac09aff
}

function sub_ff8d1c2f(?) payable {
    return bool(uint8(stor7.field_16))
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

function sub_65413045(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b79d1f6a = arg1
}

function sub_7703e880(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cac09aff = arg1
}

function sub_7cf4eb52(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a7f5882c = arg1
}

function sub_a2717d8b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4936a178 = arg1
}

function sub_cecede8a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_70d71ef1 = arg1
}

function sub_fa070af4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_167b0368 = arg1
}

function setBonusPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusPercent = arg1
}

function setMaxPerWallet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxPerWallet = arg1
}

function sub_5b3f5b15(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = uint8(bool(arg1))
}

function sub_ac20a290(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor7.field_0) = uint8(bool(arg1))
}

function sub_7792e64f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor7.field_8) = Mask(248, 0, bool(arg1))
}

function sub_f1b7602f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor7.field_16) = Mask(240, 0, bool(arg1))
}

function sub_7540bbc1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < lastClaimedAt[address(arg1)]:
        revert with 0, 17
    return (block.timestamp - lastClaimedAt[address(arg1)] < sub_cac09aff)
}

function sub_5256af73(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xbeff2780: NEXUSAddress, address(arg1)
    NEXUSAddress = address(arg1)
}

function sub_f2f48546(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x4a0a778f: sub_a29230efAddress, address(arg1)
    sub_a29230efAddress = address(arg1)
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

function sub_b372fd6a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < lastClaimedAt[address(arg1)]:
        revert with 0, 17
    if block.timestamp - lastClaimedAt[address(arg1)] >= sub_a7f5882c:
        return sub_167b0368
    if block.timestamp - lastClaimedAt[address(arg1)] < sub_4936a178:
        return sub_70d71ef1
    return sub_b79d1f6a
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function getRewardsByTokenId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    staticcall NEXUSAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        return 0
    staticcall NEXUSAddress.0x5658892b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < sub_4b73c85b[arg1]:
        revert with 0, 17
    if block.timestamp - sub_4b73c85b[arg1] and ext_call.return_data[0] > -1 / block.timestamp - sub_4b73c85b[arg1]:
        revert with 0, 17
    return ((block.timestamp * ext_call.return_data[0]) - (sub_4b73c85b[arg1] * ext_call.return_data[0]))
}

function getTokensStaked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakerToTokenIds[address(arg1)].field_0:
        mem[128] = stakerToTokenIds[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stakerToTokenIds[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stakerToTokenIds[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stakerToTokenIds[address(arg1)].field_0, data=mem[128 len 32 * stakerToTokenIds[address(arg1)].field_0])
    mem[(32 * stakerToTokenIds[address(arg1)].field_0) + 128] = 32
    mem[(32 * stakerToTokenIds[address(arg1)].field_0) + 160] = stakerToTokenIds[address(arg1)].field_0
    mem[(32 * stakerToTokenIds[address(arg1)].field_0) + 192 len 32 * stakerToTokenIds[address(arg1)].field_0] = mem[128 len 32 * stakerToTokenIds[address(arg1)].field_0]
    return memory
      from (32 * stakerToTokenIds[address(arg1)].field_0) + 128
       len (96 * stakerToTokenIds[address(arg1)].field_0) + 64
}

function getAllRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 3
    mem[64] = (32 * stakerToTokenIds[address(arg1)].field_0) + 128
    mem[96] = stakerToTokenIds[address(arg1)].field_0
    if not stakerToTokenIds[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < stakerToTokenIds[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _21 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall NEXUSAddress.0x6352211e with:
                    gas gas_remaining wei
                   args _21
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_25] == mem[_25 + 12 len 20]
            if mem[_25 + 12 len 20] != this.address:
                if s > -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[mem[64] + 4] = _21
            staticcall NEXUSAddress.0x5658892b with:
                    gas gas_remaining wei
                   args _21
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _30 = mem[_29]
            mem[0] = _21
            mem[32] = 1
            if block.timestamp < sub_4b73c85b[_21]:
                revert with 0, 17
            if block.timestamp - sub_4b73c85b[_21] and _30 > -1 / block.timestamp - sub_4b73c85b[_21]:
                revert with 0, 17
            if s > !((block.timestamp * _30) - (sub_4b73c85b[_21] * _30)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (block.timestamp * _30) - (sub_4b73c85b[_21] * _30)
            continue 
    else:
        mem[0] = sha3(address(arg1), 3)
        mem[128] = stakerToTokenIds[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stakerToTokenIds[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stakerToTokenIds[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        s = 0
        while idx < stakerToTokenIds[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _49 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall NEXUSAddress.0x6352211e with:
                    gas gas_remaining wei
                   args _49
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_53] == mem[_53 + 12 len 20]
            if mem[_53 + 12 len 20] != this.address:
                if s > -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[mem[64] + 4] = _49
            staticcall NEXUSAddress.0x5658892b with:
                    gas gas_remaining wei
                   args _49
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _58 = mem[_57]
            mem[0] = _49
            mem[32] = 1
            if block.timestamp < sub_4b73c85b[_49]:
                revert with 0, 17
            if block.timestamp - sub_4b73c85b[_49] and _58 > -1 / block.timestamp - sub_4b73c85b[_49]:
                revert with 0, 17
            if s > !((block.timestamp * _58) - (sub_4b73c85b[_49] * _58)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (block.timestamp * _58) - (sub_4b73c85b[_49] * _58)
            continue 
    return s
}

function stake(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[100] = msg.sender
    staticcall sub_a29230efAddress.isInBlacklist(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NexusVault: blacklisted address'
    if not stor5:
        idx = 0
        while idx < arg1.length:
            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
            staticcall NEXUSAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _52 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_52] == mem[_52 + 12 len 20]
            if mem[_52 + 12 len 20] != msg.sender:
                revert with 0, 'NexusVault: owner and caller differ'
            if idx >= arg1.length:
                revert with 0, 50
            if address(sub_8c6f90ba[cd[((32 * idx) + arg1 + 36)]]):
                revert with 0, 'NexusVault: token already staked'
            if idx >= arg1.length:
                revert with 0, 50
            emit TokenStaked(cd[((32 * idx) + arg1 + 36)]);
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(NEXUSAddress)
            call NEXUSAddress.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= arg1.length:
                revert with 0, 50
            stakerToTokenIds[address(msg.sender)].field_0++
            stakerToTokenIds[address(msg.sender)][stakerToTokenIds[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + arg1 + 36)]
            sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] = block.timestamp
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 2
            address(sub_8c6f90ba[cd[((32 * idx) + arg1 + 36)]]) = msg.sender
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 3
        if stakerToTokenIds[msg.sender].field_0 > !arg1.length:
            revert with 0, 17
        if stakerToTokenIds[msg.sender].field_0 + arg1.length > maxPerWallet:
            revert with 0, 'NexusVault: wallet limit reached'
        idx = 0
        while idx < arg1.length:
            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
            staticcall NEXUSAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_53] == mem[_53 + 12 len 20]
            if mem[_53 + 12 len 20] != msg.sender:
                revert with 0, 'NexusVault: owner and caller differ'
            if idx >= arg1.length:
                revert with 0, 50
            if address(sub_8c6f90ba[cd[((32 * idx) + arg1 + 36)]]):
                revert with 0, 'NexusVault: token already staked'
            if idx >= arg1.length:
                revert with 0, 50
            emit TokenStaked(cd[((32 * idx) + arg1 + 36)]);
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(NEXUSAddress)
            call NEXUSAddress.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= arg1.length:
                revert with 0, 50
            stakerToTokenIds[address(msg.sender)].field_0++
            stakerToTokenIds[address(msg.sender)][stakerToTokenIds[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + arg1 + 36)]
            sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] = block.timestamp
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 2
            address(sub_8c6f90ba[cd[((32 * idx) + arg1 + 36)]]) = msg.sender
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    lastClaimedAt[msg.sender] = block.timestamp
}

function claim(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[100] = msg.sender
    staticcall sub_a29230efAddress.isInBlacklist(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NexusVault: blacklisted address'
    idx = 0
    s = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 2
        if address(sub_8c6f90ba[cd[((32 * idx) + arg1 + 36)]]) != msg.sender:
            revert with 0, 'NexusVault: owner and caller differ'
        if idx >= arg1.length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        staticcall NEXUSAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_76] == mem[_76 + 12 len 20]
        if mem[_76 + 12 len 20] != this.address:
            if s > -1:
                revert with 0, 17
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 1
            sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        staticcall NEXUSAddress.0x5658892b with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _91 = mem[_88]
        if block.timestamp < sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 17
        if block.timestamp - sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] and mem[_88] > -1 / block.timestamp - sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 17
        if s > !((block.timestamp * mem[_88]) - (sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] * mem[_88])):
            revert with 0, 17
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 1
        sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (block.timestamp * _91) - (sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] * _91)
        continue 
    if not uint8(stor7.field_0):
        mem[0] = msg.sender
        mem[32] = 4
        lastClaimedAt[msg.sender] = block.timestamp
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = s
        call sub_a29230efAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == bool(mem[_69])
        emit RewardsClaimed(s, msg.sender);
    else:
        if block.timestamp < lastClaimedAt[address(msg.sender)]:
            revert with 0, 17
        if block.timestamp - lastClaimedAt[address(msg.sender)] >= sub_cac09aff:
            if not uint8(stor7.field_8):
                mem[0] = msg.sender
                mem[32] = 4
                lastClaimedAt[msg.sender] = block.timestamp
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                call sub_a29230efAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _84 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_84] == bool(mem[_84])
                emit RewardsClaimed(s, msg.sender);
            else:
                if s and bonusPercent > -1 / s:
                    revert with 0, 17
                if s > !(s * bonusPercent / 100):
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                lastClaimedAt[msg.sender] = block.timestamp
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s + (s * bonusPercent / 100)
                call sub_a29230efAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s + (s * bonusPercent / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _97 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_97] == bool(mem[_97])
                emit RewardsClaimed(s + (s * bonusPercent / 100), msg.sender);
        else:
            if block.timestamp < lastClaimedAt[address(msg.sender)]:
                revert with 0, 17
            if block.timestamp - lastClaimedAt[address(msg.sender)] >= sub_a7f5882c:
                if s and sub_167b0368 > -1 / s:
                    revert with 0, 17
                if s < s * sub_167b0368 / 100:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                lastClaimedAt[msg.sender] = block.timestamp
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s - (s * sub_167b0368 / 100)
                call sub_a29230efAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s - (s * sub_167b0368 / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _110 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_110] == bool(mem[_110])
                emit RewardsClaimed(s - (s * sub_167b0368 / 100), msg.sender);
            else:
                if block.timestamp - lastClaimedAt[address(msg.sender)] < sub_4936a178:
                    if s and sub_70d71ef1 > -1 / s:
                        revert with 0, 17
                    if s < s * sub_70d71ef1 / 100:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    lastClaimedAt[msg.sender] = block.timestamp
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s - (s * sub_70d71ef1 / 100)
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s - (s * sub_70d71ef1 / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_111] == bool(mem[_111])
                    emit RewardsClaimed(s - (s * sub_70d71ef1 / 100), msg.sender);
                else:
                    if s and sub_b79d1f6a > -1 / s:
                        revert with 0, 17
                    if s < s * sub_b79d1f6a / 100:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    lastClaimedAt[msg.sender] = block.timestamp
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s - (s * sub_b79d1f6a / 100)
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s - (s * sub_b79d1f6a / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_112] == bool(mem[_112])
                    emit RewardsClaimed(s - (s * sub_b79d1f6a / 100), msg.sender);
}

function unstake(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[100] = msg.sender
    staticcall sub_a29230efAddress.isInBlacklist(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NexusVault: blacklisted address'
    idx = 0
    s = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 2
        if address(sub_8c6f90ba[cd[((32 * idx) + arg1 + 36)]]) != msg.sender:
            revert with 0, 'NexusVault: owner and caller differ'
        if idx >= arg1.length:
            revert with 0, 50
        emit TokenUnstaked(cd[((32 * idx) + arg1 + 36)]);
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        staticcall NEXUSAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_106] == mem[_106 + 12 len 20]
        if mem[_106 + 12 len 20] != this.address:
            if s > -1:
                revert with 0, 17
            if idx >= arg1.length:
                revert with 0, 50
            t = 0
            while t < stakerToTokenIds[address(msg.sender)].field_0:
                if t >= stakerToTokenIds[address(msg.sender)].field_0:
                    revert with 0, 50
                if stakerToTokenIds[address(msg.sender)][t].field_0 == cd[((32 * idx) + arg1 + 36)]:
                    if t < stakerToTokenIds[address(msg.sender)].field_0:
                        if var64001 < 1:
                            revert with 0, 17
                        if var68002 < var68001:
                            if 1 > !var72002:
                                revert with 0, 17
                            s = var74003 + 1
                            u = var74005
                            v = var74006
                            while s < stor[u]:
                                if v >= stakerToTokenIds[address(msg.sender)].field_0:
                                    revert with 0, 50
                                stakerToTokenIds[address(msg.sender)][v].field_0 = stor[sha3(u) + s]
                                if v == -1:
                                    revert with 0, 17
                                if stakerToTokenIds[address(msg.sender)].field_0 < 1:
                                    revert with 0, 17
                                if v + 1 < stakerToTokenIds[address(msg.sender)].field_0 - 1:
                                    if 1 > !(v + 1):
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 3
                                    s = v + 2
                                    u = sha3(address(msg.sender), 3)
                                    v = v + 1
                                    continue 
                                if not stakerToTokenIds[address(msg.sender)].field_0:
                                    revert with 0, 49
                                stakerToTokenIds[address(msg.sender)][stakerToTokenIds[address(msg.sender)].field_0].field_0 = 0
                                stakerToTokenIds[address(msg.sender)].field_0--
                                if t == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 3
                                t = t + 1
                                continue 
                            revert with 0, 50
                        if not stakerToTokenIds[address(msg.sender)].field_0:
                            revert with 0, 49
                        stakerToTokenIds[address(msg.sender)][stakerToTokenIds[address(msg.sender)].field_0].field_0 = 0
                        stakerToTokenIds[address(msg.sender)].field_0--
                if t == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                t = t + 1
                continue 
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 2
            address(sub_8c6f90ba[cd[((32 * idx) + arg1 + 36)]]) = 0
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(NEXUSAddress)
            call NEXUSAddress.0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        staticcall NEXUSAddress.0x5658892b with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _121 = mem[_120]
        if block.timestamp < sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 17
        if block.timestamp - sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] and mem[_120] > -1 / block.timestamp - sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 17
        if s > !((block.timestamp * mem[_120]) - (sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] * mem[_120])):
            revert with 0, 17
        if idx >= arg1.length:
            revert with 0, 50
        t = 0
        while t < stakerToTokenIds[address(msg.sender)].field_0:
            if t >= stakerToTokenIds[address(msg.sender)].field_0:
                revert with 0, 50
            if stakerToTokenIds[address(msg.sender)][t].field_0 == cd[((32 * idx) + arg1 + 36)]:
                if t < stakerToTokenIds[address(msg.sender)].field_0:
                    if var74001 < 1:
                        revert with 0, 17
                    if var78002 < var78001:
                        if 1 > !var82002:
                            revert with 0, 17
                        s = var84003 + 1
                        u = var84005
                        v = var84006
                        while s < stor[u]:
                            if v >= stakerToTokenIds[address(msg.sender)].field_0:
                                revert with 0, 50
                            stakerToTokenIds[address(msg.sender)][v].field_0 = stor[sha3(u) + s]
                            if v == -1:
                                revert with 0, 17
                            if stakerToTokenIds[address(msg.sender)].field_0 < 1:
                                revert with 0, 17
                            if v + 1 < stakerToTokenIds[address(msg.sender)].field_0 - 1:
                                if 1 > !(v + 1):
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 3
                                s = v + 2
                                u = sha3(address(msg.sender), 3)
                                v = v + 1
                                continue 
                            if not stakerToTokenIds[address(msg.sender)].field_0:
                                revert with 0, 49
                            stakerToTokenIds[address(msg.sender)][stakerToTokenIds[address(msg.sender)].field_0].field_0 = 0
                            stakerToTokenIds[address(msg.sender)].field_0--
                            if t == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            t = t + 1
                            continue 
                        revert with 0, 50
                    if not stakerToTokenIds[address(msg.sender)].field_0:
                        revert with 0, 49
                    stakerToTokenIds[address(msg.sender)][stakerToTokenIds[address(msg.sender)].field_0].field_0 = 0
                    stakerToTokenIds[address(msg.sender)].field_0--
            if t == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 3
            t = t + 1
            continue 
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 2
        address(sub_8c6f90ba[cd[((32 * idx) + arg1 + 36)]]) = 0
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(NEXUSAddress)
        call NEXUSAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (block.timestamp * _121) - (sub_4b73c85b[cd[((32 * idx) + arg1 + 36)]] * _121)
        continue 
    if not uint8(stor7.field_0):
        mem[0] = msg.sender
        mem[32] = 4
        lastClaimedAt[msg.sender] = block.timestamp
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = s
        call sub_a29230efAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_97] == bool(mem[_97])
        emit RewardsClaimed(s, msg.sender);
    else:
        if block.timestamp < lastClaimedAt[address(msg.sender)]:
            revert with 0, 17
        if block.timestamp - lastClaimedAt[address(msg.sender)] >= sub_cac09aff:
            if not uint8(stor7.field_8):
                mem[0] = msg.sender
                mem[32] = 4
                lastClaimedAt[msg.sender] = block.timestamp
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                call sub_a29230efAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _113 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_113] == bool(mem[_113])
                emit RewardsClaimed(s, msg.sender);
            else:
                if s and bonusPercent > -1 / s:
                    revert with 0, 17
                if s > !(s * bonusPercent / 100):
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                lastClaimedAt[msg.sender] = block.timestamp
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s + (s * bonusPercent / 100)
                call sub_a29230efAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s + (s * bonusPercent / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _126 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_126] == bool(mem[_126])
                emit RewardsClaimed(s + (s * bonusPercent / 100), msg.sender);
        else:
            if block.timestamp < lastClaimedAt[address(msg.sender)]:
                revert with 0, 17
            if block.timestamp - lastClaimedAt[address(msg.sender)] >= sub_a7f5882c:
                if s and sub_167b0368 > -1 / s:
                    revert with 0, 17
                if s < s * sub_167b0368 / 100:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                lastClaimedAt[msg.sender] = block.timestamp
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s - (s * sub_167b0368 / 100)
                call sub_a29230efAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s - (s * sub_167b0368 / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _142 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_142] == bool(mem[_142])
                emit RewardsClaimed(s - (s * sub_167b0368 / 100), msg.sender);
            else:
                if block.timestamp - lastClaimedAt[address(msg.sender)] < sub_4936a178:
                    if s and sub_70d71ef1 > -1 / s:
                        revert with 0, 17
                    if s < s * sub_70d71ef1 / 100:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    lastClaimedAt[msg.sender] = block.timestamp
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s - (s * sub_70d71ef1 / 100)
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s - (s * sub_70d71ef1 / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_144] == bool(mem[_144])
                    emit RewardsClaimed(s - (s * sub_70d71ef1 / 100), msg.sender);
                else:
                    if s and sub_b79d1f6a > -1 / s:
                        revert with 0, 17
                    if s < s * sub_b79d1f6a / 100:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    lastClaimedAt[msg.sender] = block.timestamp
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s - (s * sub_b79d1f6a / 100)
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s - (s * sub_b79d1f6a / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_145] == bool(mem[_145])
                    emit RewardsClaimed(s - (s * sub_b79d1f6a / 100), msg.sender);
}

function sub_1f64e887(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[100] = msg.sender
    staticcall sub_a29230efAddress.isInBlacklist(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NexusVault: blacklisted address'
    if not uint8(stor7.field_0):
        revert with 0, 'NexusVault: claim tax not enabled'
    if not uint8(stor7.field_16):
        revert with 0, 'NexusVault: compounding not enabled'
    if not stor5:
        mem[ceil32(return_data.size) + 100] = arg1
        staticcall NEXUSAddress.0x252a8875 with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = msg.sender
        mem[32] = 3
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stakerToTokenIds[msg.sender].field_0) + 128
        mem[(2 * ceil32(return_data.size)) + 96] = stakerToTokenIds[msg.sender].field_0
        if not stakerToTokenIds[msg.sender].field_0:
            idx = 0
            s = 0
            while idx < stakerToTokenIds[msg.sender].field_0:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _173 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                staticcall NEXUSAddress.0x6352211e with:
                        gas gas_remaining wei
                       args _173
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_182] == mem[_182 + 12 len 20]
                if mem[_182 + 12 len 20] != this.address:
                    if s > -1:
                        revert with 0, 17
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                    mem[32] = 1
                    sub_4b73c85b[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = block.timestamp
                    if s <= ext_call.return_data[0]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = arg2.length
                    mem[mem[64] + 132 len arg2.length] = arg2[all]
                    mem[arg2.length + mem[64] + 132] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args address(this.address), arg1, Array(len=arg2.length, data=arg2[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall NEXUSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _210 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _214 = mem[_210]
                    if mem[_210] < 1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _214 - 1
                    staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _214 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _226 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _230 = mem[_226]
                    mem[0] = mem[_226]
                    mem[32] = 2
                    if address(sub_8c6f90ba[mem[0]]):
                        revert with 0, 'NexusVault: token already staked'
                    emit TokenStaked(_230);
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = msg.sender
                    emit 0x58cc2f05: _230, arg1, msg.sender
                    stakerToTokenIds[msg.sender].field_0++
                    stakerToTokenIds[msg.sender][stakerToTokenIds[msg.sender].field_0].field_0 = _230
                    mem[0] = _230
                    sub_4b73c85b[_230] = block.timestamp
                    mem[32] = 2
                    uint256(sub_8c6f90ba[_230]) = msg.sender or Mask(96, 160, uint256(sub_8c6f90ba[_230]))
                    if s < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s - ext_call.return_data[0]
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_266] == bool(mem[_266])
                else:
                    mem[mem[64] + 4] = _173
                    staticcall NEXUSAddress.0x5658892b with:
                            gas gas_remaining wei
                           args _173
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _190 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _192 = mem[_190]
                    if block.timestamp < sub_4b73c85b[_173]:
                        revert with 0, 17
                    if block.timestamp - sub_4b73c85b[_173] and mem[_190] > -1 / block.timestamp - sub_4b73c85b[_173]:
                        revert with 0, 17
                    if s > !((block.timestamp * mem[_190]) - (sub_4b73c85b[_173] * mem[_190])):
                        revert with 0, 17
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                    mem[32] = 1
                    sub_4b73c85b[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = block.timestamp
                    if s + (block.timestamp * _192) - (sub_4b73c85b[_173] * _192) <= ext_call.return_data[0]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (block.timestamp * _192) - (sub_4b73c85b[_173] * _192)
                        continue 
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = arg2.length
                    mem[mem[64] + 132 len arg2.length] = arg2[all]
                    mem[arg2.length + mem[64] + 132] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args address(this.address), arg1, Array(len=arg2.length, data=arg2[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall NEXUSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _237 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _259 = mem[_237]
                    if mem[_237] < 1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _259 - 1
                    staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _259 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _273 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _276 = mem[_273]
                    mem[0] = mem[_273]
                    mem[32] = 2
                    if address(sub_8c6f90ba[mem[0]]):
                        revert with 0, 'NexusVault: token already staked'
                    emit TokenStaked(_276);
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = msg.sender
                    emit 0x58cc2f05: _276, arg1, msg.sender
                    stakerToTokenIds[msg.sender].field_0++
                    stakerToTokenIds[msg.sender][stakerToTokenIds[msg.sender].field_0].field_0 = _276
                    mem[0] = _276
                    sub_4b73c85b[_276] = block.timestamp
                    mem[32] = 2
                    uint256(sub_8c6f90ba[_276]) = msg.sender or Mask(96, 160, uint256(sub_8c6f90ba[_276]))
                    if s + (block.timestamp * _192) - (sub_4b73c85b[_173] * _192) < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s + (block.timestamp * _192) - (sub_4b73c85b[_173] * _192) - ext_call.return_data[0]
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s + (block.timestamp * _192) - (sub_4b73c85b[_173] * _192) - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_304] == bool(mem[_304])
        else:
            mem[0] = sha3(msg.sender, 3)
            mem[(2 * ceil32(return_data.size)) + 128] = stakerToTokenIds[msg.sender].field_0
            idx = (2 * ceil32(return_data.size)) + 128
            s = 0
            while (2 * ceil32(return_data.size)) + (32 * stakerToTokenIds[msg.sender].field_0) + 96 > idx:
                mem[idx + 32] = stakerToTokenIds[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            s = 0
            while idx < stakerToTokenIds[msg.sender].field_0:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _453 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                staticcall NEXUSAddress.0x6352211e with:
                        gas gas_remaining wei
                       args _453
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _462 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_462] == mem[_462 + 12 len 20]
                if mem[_462 + 12 len 20] != this.address:
                    if s > -1:
                        revert with 0, 17
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                    mem[32] = 1
                    sub_4b73c85b[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = block.timestamp
                    if s <= ext_call.return_data[0]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = arg2.length
                    mem[mem[64] + 132 len arg2.length] = arg2[all]
                    mem[arg2.length + mem[64] + 132] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args address(this.address), arg1, Array(len=arg2.length, data=arg2[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall NEXUSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _494 = mem[_490]
                    if mem[_490] < 1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _494 - 1
                    staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _494 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _510 = mem[_506]
                    mem[0] = mem[_506]
                    mem[32] = 2
                    if address(sub_8c6f90ba[mem[0]]):
                        revert with 0, 'NexusVault: token already staked'
                    emit TokenStaked(_510);
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = msg.sender
                    emit 0x58cc2f05: _510, arg1, msg.sender
                    stakerToTokenIds[msg.sender].field_0++
                    stakerToTokenIds[msg.sender][stakerToTokenIds[msg.sender].field_0].field_0 = _510
                    mem[0] = _510
                    sub_4b73c85b[_510] = block.timestamp
                    mem[32] = 2
                    uint256(sub_8c6f90ba[_510]) = msg.sender or Mask(96, 160, uint256(sub_8c6f90ba[_510]))
                    if s < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s - ext_call.return_data[0]
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_546] == bool(mem[_546])
                else:
                    mem[mem[64] + 4] = _453
                    staticcall NEXUSAddress.0x5658892b with:
                            gas gas_remaining wei
                           args _453
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _472 = mem[_470]
                    if block.timestamp < sub_4b73c85b[_453]:
                        revert with 0, 17
                    if block.timestamp - sub_4b73c85b[_453] and mem[_470] > -1 / block.timestamp - sub_4b73c85b[_453]:
                        revert with 0, 17
                    if s > !((block.timestamp * mem[_470]) - (sub_4b73c85b[_453] * mem[_470])):
                        revert with 0, 17
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                    mem[32] = 1
                    sub_4b73c85b[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = block.timestamp
                    if s + (block.timestamp * _472) - (sub_4b73c85b[_453] * _472) <= ext_call.return_data[0]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (block.timestamp * _472) - (sub_4b73c85b[_453] * _472)
                        continue 
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = arg2.length
                    mem[mem[64] + 132 len arg2.length] = arg2[all]
                    mem[arg2.length + mem[64] + 132] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args address(this.address), arg1, Array(len=arg2.length, data=arg2[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall NEXUSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _539 = mem[_517]
                    if mem[_517] < 1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _539 - 1
                    staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _539 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _556 = mem[_553]
                    mem[0] = mem[_553]
                    mem[32] = 2
                    if address(sub_8c6f90ba[mem[0]]):
                        revert with 0, 'NexusVault: token already staked'
                    emit TokenStaked(_556);
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = msg.sender
                    emit 0x58cc2f05: _556, arg1, msg.sender
                    stakerToTokenIds[msg.sender].field_0++
                    stakerToTokenIds[msg.sender][stakerToTokenIds[msg.sender].field_0].field_0 = _556
                    mem[0] = _556
                    sub_4b73c85b[_556] = block.timestamp
                    mem[32] = 2
                    uint256(sub_8c6f90ba[_556]) = msg.sender or Mask(96, 160, uint256(sub_8c6f90ba[_556]))
                    if s + (block.timestamp * _472) - (sub_4b73c85b[_453] * _472) < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s + (block.timestamp * _472) - (sub_4b73c85b[_453] * _472) - ext_call.return_data[0]
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s + (block.timestamp * _472) - (sub_4b73c85b[_453] * _472) - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _584 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_584] == bool(mem[_584])
    else:
        if stakerToTokenIds[msg.sender].field_0 >= maxPerWallet:
            revert with 0, 'NexusVault: wallet limit reached'
        mem[ceil32(return_data.size) + 100] = arg1
        staticcall NEXUSAddress.0x252a8875 with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = msg.sender
        mem[32] = 3
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stakerToTokenIds[msg.sender].field_0) + 128
        mem[(2 * ceil32(return_data.size)) + 96] = stakerToTokenIds[msg.sender].field_0
        if not stakerToTokenIds[msg.sender].field_0:
            idx = 0
            s = 0
            while idx < stakerToTokenIds[msg.sender].field_0:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _175 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                staticcall NEXUSAddress.0x6352211e with:
                        gas gas_remaining wei
                       args _175
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_183] == mem[_183 + 12 len 20]
                if mem[_183 + 12 len 20] != this.address:
                    if s > -1:
                        revert with 0, 17
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                    mem[32] = 1
                    sub_4b73c85b[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = block.timestamp
                    if s <= ext_call.return_data[0]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = arg2.length
                    mem[mem[64] + 132 len arg2.length] = arg2[all]
                    mem[arg2.length + mem[64] + 132] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args address(this.address), arg1, Array(len=arg2.length, data=arg2[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall NEXUSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _211 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _217 = mem[_211]
                    if mem[_211] < 1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _217 - 1
                    staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _217 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _233 = mem[_228]
                    mem[0] = mem[_228]
                    mem[32] = 2
                    if address(sub_8c6f90ba[mem[0]]):
                        revert with 0, 'NexusVault: token already staked'
                    emit TokenStaked(_233);
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = msg.sender
                    emit 0x58cc2f05: _233, arg1, msg.sender
                    stakerToTokenIds[msg.sender].field_0++
                    stakerToTokenIds[msg.sender][stakerToTokenIds[msg.sender].field_0].field_0 = _233
                    mem[0] = _233
                    sub_4b73c85b[_233] = block.timestamp
                    mem[32] = 2
                    uint256(sub_8c6f90ba[_233]) = msg.sender or Mask(96, 160, uint256(sub_8c6f90ba[_233]))
                    if s < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s - ext_call.return_data[0]
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _267 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_267] == bool(mem[_267])
                else:
                    mem[mem[64] + 4] = _175
                    staticcall NEXUSAddress.0x5658892b with:
                            gas gas_remaining wei
                           args _175
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _191 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _193 = mem[_191]
                    if block.timestamp < sub_4b73c85b[_175]:
                        revert with 0, 17
                    if block.timestamp - sub_4b73c85b[_175] and mem[_191] > -1 / block.timestamp - sub_4b73c85b[_175]:
                        revert with 0, 17
                    if s > !((block.timestamp * mem[_191]) - (sub_4b73c85b[_175] * mem[_191])):
                        revert with 0, 17
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                    mem[32] = 1
                    sub_4b73c85b[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = block.timestamp
                    if s + (block.timestamp * _193) - (sub_4b73c85b[_175] * _193) <= ext_call.return_data[0]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (block.timestamp * _193) - (sub_4b73c85b[_175] * _193)
                        continue 
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = arg2.length
                    mem[mem[64] + 132 len arg2.length] = arg2[all]
                    mem[arg2.length + mem[64] + 132] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args address(this.address), arg1, Array(len=arg2.length, data=arg2[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall NEXUSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _239 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _261 = mem[_239]
                    if mem[_239] < 1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _261 - 1
                    staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _261 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _275 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _277 = mem[_275]
                    mem[0] = mem[_275]
                    mem[32] = 2
                    if address(sub_8c6f90ba[mem[0]]):
                        revert with 0, 'NexusVault: token already staked'
                    emit TokenStaked(_277);
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = msg.sender
                    emit 0x58cc2f05: _277, arg1, msg.sender
                    stakerToTokenIds[msg.sender].field_0++
                    stakerToTokenIds[msg.sender][stakerToTokenIds[msg.sender].field_0].field_0 = _277
                    mem[0] = _277
                    sub_4b73c85b[_277] = block.timestamp
                    mem[32] = 2
                    uint256(sub_8c6f90ba[_277]) = msg.sender or Mask(96, 160, uint256(sub_8c6f90ba[_277]))
                    if s + (block.timestamp * _193) - (sub_4b73c85b[_175] * _193) < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s + (block.timestamp * _193) - (sub_4b73c85b[_175] * _193) - ext_call.return_data[0]
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s + (block.timestamp * _193) - (sub_4b73c85b[_175] * _193) - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_305] == bool(mem[_305])
        else:
            mem[0] = sha3(msg.sender, 3)
            mem[(2 * ceil32(return_data.size)) + 128] = stakerToTokenIds[msg.sender].field_0
            idx = (2 * ceil32(return_data.size)) + 128
            s = 0
            while (2 * ceil32(return_data.size)) + (32 * stakerToTokenIds[msg.sender].field_0) + 96 > idx:
                mem[idx + 32] = stakerToTokenIds[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            s = 0
            while idx < stakerToTokenIds[msg.sender].field_0:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _455 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                staticcall NEXUSAddress.0x6352211e with:
                        gas gas_remaining wei
                       args _455
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_463] == mem[_463 + 12 len 20]
                if mem[_463 + 12 len 20] != this.address:
                    if s > -1:
                        revert with 0, 17
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                    mem[32] = 1
                    sub_4b73c85b[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = block.timestamp
                    if s <= ext_call.return_data[0]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = arg2.length
                    mem[mem[64] + 132 len arg2.length] = arg2[all]
                    mem[arg2.length + mem[64] + 132] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args address(this.address), arg1, Array(len=arg2.length, data=arg2[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall NEXUSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _497 = mem[_491]
                    if mem[_491] < 1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _497 - 1
                    staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _497 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _513 = mem[_508]
                    mem[0] = mem[_508]
                    mem[32] = 2
                    if address(sub_8c6f90ba[mem[0]]):
                        revert with 0, 'NexusVault: token already staked'
                    emit TokenStaked(_513);
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = msg.sender
                    emit 0x58cc2f05: _513, arg1, msg.sender
                    stakerToTokenIds[msg.sender].field_0++
                    stakerToTokenIds[msg.sender][stakerToTokenIds[msg.sender].field_0].field_0 = _513
                    mem[0] = _513
                    sub_4b73c85b[_513] = block.timestamp
                    mem[32] = 2
                    uint256(sub_8c6f90ba[_513]) = msg.sender or Mask(96, 160, uint256(sub_8c6f90ba[_513]))
                    if s < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s - ext_call.return_data[0]
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_547] == bool(mem[_547])
                else:
                    mem[mem[64] + 4] = _455
                    staticcall NEXUSAddress.0x5658892b with:
                            gas gas_remaining wei
                           args _455
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _473 = mem[_471]
                    if block.timestamp < sub_4b73c85b[_455]:
                        revert with 0, 17
                    if block.timestamp - sub_4b73c85b[_455] and mem[_471] > -1 / block.timestamp - sub_4b73c85b[_455]:
                        revert with 0, 17
                    if s > !((block.timestamp * mem[_471]) - (sub_4b73c85b[_455] * mem[_471])):
                        revert with 0, 17
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                    mem[32] = 1
                    sub_4b73c85b[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = block.timestamp
                    if s + (block.timestamp * _473) - (sub_4b73c85b[_455] * _473) <= ext_call.return_data[0]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (block.timestamp * _473) - (sub_4b73c85b[_455] * _473)
                        continue 
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = arg2.length
                    mem[mem[64] + 132 len arg2.length] = arg2[all]
                    mem[arg2.length + mem[64] + 132] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args address(this.address), arg1, Array(len=arg2.length, data=arg2[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall NEXUSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _519 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _541 = mem[_519]
                    if mem[_519] < 1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _541 - 1
                    staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(this.address), _541 - 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _557 = mem[_555]
                    mem[0] = mem[_555]
                    mem[32] = 2
                    if address(sub_8c6f90ba[mem[0]]):
                        revert with 0, 'NexusVault: token already staked'
                    emit TokenStaked(_557);
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = msg.sender
                    emit 0x58cc2f05: _557, arg1, msg.sender
                    stakerToTokenIds[msg.sender].field_0++
                    stakerToTokenIds[msg.sender][stakerToTokenIds[msg.sender].field_0].field_0 = _557
                    mem[0] = _557
                    sub_4b73c85b[_557] = block.timestamp
                    mem[32] = 2
                    uint256(sub_8c6f90ba[_557]) = msg.sender or Mask(96, 160, uint256(sub_8c6f90ba[_557]))
                    if s + (block.timestamp * _473) - (sub_4b73c85b[_455] * _473) < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s + (block.timestamp * _473) - (sub_4b73c85b[_455] * _473) - ext_call.return_data[0]
                    call sub_a29230efAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s + (block.timestamp * _473) - (sub_4b73c85b[_455] * _473) - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _585 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_585] == bool(mem[_585])
    revert with 0, 'NexusVault: insufficient reward balance to compound'
}



}
