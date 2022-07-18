contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
array of struct stor2;
array of uint256 stor3;
array of struct stor4;
array of uint256 stor5;
array of struct stor6;
mapping of uint256 stor7;
mapping of uint256 sub_53b7254e;
mapping of struct sub_f6a1dae8;
array of struct stor10;
mapping of uint256 stor11;
mapping of uint256 sub_374abfe2;
mapping of uint256 rewardsPaid;
uint32 stor14;
address rewardWalletAddress;
uint256 stor14;
uint256 sub_bbeb6208;

function sub_374abfe2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_374abfe2[arg1]
}

function sub_4e4d2540(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[address(arg1)])
}

function sub_53b7254e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_53b7254e[arg1]
}

function sub_57624b60(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[address(arg1)])
}

function rewardsPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardsPaid[arg1]
}

function owner() payable {
    return owner
}

function sub_bbeb6208(?) payable {
    return sub_bbeb6208
}

function sub_f6a1dae8(?) payable {
    require calldata.size - 4 >= 32
    return sub_f6a1dae8[arg1].field_0, 
           sub_f6a1dae8[arg1].field_256,
           sub_f6a1dae8[arg1].field_512,
           sub_f6a1dae8[arg1].field_768,
           sub_f6a1dae8[arg1].field_1024,
           sub_f6a1dae8[arg1].field_1280,
           sub_f6a1dae8[arg1].field_1536
}

function rewardWallet() payable {
    return address(rewardWalletAddress)
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

function pullOwnership() payable {
    if stor1.length != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: must be new owner to pull'
    emit OwnershipPulled(owner, stor1.length);
    owner = stor1.length
}

function setRewardWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(rewardWalletAddress) = arg1
    emit 0x78c73ec7: address(rewardWalletAddress), arg1
}

function pushOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipPushed(owner, arg1);
    stor1.length = arg1
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

function sub_aa32d003(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 900:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'must be at least 900 seconds due to block timestamp variations'
    sub_bbeb6208 = arg1
    emit 0x5dd399b4: arg1, sub_bbeb6208
}

function sub_1e1da2a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)]:
        revert with 0, 'NFT already permitted'
    if not stor3[address(arg1)]:
        stor2.length++
        stor2[stor2.length].field_0 = address(arg1)
        stor2[stor2.length].field_160 = 0
        stor3[address(arg1)] = stor2.length
    emit 0xef955aa7: address(arg1)
}

function sub_769a3808(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0, 'Reward token is not permitted'
    sub_53b7254e[address(arg1)] = arg2 / 24 * 3600
    if not arg2 / 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'amountOfTokenPerDayPerNFT results in a zero (0) drip rate'
    emit 0xaf0ba0ac: sub_53b7254e[address(arg1)], sub_53b7254e[address(arg1)], address(arg1)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens to contract directly'
    emit 0xa5bbec83: address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), gas_remaining
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function stakeIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10[address(arg1)].field_0:
        mem[128] = stor10[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor10[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor10[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor10[address(arg1)].field_0, data=mem[128 len 32 * stor10[address(arg1)].field_0])
    mem[(32 * stor10[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor10[address(arg1)].field_0) + 160] = stor10[address(arg1)].field_0
    mem[(32 * stor10[address(arg1)].field_0) + 192 len 32 * stor10[address(arg1)].field_0] = mem[128 len 32 * stor10[address(arg1)].field_0]
    return memory
      from (32 * stor10[address(arg1)].field_0) + 128
       len (96 * stor10[address(arg1)].field_0) + 64
}

function sub_fad34591(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0, 'NFT is not permitted'
    if stor3[address(arg1)]:
        if stor3[address(arg1)] < 1:
            revert with 0, 17
        if stor2.length < 1:
            revert with 0, 17
        if stor2.length - 1 != stor3[address(arg1)] - 1:
            if stor2.length - 1 >= stor2.length:
                revert with 0, 50
            if stor3[address(arg1)] - 1 >= stor2.length:
                revert with 0, 50
            stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        if not stor2.length:
            revert with 0, 49
        stor2[stor2.length].field_0 = 0
        stor2.length--
        stor3[address(arg1)] = 0
    emit 0x3b051731: address(arg1)
}

function sub_44ddfef9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0, 'Reward token is not permitted'
    if stor5[address(arg1)]:
        if stor5[address(arg1)] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 != stor5[address(arg1)] - 1:
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            if stor5[address(arg1)] - 1 >= stor4.length:
                revert with 0, 50
            stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
            stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[address(arg1)] = 0
    emit 0x4861cd82: sub_53b7254e[address(arg1)], address(arg1)
}

function sub_a718c57c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward token is already permitted'
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = address(arg1)
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    if not stor7[address(arg1)]:
        if not stor7[address(arg1)]:
            stor6.length++
            stor6[stor6.length].field_0 = address(arg1)
            stor6[stor6.length].field_160 = 0
            stor7[address(arg1)] = stor6.length
    sub_53b7254e[address(arg1)] = arg2 / 24 * 3600
    if not arg2 / 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'amountOfTokenPerDayPerNFT results in a zero (0) drip rate'
    emit 0x50d655ed: sub_53b7254e[address(arg1)], address(arg1)
}

function nfts() payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function rewardTokens() payable {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        idx = 0
        s = 128
        t = (32 * stor4.length) + 192
        while idx < stor4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = uint256(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_94a33625(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(rewardWalletAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_53b7254e[address(arg1)] and sub_374abfe2[address(arg1)] > -1 / sub_53b7254e[address(arg1)]:
        revert with 0, 17
    if sub_53b7254e[address(arg1)] * sub_374abfe2[address(arg1)] > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
        revert with 0, 17
    if not sub_53b7254e[address(arg1)] * sub_374abfe2[address(arg1)]:
        return ext_call.return_data[0], 
               sub_53b7254e[address(arg1)],
               sub_374abfe2[address(arg1)],
               sub_53b7254e[address(arg1)] * sub_374abfe2[address(arg1)],
               24 * 3600 * sub_53b7254e[address(arg1)] * sub_374abfe2[address(arg1)],
               -1,
               0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab
    if not sub_53b7254e[address(arg1)] * sub_374abfe2[address(arg1)]:
        revert with 0, 18
    return ext_call.return_data[0], 
           sub_53b7254e[address(arg1)],
           sub_374abfe2[address(arg1)],
           sub_53b7254e[address(arg1)] * sub_374abfe2[address(arg1)],
           24 * 3600 * sub_53b7254e[address(arg1)] * sub_374abfe2[address(arg1)],
           ext_call.return_data[0] / sub_53b7254e[address(arg1)] * sub_374abfe2[address(arg1)],
           ext_call.return_data[0] / sub_53b7254e[address(arg1)] * sub_374abfe2[address(arg1)] / 24 * 3600
}

function sub_86123669(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = stor6.length
    if stor6.length:
        mem[128] = uint256(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor6.length > test266151307():
        revert with 0, 65
    mem[(32 * stor6.length) + 128] = stor6.length
    mem[64] = (64 * stor6.length) + 160
    if stor6.length:
        mem[(32 * stor6.length) + 160 len 32 * stor6.length] = call.data[calldata.size len 32 * stor6.length]
    idx = 0
    while idx < stor6.length:
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(arg1), 11)
        if idx >= stor6.length:
            revert with 0, 50
        mem[(32 * idx) + (32 * stor6.length) + 160] = stor11[address(arg1)][mem[(32 * idx) + 140 len 20]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * stor6.length) + 160] = 64
    mem[(64 * stor6.length) + 224] = stor6.length
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < stor6.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * stor6.length) + 192] = (32 * stor6.length) + 96
    mem[(98 * stor6.length) + 256] = mem[(32 * stor6.length) + 128]
    mem[(98 * stor6.length) + 288 len 32 * mem[(32 * stor6.length) + 128]] = mem[(32 * stor6.length) + 160 len 32 * mem[(32 * stor6.length) + 128]]
    return memory
      from mem[64]
       len (98 * stor6.length) + (32 * mem[(32 * stor6.length) + 128]) + -mem[64] + 288
}

function unstake(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_f6a1dae8[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'not the owner of the specified stake id'
    sub_f6a1dae8[arg1].field_0 = 0
    sub_f6a1dae8[arg1].field_256 = 0
    sub_f6a1dae8[arg1].field_512 = 0
    sub_f6a1dae8[arg1].field_768 = 0
    sub_f6a1dae8[arg1].field_1024 = 0
    sub_f6a1dae8[arg1].field_1280 = 0
    sub_f6a1dae8[arg1].field_1536 = 0
    if stor10[stor9[arg1].field_256][1][arg1].field_0:
        if stor10[stor9[arg1].field_256][1][arg1].field_0 < 1:
            revert with 0, 17
        if stor10[stor9[arg1].field_256].field_0 < 1:
            revert with 0, 17
        if stor10[stor9[arg1].field_256].field_0 - 1 != stor10[stor9[arg1].field_256][1][arg1].field_0 - 1:
            if stor10[stor9[arg1].field_256].field_0 - 1 >= stor10[stor9[arg1].field_256].field_0:
                revert with 0, 50
            if stor10[stor9[arg1].field_256][1][arg1].field_0 - 1 >= stor10[stor9[arg1].field_256].field_0:
                revert with 0, 50
            stor10[stor9[arg1].field_256][stor10[stor9[arg1].field_256][1][arg1].field_0].field_0 = stor10[stor9[arg1].field_256][stor10[stor9[arg1].field_256].field_0].field_0
            stor10[stor9[arg1].field_256][1][stor10[stor9[arg1].field_256][stor10[stor9[arg1].field_256].field_0].field_0].field_0 = stor10[stor9[arg1].field_256][1][arg1].field_0
        if not stor10[stor9[arg1].field_256].field_0:
            revert with 0, 49
        stor10[stor9[arg1].field_256][stor10[stor9[arg1].field_256].field_0].field_0 = 0
        stor10[stor9[arg1].field_256].field_0--
        stor10[stor9[arg1].field_256][1][arg1].field_0 = 0
    if sub_374abfe2[stor9[arg1].field_1536] < 1:
        revert with 0, 17
    sub_374abfe2[stor9[arg1].field_1536]--
    require ext_code.size(sub_f6a1dae8[arg1].field_512)
    call sub_f6a1dae8[arg1].field_512.0x42842e0e with:
         gas gas_remaining wei
        args this.address, sub_f6a1dae8[arg1].field_256, sub_f6a1dae8[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x443fdef3: sub_f6a1dae8[arg1].field_1536, sub_f6a1dae8[arg1].field_256, sub_f6a1dae8[arg1].field_512, sub_f6a1dae8[arg1].field_768
}

function stake(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT is not permitted to be staked'
    if not stor5[address(arg3)]:
        revert with 0, 'Reward token is not permitted'
    staticcall arg1.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        staticcall arg1.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'not permitted to take ownership of NFT for staking'
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_f6a1dae8[msg.sender][arg1][arg2][block.timestamp][block.number].field_0 = sha3(msg.sender, arg1, arg2, block.timestamp, block.number)
    sub_f6a1dae8[msg.sender][arg1][arg2][block.timestamp][block.number].field_256 = msg.sender
    sub_f6a1dae8[msg.sender][arg1][arg2][block.timestamp][block.number].field_512 = arg1
    sub_f6a1dae8[msg.sender][arg1][arg2][block.timestamp][block.number].field_768 = arg2
    sub_f6a1dae8[msg.sender][arg1][arg2][block.timestamp][block.number].field_1024 = block.timestamp
    sub_f6a1dae8[msg.sender][arg1][arg2][block.timestamp][block.number].field_1280 = block.timestamp
    sub_f6a1dae8[msg.sender][arg1][arg2][block.timestamp][block.number].field_1536 = arg3
    if not stor10[msg.sender][1][sha3(msg.sender, arg1, arg2, block.timestamp, block.number)].field_0:
        stor10[msg.sender].field_0++
        stor10[msg.sender][stor10[msg.sender].field_0].field_0 = sha3(msg.sender, arg1, arg2, block.timestamp, block.number)
        stor10[msg.sender][1][sha3(msg.sender, arg1, arg2, block.timestamp, block.number)].field_0 = stor10[msg.sender].field_0
    if sub_374abfe2[address(arg3)] > -2:
        revert with 0, 17
    sub_374abfe2[address(arg3)]++
    emit 0x81a89370: arg3, msg.sender, arg1, arg2
    return sha3(msg.sender, arg1, arg2, block.timestamp, block.number)
}

function claim(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = sub_f6a1dae8[arg1].field_256
    mem[160] = sub_f6a1dae8[arg1].field_512
    mem[192] = sub_f6a1dae8[arg1].field_768
    mem[224] = sub_f6a1dae8[arg1].field_1024
    mem[256] = sub_f6a1dae8[arg1].field_1280
    mem[288] = sub_f6a1dae8[arg1].field_1536
    mem[320] = sub_f6a1dae8[arg1].field_0
    mem[352] = sub_f6a1dae8[arg1].field_256
    mem[384] = sub_f6a1dae8[arg1].field_512
    mem[416] = sub_f6a1dae8[arg1].field_768
    mem[448] = sub_f6a1dae8[arg1].field_1024
    mem[480] = sub_f6a1dae8[arg1].field_1280
    mem[512] = sub_f6a1dae8[arg1].field_1536
    if sub_f6a1dae8[arg1].field_1024 > !sub_bbeb6208:
        revert with 0, 17
    if block.timestamp < sub_f6a1dae8[arg1].field_1024 + sub_bbeb6208:
        mem[548] = address(rewardWalletAddress)
        mem[580] = this.address
        staticcall sub_f6a1dae8[arg1].field_1536.0xdd62ed3e with:
                gas gas_remaining wei
               args address(rewardWalletAddress), this.address
        mem[544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'contract not authorized for claimable amount, contact the team'
        sub_f6a1dae8[arg1].field_1280 = block.timestamp
        if rewardsPaid[stor9[arg1].field_1536] > -1:
            revert with 0, 17
        if stor11[stor9[arg1].field_256][stor9[arg1].field_1536] > -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 580] = address(rewardWalletAddress)
        mem[ceil32(return_data.size) + 612] = sub_f6a1dae8[arg1].field_256
        mem[ceil32(return_data.size) + 644] = 0
        mem[ceil32(return_data.size) + 544] = 100
        mem[ceil32(return_data.size) + 580 len 28] = Mask(224, 0, stor14)
        mem[ceil32(return_data.size) + 576 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 676] = 32
        mem[ceil32(return_data.size) + 708] = 'SafeERC20: low-level call failed'
        if not ext_code.size(sub_f6a1dae8[arg1].field_1536):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 740 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor14), uint32(stor14), sub_f6a1dae8[arg1].field_256, 0, 0
        mem[ceil32(return_data.size) + 840] = 0
        call sub_f6a1dae8[arg1].field_1536 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor14), uint32(stor14), sub_f6a1dae8[arg1].field_256, 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor14), uint32(stor14), sub_f6a1dae8[arg1].field_256, 0, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if sub_f6a1dae8[arg1].field_0:
                    revert with memory
                      from 128
                       len sub_f6a1dae8[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if sub_f6a1dae8[arg1].field_0:
                require sub_f6a1dae8[arg1].field_0 >= 32
                require sub_f6a1dae8[arg1].field_256 == bool(sub_f6a1dae8[arg1].field_256)
                if not sub_f6a1dae8[arg1].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 772] == bool(mem[ceil32(return_data.size) + 772])
                if not mem[ceil32(return_data.size) + 772]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xea9d6b1a: arg1, sub_f6a1dae8[arg1].field_256, 0
    else:
        if block.timestamp < sub_f6a1dae8[arg1].field_1280:
            revert with 0, 17
        if sub_53b7254e[stor9[arg1].field_1536] and block.timestamp - sub_f6a1dae8[arg1].field_1280 > -1 / sub_53b7254e[stor9[arg1].field_1536]:
            revert with 0, 17
        mem[548] = address(rewardWalletAddress)
        mem[580] = this.address
        staticcall sub_f6a1dae8[arg1].field_1536.0xdd62ed3e with:
                gas gas_remaining wei
               args address(rewardWalletAddress), this.address
        mem[544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536]):
            revert with 0, 'contract not authorized for claimable amount, contact the team'
        sub_f6a1dae8[arg1].field_1280 = block.timestamp
        if rewardsPaid[stor9[arg1].field_1536] > !((block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536])):
            revert with 0, 17
        rewardsPaid[stor9[arg1].field_1536] = rewardsPaid[stor9[arg1].field_1536] + (block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536])
        if stor11[stor9[arg1].field_256][stor9[arg1].field_1536] > !((block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536])):
            revert with 0, 17
        stor11[stor9[arg1].field_256][stor9[arg1].field_1536] = stor11[stor9[arg1].field_256][stor9[arg1].field_1536] + (block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536])
        mem[ceil32(return_data.size) + 580] = address(rewardWalletAddress)
        mem[ceil32(return_data.size) + 612] = sub_f6a1dae8[arg1].field_256
        mem[ceil32(return_data.size) + 644] = (block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536])
        mem[ceil32(return_data.size) + 544] = 100
        mem[ceil32(return_data.size) + 580 len 28] = Mask(224, 0, stor14)
        mem[ceil32(return_data.size) + 576 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 676] = 32
        mem[ceil32(return_data.size) + 708] = 'SafeERC20: low-level call failed'
        if not ext_code.size(sub_f6a1dae8[arg1].field_1536):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 740 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor14), uint32(stor14), sub_f6a1dae8[arg1].field_256, (block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536]), 0
        mem[ceil32(return_data.size) + 840] = 0
        call sub_f6a1dae8[arg1].field_1536 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor14), uint32(stor14), sub_f6a1dae8[arg1].field_256, (block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536]), 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor14), uint32(stor14), sub_f6a1dae8[arg1].field_256, (block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536]), 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if sub_f6a1dae8[arg1].field_0:
                    revert with memory
                      from 128
                       len sub_f6a1dae8[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if sub_f6a1dae8[arg1].field_0:
                require sub_f6a1dae8[arg1].field_0 >= 32
                require sub_f6a1dae8[arg1].field_256 == bool(sub_f6a1dae8[arg1].field_256)
                if not sub_f6a1dae8[arg1].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 772] == bool(mem[ceil32(return_data.size) + 772])
                if not mem[ceil32(return_data.size) + 772]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xea9d6b1a: arg1, sub_f6a1dae8[arg1].field_256, (block.timestamp * sub_53b7254e[stor9[arg1].field_1536]) - (sub_f6a1dae8[arg1].field_1280 * sub_53b7254e[stor9[arg1].field_1536])
}

function staked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    mem[96] = stor10[address(arg1)].field_0
    if not stor10[address(arg1)].field_0:
        if stor10[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor10[address(arg1)].field_0) + 128] = stor10[address(arg1)].field_0
        mem[64] = (64 * stor10[address(arg1)].field_0) + 160
        if not stor10[address(arg1)].field_0:
            idx = 0
            while idx < stor10[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                _46 = sha3(mem[(32 * idx) + 128], 9)
                _47 = mem[64]
                mem[64] = mem[64] + 224
                mem[_47] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
                mem[_47 + 32] = stor1[_46]
                mem[_47 + 64] = stor2[_46].field_0
                mem[_47 + 96] = stor3[_46]
                mem[_47 + 128] = stor4[_46].field_0
                mem[_47 + 160] = stor5[_46]
                mem[_47 + 192] = stor6[_46].field_0
                if idx >= mem[(32 * stor10[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor10[address(arg1)].field_0) + 160] = _47
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _49 = mem[(32 * stor10[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor10[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * stor10[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while stor10[address(arg1)].field_0 < _49:
                _77 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_77 + 44 len 20]
                mem[t + 64] = mem[_77 + 76 len 20]
                mem[t + 96] = mem[_77 + 96]
                mem[t + 128] = mem[_77 + 128]
                mem[t + 160] = mem[_77 + 160]
                mem[t + 192] = mem[_77 + 204 len 20]
                s = stor10[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 224
                continue 
        else:
            mem[64] = (64 * stor10[address(arg1)].field_0) + 384
            mem[(64 * stor10[address(arg1)].field_0) + 160] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 192] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 224] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 256] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 288] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 320] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 352] = 0
            mem[(32 * stor10[address(arg1)].field_0) + 160] = (64 * stor10[address(arg1)].field_0) + 160
            s = (32 * stor10[address(arg1)].field_0) + 160
            idx = stor10[address(arg1)].field_0
            while idx - 1:
                mem[64] = mem[64] + 224
                mem[(64 * stor10[address(arg1)].field_0) + 160] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 192] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 224] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 256] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 288] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 320] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 352] = 0
                mem[s + 32] = (64 * stor10[address(arg1)].field_0) + 160
                s = s + 32
                idx = idx - 1
                continue 
            _76 = mem[96]
            idx = 0
            while idx < _76:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                _89 = sha3(mem[(32 * idx) + 128], 9)
                _90 = mem[64]
                mem[64] = mem[64] + 224
                mem[_90] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
                mem[_90 + 32] = stor1[_89]
                mem[_90 + 64] = stor2[_89].field_0
                mem[_90 + 96] = stor3[_89]
                mem[_90 + 128] = stor4[_89].field_0
                mem[_90 + 160] = stor5[_89]
                mem[_90 + 192] = stor6[_89].field_0
                if idx >= mem[(32 * stor10[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor10[address(arg1)].field_0) + 160] = _90
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _92 = mem[(32 * stor10[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor10[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * stor10[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while _76 < _92:
                _141 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_141 + 44 len 20]
                mem[t + 64] = mem[_141 + 76 len 20]
                mem[t + 96] = mem[_141 + 96]
                mem[t + 128] = mem[_141 + 128]
                mem[t + 160] = mem[_141 + 160]
                mem[t + 192] = mem[_141 + 204 len 20]
                s = _76 + 1
                s = s + 32
                t = t + 224
                continue 
    else:
        mem[0] = sha3(address(arg1), 10)
        mem[128] = stor10[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor10[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor10[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor10[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor10[address(arg1)].field_0) + 128] = stor10[address(arg1)].field_0
        mem[64] = (64 * stor10[address(arg1)].field_0) + 160
        if not stor10[address(arg1)].field_0:
            idx = 0
            while idx < stor10[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                _153 = sha3(mem[(32 * idx) + 128], 9)
                _154 = mem[64]
                mem[64] = mem[64] + 224
                mem[_154] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
                mem[_154 + 32] = stor1[_153]
                mem[_154 + 64] = stor2[_153].field_0
                mem[_154 + 96] = stor3[_153]
                mem[_154 + 128] = stor4[_153].field_0
                mem[_154 + 160] = stor5[_153]
                mem[_154 + 192] = stor6[_153].field_0
                if idx >= mem[(32 * stor10[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor10[address(arg1)].field_0) + 160] = _154
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _156 = mem[(32 * stor10[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor10[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * stor10[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while stor10[address(arg1)].field_0 < _156:
                _184 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_184 + 44 len 20]
                mem[t + 64] = mem[_184 + 76 len 20]
                mem[t + 96] = mem[_184 + 96]
                mem[t + 128] = mem[_184 + 128]
                mem[t + 160] = mem[_184 + 160]
                mem[t + 192] = mem[_184 + 204 len 20]
                s = stor10[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 224
                continue 
        else:
            mem[64] = (64 * stor10[address(arg1)].field_0) + 384
            mem[(64 * stor10[address(arg1)].field_0) + 160] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 192] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 224] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 256] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 288] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 320] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 352] = 0
            mem[(32 * stor10[address(arg1)].field_0) + 160] = (64 * stor10[address(arg1)].field_0) + 160
            s = (32 * stor10[address(arg1)].field_0) + 160
            idx = stor10[address(arg1)].field_0
            while idx - 1:
                mem[64] = mem[64] + 224
                mem[(64 * stor10[address(arg1)].field_0) + 160] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 192] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 224] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 256] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 288] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 320] = 0
                mem[(64 * stor10[address(arg1)].field_0) + 352] = 0
                mem[s + 32] = (64 * stor10[address(arg1)].field_0) + 160
                s = s + 32
                idx = idx - 1
                continue 
            _183 = mem[96]
            idx = 0
            while idx < _183:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                _196 = sha3(mem[(32 * idx) + 128], 9)
                _197 = mem[64]
                mem[64] = mem[64] + 224
                mem[_197] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
                mem[_197 + 32] = stor1[_196]
                mem[_197 + 64] = stor2[_196].field_0
                mem[_197 + 96] = stor3[_196]
                mem[_197 + 128] = stor4[_196].field_0
                mem[_197 + 160] = stor5[_196]
                mem[_197 + 192] = stor6[_196].field_0
                if idx >= mem[(32 * stor10[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor10[address(arg1)].field_0) + 160] = _197
                if idx == -1:
                    revert with 0, 17
                _183 = mem[96]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _199 = mem[(32 * stor10[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor10[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * stor10[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while _183 < _199:
                _209 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_209 + 44 len 20]
                mem[t + 64] = mem[_209 + 76 len 20]
                mem[t + 96] = mem[_209 + 96]
                mem[t + 128] = mem[_209 + 128]
                mem[t + 160] = mem[_209 + 160]
                mem[t + 192] = mem[_209 + 204 len 20]
                s = _183 + 1
                s = s + 32
                t = t + 224
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    mem[96] = stor10[address(arg1)].field_0
    if not stor10[address(arg1)].field_0:
        if stor10[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor10[address(arg1)].field_0) + 128] = stor10[address(arg1)].field_0
        mem[64] = (64 * stor10[address(arg1)].field_0) + 160
        if not stor10[address(arg1)].field_0:
            idx = 0
            while idx < stor10[address(arg1)].field_0:
                _55 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_55] = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[32] = 9
                mem[_55 + 32] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_1536
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                _72 = sha3(mem[(32 * idx) + 128], 9)
                _73 = mem[64]
                mem[64] = mem[64] + 224
                mem[_73] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
                mem[_73 + 32] = stor1[_72]
                mem[_73 + 64] = stor2[_72].field_0
                mem[_73 + 96] = stor3[_72]
                mem[_73 + 128] = stor4[_72].field_0
                mem[_73 + 160] = stor5[_72]
                mem[_73 + 192] = stor6[_72].field_0
                if stor4[_72].field_0 > !sub_bbeb6208:
                    revert with 0, 17
                if block.timestamp < stor4[_72].field_0 + sub_bbeb6208:
                    mem[_55 + 64] = 0
                else:
                    if block.timestamp < stor5[_72]:
                        revert with 0, 17
                    mem[0] = stor6[_72].field_0
                    mem[32] = 8
                    if sub_53b7254e[stor6[_72].field_0] and block.timestamp - stor5[_72] > -1 / sub_53b7254e[stor6[_72].field_0]:
                        revert with 0, 17
                    mem[_55 + 64] = (block.timestamp * sub_53b7254e[stor6[_72].field_0]) - (stor5[_72] * sub_53b7254e[stor6[_72].field_0])
                if idx >= mem[(32 * stor10[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor10[address(arg1)].field_0) + 160] = _55
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _57 = mem[64]
            mem[mem[64]] = 32
            _60 = mem[(32 * stor10[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor10[address(arg1)].field_0) + 128]
            idx = 0
            s = (32 * stor10[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while idx < _60:
                _101 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_101 + 44 len 20]
                mem[t + 64] = mem[_101 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _57 + (96 * _60) + -mem[64] + 64
        mem[64] = (64 * stor10[address(arg1)].field_0) + 256
        mem[(64 * stor10[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor10[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor10[address(arg1)].field_0) + 224] = 0
        mem[(32 * stor10[address(arg1)].field_0) + 160] = (64 * stor10[address(arg1)].field_0) + 160
        s = (32 * stor10[address(arg1)].field_0) + 160
        idx = stor10[address(arg1)].field_0
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(64 * stor10[address(arg1)].field_0) + 160] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 192] = 0
            mem[(64 * stor10[address(arg1)].field_0) + 224] = 0
            mem[s + 32] = (64 * stor10[address(arg1)].field_0) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _100 = mem[96]
        idx = 0
        while idx < _100:
            _105 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= mem[96]:
                revert with 0, 50
            mem[_105] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[32] = 9
            mem[_105 + 32] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_1536
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            _122 = sha3(mem[(32 * idx) + 128], 9)
            _123 = mem[64]
            mem[64] = mem[64] + 224
            mem[_123] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
            mem[_123 + 32] = stor1[_122]
            mem[_123 + 64] = stor2[_122].field_0
            mem[_123 + 96] = stor3[_122]
            mem[_123 + 128] = stor4[_122].field_0
            mem[_123 + 160] = stor5[_122]
            mem[_123 + 192] = stor6[_122].field_0
            if stor4[_122].field_0 > !sub_bbeb6208:
                revert with 0, 17
            if block.timestamp < stor4[_122].field_0 + sub_bbeb6208:
                mem[_105 + 64] = 0
            else:
                if block.timestamp < stor5[_122]:
                    revert with 0, 17
                mem[0] = stor6[_122].field_0
                mem[32] = 8
                if sub_53b7254e[stor6[_122].field_0] and block.timestamp - stor5[_122] > -1 / sub_53b7254e[stor6[_122].field_0]:
                    revert with 0, 17
                mem[_105 + 64] = (block.timestamp * sub_53b7254e[stor6[_122].field_0]) - (stor5[_122] * sub_53b7254e[stor6[_122].field_0])
            if idx >= mem[(32 * stor10[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor10[address(arg1)].field_0) + 160] = _105
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = 32
        _111 = mem[(32 * stor10[address(arg1)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor10[address(arg1)].field_0) + 128]
        idx = 0
        s = (32 * stor10[address(arg1)].field_0) + 160
        t = mem[64] + 64
        while idx < _111:
            _179 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_179 + 44 len 20]
            mem[t + 64] = mem[_179 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _108 + (96 * _111) + -mem[64] + 64
    mem[0] = sha3(address(arg1), 10)
    mem[128] = stor10[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor10[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor10[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor10[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[(32 * stor10[address(arg1)].field_0) + 128] = stor10[address(arg1)].field_0
    mem[64] = (64 * stor10[address(arg1)].field_0) + 160
    if not stor10[address(arg1)].field_0:
        idx = 0
        while idx < stor10[address(arg1)].field_0:
            _183 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= mem[96]:
                revert with 0, 50
            mem[_183] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[32] = 9
            mem[_183 + 32] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_1536
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            _201 = sha3(mem[(32 * idx) + 128], 9)
            _202 = mem[64]
            mem[64] = mem[64] + 224
            mem[_202] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
            mem[_202 + 32] = stor1[_201]
            mem[_202 + 64] = stor2[_201].field_0
            mem[_202 + 96] = stor3[_201]
            mem[_202 + 128] = stor4[_201].field_0
            mem[_202 + 160] = stor5[_201]
            mem[_202 + 192] = stor6[_201].field_0
            if stor4[_201].field_0 > !sub_bbeb6208:
                revert with 0, 17
            if block.timestamp < stor4[_201].field_0 + sub_bbeb6208:
                mem[_183 + 64] = 0
            else:
                if block.timestamp < stor5[_201]:
                    revert with 0, 17
                mem[0] = stor6[_201].field_0
                mem[32] = 8
                if sub_53b7254e[stor6[_201].field_0] and block.timestamp - stor5[_201] > -1 / sub_53b7254e[stor6[_201].field_0]:
                    revert with 0, 17
                mem[_183 + 64] = (block.timestamp * sub_53b7254e[stor6[_201].field_0]) - (stor5[_201] * sub_53b7254e[stor6[_201].field_0])
            if idx >= mem[(32 * stor10[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor10[address(arg1)].field_0) + 160] = _183
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _186 = mem[64]
        mem[mem[64]] = 32
        _189 = mem[(32 * stor10[address(arg1)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor10[address(arg1)].field_0) + 128]
        idx = 0
        s = (32 * stor10[address(arg1)].field_0) + 160
        t = mem[64] + 64
        while idx < _189:
            _230 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_230 + 44 len 20]
            mem[t + 64] = mem[_230 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _186 + (96 * _189) + -mem[64] + 64
    mem[64] = (64 * stor10[address(arg1)].field_0) + 256
    mem[(64 * stor10[address(arg1)].field_0) + 160] = 0
    mem[(64 * stor10[address(arg1)].field_0) + 192] = 0
    mem[(64 * stor10[address(arg1)].field_0) + 224] = 0
    mem[(32 * stor10[address(arg1)].field_0) + 160] = (64 * stor10[address(arg1)].field_0) + 160
    s = (32 * stor10[address(arg1)].field_0) + 160
    idx = stor10[address(arg1)].field_0
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(64 * stor10[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor10[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor10[address(arg1)].field_0) + 224] = 0
        mem[s + 32] = (64 * stor10[address(arg1)].field_0) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _229 = mem[96]
    idx = 0
    while idx < _229:
        _234 = mem[64]
        mem[64] = mem[64] + 96
        if idx >= mem[96]:
            revert with 0, 50
        mem[_234] = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 0, 50
        mem[32] = 9
        mem[_234 + 32] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_1536
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        _249 = sha3(mem[(32 * idx) + 128], 9)
        _250 = mem[64]
        mem[64] = mem[64] + 224
        mem[_250] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
        mem[_250 + 32] = stor1[_249]
        mem[_250 + 64] = stor2[_249].field_0
        mem[_250 + 96] = stor3[_249]
        mem[_250 + 128] = stor4[_249].field_0
        mem[_250 + 160] = stor5[_249]
        mem[_250 + 192] = stor6[_249].field_0
        if stor4[_249].field_0 > !sub_bbeb6208:
            revert with 0, 17
        if block.timestamp < stor4[_249].field_0 + sub_bbeb6208:
            mem[_234 + 64] = 0
        else:
            if block.timestamp < stor5[_249]:
                revert with 0, 17
            mem[0] = stor6[_249].field_0
            mem[32] = 8
            if sub_53b7254e[stor6[_249].field_0] and block.timestamp - stor5[_249] > -1 / sub_53b7254e[stor6[_249].field_0]:
                revert with 0, 17
            mem[_234 + 64] = (block.timestamp * sub_53b7254e[stor6[_249].field_0]) - (stor5[_249] * sub_53b7254e[stor6[_249].field_0])
        if idx >= mem[(32 * stor10[address(arg1)].field_0) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * stor10[address(arg1)].field_0) + 160] = _234
        if idx == -1:
            revert with 0, 17
        _229 = mem[96]
        idx = idx + 1
        continue 
    _237 = mem[64]
    mem[mem[64]] = 32
    _240 = mem[(32 * stor10[address(arg1)].field_0) + 128]
    mem[mem[64] + 32] = mem[(32 * stor10[address(arg1)].field_0) + 128]
    idx = 0
    s = (32 * stor10[address(arg1)].field_0) + 160
    t = mem[64] + 64
    while idx < _240:
        _257 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_257 + 44 len 20]
        mem[t + 64] = mem[_257 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _237 + (96 * _240) + -mem[64] + 64
}

function claimAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    mem[64] = (32 * stor10[address(arg1)].field_0) + 128
    mem[96] = stor10[address(arg1)].field_0
    if not stor10[address(arg1)].field_0:
        idx = 0
        while idx < stor10[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            _226 = sha3(mem[(32 * idx) + 128], 9)
            _227 = mem[64]
            mem[64] = mem[64] + 224
            mem[_227] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
            mem[_227 + 32] = stor1[_226]
            mem[_227 + 64] = stor2[_226].field_0
            mem[_227 + 96] = stor3[_226]
            mem[_227 + 128] = stor4[_226].field_0
            mem[_227 + 160] = stor5[_226]
            mem[_227 + 192] = stor6[_226].field_0
            if stor4[_226].field_0 > !sub_bbeb6208:
                revert with 0, 17
            if block.timestamp >= stor4[_226].field_0 + sub_bbeb6208:
                if block.timestamp < stor5[_226]:
                    revert with 0, 17
                mem[0] = stor6[_226].field_0
                mem[32] = 8
                if sub_53b7254e[stor6[_226].field_0] and block.timestamp - stor5[_226] > -1 / sub_53b7254e[stor6[_226].field_0]:
                    revert with 0, 17
                if (block.timestamp * sub_53b7254e[stor6[_226].field_0]) - (stor5[_226] * sub_53b7254e[stor6[_226].field_0]):
                    if idx >= mem[96]:
                        revert with 0, 50
                    _232 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 9
                    _233 = sha3(mem[(32 * idx) + 128], 9)
                    _234 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_234] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
                    mem[_234 + 32] = stor1[_233]
                    mem[_234 + 64] = stor2[_233].field_0
                    mem[_234 + 96] = stor3[_233]
                    mem[_234 + 128] = stor4[_233].field_0
                    mem[_234 + 160] = stor5[_233]
                    mem[_234 + 192] = stor6[_233].field_0
                    mem[0] = _232
                    mem[32] = 9
                    _236 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_236] = sub_f6a1dae8[_232].field_0
                    mem[_236 + 32] = sub_f6a1dae8[_232].field_256
                    mem[_236 + 64] = sub_f6a1dae8[_232].field_512
                    mem[_236 + 96] = sub_f6a1dae8[_232].field_768
                    mem[_236 + 128] = sub_f6a1dae8[_232].field_1024
                    mem[_236 + 160] = sub_f6a1dae8[_232].field_1280
                    mem[_236 + 192] = sub_f6a1dae8[_232].field_1536
                    if sub_f6a1dae8[_232].field_1024 > !sub_bbeb6208:
                        revert with 0, 17
                    if block.timestamp < sub_f6a1dae8[_232].field_1024 + sub_bbeb6208:
                        mem[mem[64] + 4] = address(rewardWalletAddress)
                        mem[mem[64] + 36] = this.address
                        staticcall stor6[_233].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(rewardWalletAddress), this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _241 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_241] < 0:
                            revert with 0, 'contract not authorized for claimable amount, contact the team'
                        sub_f6a1dae8[_232].field_1280 = block.timestamp
                        if rewardsPaid[stor6[_233].field_0] > -1:
                            revert with 0, 17
                        mem[0] = stor6[_233].field_0
                        mem[32] = sha3(stor1[_233], 11)
                        if stor11[stor1[_233]][stor6[_233].field_0] > -1:
                            revert with 0, 17
                        _266 = mem[64]
                        mem[mem[64] + 36] = address(rewardWalletAddress)
                        mem[mem[64] + 68] = stor1[_233]
                        mem[mem[64] + 100] = 0
                        _267 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_267 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_267 + 36 len 28]
                        mem[64] = _266 + 196
                        mem[_266 + 132] = 32
                        mem[_266 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor6[_233].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _276 = mem[_267]
                        s = 0
                        while s < _276:
                            mem[s + _266 + 196] = mem[s + _267 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_276) > _276:
                            mem[_276 + _266 + 196] = 0
                        call stor6[_233].field_0.mem[_266 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_266 + 200 len _276 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_266 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_266 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _266 + 264] = mem[idx + _266 + 164]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_266 + 264]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _266 + ceil32(return_data.size) + 197
                            mem[_266 + 196] = return_data.size
                            mem[_266 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_266 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_266 + ceil32(return_data.size) + 201] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _266 + ceil32(return_data.size) + 265] = mem[idx + _266 + 164]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_266 + ceil32(return_data.size) + 265]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_266 + 228] == bool(mem[_266 + 228])
                                if not mem[_266 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xea9d6b1a: _232, mem[_234 + 44 len 20], 0
                    else:
                        if block.timestamp < sub_f6a1dae8[_232].field_1280:
                            revert with 0, 17
                        mem[0] = sub_f6a1dae8[_232].field_1536
                        mem[32] = 8
                        if sub_53b7254e[stor9[_232].field_1536] and block.timestamp - sub_f6a1dae8[_232].field_1280 > -1 / sub_53b7254e[stor9[_232].field_1536]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(rewardWalletAddress)
                        mem[mem[64] + 36] = this.address
                        staticcall stor6[_233].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(rewardWalletAddress), this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_253] < (block.timestamp * sub_53b7254e[stor9[_232].field_1536]) - (sub_f6a1dae8[_232].field_1280 * sub_53b7254e[stor9[_232].field_1536]):
                            revert with 0, 'contract not authorized for claimable amount, contact the team'
                        sub_f6a1dae8[_232].field_1280 = block.timestamp
                        if rewardsPaid[stor6[_233].field_0] > !((block.timestamp * sub_53b7254e[stor9[_232].field_1536]) - (sub_f6a1dae8[_232].field_1280 * sub_53b7254e[stor9[_232].field_1536])):
                            revert with 0, 17
                        rewardsPaid[stor6[_233].field_0] = rewardsPaid[stor6[_233].field_0] + (block.timestamp * sub_53b7254e[stor9[_232].field_1536]) - (sub_f6a1dae8[_232].field_1280 * sub_53b7254e[stor9[_232].field_1536])
                        mem[0] = stor6[_233].field_0
                        mem[32] = sha3(stor1[_233], 11)
                        if stor11[stor1[_233]][stor6[_233].field_0] > !((block.timestamp * sub_53b7254e[stor9[_232].field_1536]) - (sub_f6a1dae8[_232].field_1280 * sub_53b7254e[stor9[_232].field_1536])):
                            revert with 0, 17
                        stor11[stor1[_233]][stor6[_233].field_0] = stor11[stor1[_233]][stor6[_233].field_0] + (block.timestamp * sub_53b7254e[stor9[_232].field_1536]) - (sub_f6a1dae8[_232].field_1280 * sub_53b7254e[stor9[_232].field_1536])
                        _280 = mem[64]
                        mem[mem[64] + 36] = address(rewardWalletAddress)
                        mem[mem[64] + 68] = stor1[_233]
                        mem[mem[64] + 100] = (block.timestamp * sub_53b7254e[stor9[_232].field_1536]) - (sub_f6a1dae8[_232].field_1280 * sub_53b7254e[stor9[_232].field_1536])
                        _281 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_281 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_281 + 36 len 28]
                        mem[64] = _280 + 196
                        mem[_280 + 132] = 32
                        mem[_280 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor6[_233].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _287 = mem[_281]
                        s = 0
                        while s < _287:
                            mem[s + _280 + 196] = mem[s + _281 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_287) > _287:
                            mem[_287 + _280 + 196] = 0
                        call stor6[_233].field_0.mem[_280 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_280 + 200 len _287 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_280 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_280 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _280 + 264] = mem[idx + _280 + 164]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_280 + 264]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _280 + ceil32(return_data.size) + 197
                            mem[_280 + 196] = return_data.size
                            mem[_280 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_280 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_280 + ceil32(return_data.size) + 201] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _280 + ceil32(return_data.size) + 265] = mem[idx + _280 + 164]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_280 + ceil32(return_data.size) + 265]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_280 + 228] == bool(mem[_280 + 228])
                                if not mem[_280 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xea9d6b1a: _232, mem[_234 + 44 len 20], (block.timestamp * sub_53b7254e[stor9[_232].field_1536]) - (sub_f6a1dae8[_232].field_1280 * sub_53b7254e[stor9[_232].field_1536])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(address(arg1), 10)
        mem[128] = stor10[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor10[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor10[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor10[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            _826 = sha3(mem[(32 * idx) + 128], 9)
            _827 = mem[64]
            mem[64] = mem[64] + 224
            mem[_827] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
            mem[_827 + 32] = stor1[_826]
            mem[_827 + 64] = stor2[_826].field_0
            mem[_827 + 96] = stor3[_826]
            mem[_827 + 128] = stor4[_826].field_0
            mem[_827 + 160] = stor5[_826]
            mem[_827 + 192] = stor6[_826].field_0
            if stor4[_826].field_0 > !sub_bbeb6208:
                revert with 0, 17
            if block.timestamp >= stor4[_826].field_0 + sub_bbeb6208:
                if block.timestamp < stor5[_826]:
                    revert with 0, 17
                mem[0] = stor6[_826].field_0
                mem[32] = 8
                if sub_53b7254e[stor6[_826].field_0] and block.timestamp - stor5[_826] > -1 / sub_53b7254e[stor6[_826].field_0]:
                    revert with 0, 17
                if (block.timestamp * sub_53b7254e[stor6[_826].field_0]) - (stor5[_826] * sub_53b7254e[stor6[_826].field_0]):
                    if idx >= mem[96]:
                        revert with 0, 50
                    _848 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 9
                    _849 = sha3(mem[(32 * idx) + 128], 9)
                    _850 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_850] = sub_f6a1dae8[mem[(32 * idx) + 128]].field_0
                    mem[_850 + 32] = stor1[_849]
                    mem[_850 + 64] = stor2[_849].field_0
                    mem[_850 + 96] = stor3[_849]
                    mem[_850 + 128] = stor4[_849].field_0
                    mem[_850 + 160] = stor5[_849]
                    mem[_850 + 192] = stor6[_849].field_0
                    mem[0] = _848
                    mem[32] = 9
                    _852 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_852] = sub_f6a1dae8[_848].field_0
                    mem[_852 + 32] = sub_f6a1dae8[_848].field_256
                    mem[_852 + 64] = sub_f6a1dae8[_848].field_512
                    mem[_852 + 96] = sub_f6a1dae8[_848].field_768
                    mem[_852 + 128] = sub_f6a1dae8[_848].field_1024
                    mem[_852 + 160] = sub_f6a1dae8[_848].field_1280
                    mem[_852 + 192] = sub_f6a1dae8[_848].field_1536
                    if sub_f6a1dae8[_848].field_1024 > !sub_bbeb6208:
                        revert with 0, 17
                    if block.timestamp < sub_f6a1dae8[_848].field_1024 + sub_bbeb6208:
                        mem[mem[64] + 4] = address(rewardWalletAddress)
                        mem[mem[64] + 36] = this.address
                        staticcall stor6[_849].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(rewardWalletAddress), this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _857 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_857] < 0:
                            revert with 0, 'contract not authorized for claimable amount, contact the team'
                        sub_f6a1dae8[_848].field_1280 = block.timestamp
                        if rewardsPaid[stor6[_849].field_0] > -1:
                            revert with 0, 17
                        mem[0] = stor6[_849].field_0
                        mem[32] = sha3(stor1[_849], 11)
                        if stor11[stor1[_849]][stor6[_849].field_0] > -1:
                            revert with 0, 17
                        _882 = mem[64]
                        mem[mem[64] + 36] = address(rewardWalletAddress)
                        mem[mem[64] + 68] = stor1[_849]
                        mem[mem[64] + 100] = 0
                        _883 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_883 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_883 + 36 len 28]
                        mem[64] = _882 + 196
                        mem[_882 + 132] = 32
                        mem[_882 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor6[_849].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _892 = mem[_883]
                        s = 0
                        while s < _892:
                            mem[s + _882 + 196] = mem[s + _883 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_892) > _892:
                            mem[_892 + _882 + 196] = 0
                        call stor6[_849].field_0.mem[_882 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_882 + 200 len _892 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_882 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_882 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _882 + 264] = mem[idx + _882 + 164]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_882 + 264]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _882 + ceil32(return_data.size) + 197
                            mem[_882 + 196] = return_data.size
                            mem[_882 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_882 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_882 + ceil32(return_data.size) + 201] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _882 + ceil32(return_data.size) + 265] = mem[idx + _882 + 164]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_882 + ceil32(return_data.size) + 265]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_882 + 228] == bool(mem[_882 + 228])
                                if not mem[_882 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xea9d6b1a: _848, mem[_850 + 44 len 20], 0
                    else:
                        if block.timestamp < sub_f6a1dae8[_848].field_1280:
                            revert with 0, 17
                        mem[0] = sub_f6a1dae8[_848].field_1536
                        mem[32] = 8
                        if sub_53b7254e[stor9[_848].field_1536] and block.timestamp - sub_f6a1dae8[_848].field_1280 > -1 / sub_53b7254e[stor9[_848].field_1536]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(rewardWalletAddress)
                        mem[mem[64] + 36] = this.address
                        staticcall stor6[_849].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(rewardWalletAddress), this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _869 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_869] < (block.timestamp * sub_53b7254e[stor9[_848].field_1536]) - (sub_f6a1dae8[_848].field_1280 * sub_53b7254e[stor9[_848].field_1536]):
                            revert with 0, 'contract not authorized for claimable amount, contact the team'
                        sub_f6a1dae8[_848].field_1280 = block.timestamp
                        if rewardsPaid[stor6[_849].field_0] > !((block.timestamp * sub_53b7254e[stor9[_848].field_1536]) - (sub_f6a1dae8[_848].field_1280 * sub_53b7254e[stor9[_848].field_1536])):
                            revert with 0, 17
                        rewardsPaid[stor6[_849].field_0] = rewardsPaid[stor6[_849].field_0] + (block.timestamp * sub_53b7254e[stor9[_848].field_1536]) - (sub_f6a1dae8[_848].field_1280 * sub_53b7254e[stor9[_848].field_1536])
                        mem[0] = stor6[_849].field_0
                        mem[32] = sha3(stor1[_849], 11)
                        if stor11[stor1[_849]][stor6[_849].field_0] > !((block.timestamp * sub_53b7254e[stor9[_848].field_1536]) - (sub_f6a1dae8[_848].field_1280 * sub_53b7254e[stor9[_848].field_1536])):
                            revert with 0, 17
                        stor11[stor1[_849]][stor6[_849].field_0] = stor11[stor1[_849]][stor6[_849].field_0] + (block.timestamp * sub_53b7254e[stor9[_848].field_1536]) - (sub_f6a1dae8[_848].field_1280 * sub_53b7254e[stor9[_848].field_1536])
                        _896 = mem[64]
                        mem[mem[64] + 36] = address(rewardWalletAddress)
                        mem[mem[64] + 68] = stor1[_849]
                        mem[mem[64] + 100] = (block.timestamp * sub_53b7254e[stor9[_848].field_1536]) - (sub_f6a1dae8[_848].field_1280 * sub_53b7254e[stor9[_848].field_1536])
                        _897 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_897 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_897 + 36 len 28]
                        mem[64] = _896 + 196
                        mem[_896 + 132] = 32
                        mem[_896 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor6[_849].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _903 = mem[_897]
                        s = 0
                        while s < _903:
                            mem[s + _896 + 196] = mem[s + _897 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_903) > _903:
                            mem[_903 + _896 + 196] = 0
                        call stor6[_849].field_0.mem[_896 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_896 + 200 len _903 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_896 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_896 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _896 + 264] = mem[idx + _896 + 164]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_896 + 264]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _896 + ceil32(return_data.size) + 197
                            mem[_896 + 196] = return_data.size
                            mem[_896 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_896 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_896 + ceil32(return_data.size) + 201] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _896 + ceil32(return_data.size) + 265] = mem[idx + _896 + 164]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_896 + ceil32(return_data.size) + 265]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_896 + 228] == bool(mem[_896 + 228])
                                if not mem[_896 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xea9d6b1a: _848, mem[_850 + 44 len 20], (block.timestamp * sub_53b7254e[stor9[_848].field_1536]) - (sub_f6a1dae8[_848].field_1280 * sub_53b7254e[stor9[_848].field_1536])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
