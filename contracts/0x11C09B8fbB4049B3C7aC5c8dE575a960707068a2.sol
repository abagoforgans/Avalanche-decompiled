contract main {




// =====================  Runtime code  =====================


#
#  - buyNFT(address arg1, uint256 arg2)
#
address owner;
mapping of uint256 sub_ea741922;
mapping of struct sub_26507538;
array of struct sub_afd1d223;
array of struct sub_4b19501e;
mapping of struct sub_3bf8610b;
array of address stor6;

function sub_26507538(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_26507538[address(arg1)].field_512
}

function sub_3bf8610b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_3bf8610b[arg1][arg2].field_0, sub_3bf8610b[arg1][arg2].field_256, sub_3bf8610b[arg1][arg2].field_512
}

function sub_4b19501e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 < sub_4b19501e[arg1][arg2].field_0
    return sub_4b19501e[arg1][arg2][arg3].field_0, 
           sub_4b19501e[arg1][arg2][arg3].field_256,
           sub_4b19501e[arg1][arg2][arg3].field_512,
           bool(sub_4b19501e[arg1][arg2][arg3].field_768)
}

function getBalanceOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_3bf8610b[address(arg1)][address(arg2)].field_0
}

function sub_63c0a94f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_26507538[address(arg1)].field_256
}

function farmRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_26507538[arg1].field_0, 
           sub_26507538[arg1].field_256,
           sub_26507538[arg1].field_512,
           sub_26507538[arg1].field_768,
           sub_26507538[arg1].field_1024,
           sub_26507538[arg1].field_1280,
           bool(sub_26507538[arg1].field_1440),
           bool(sub_26507538[arg1].field_1448)
}

function getRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_26507538[address(arg1)].field_0
}

function owner() payable {
    return owner
}

function sub_afd1d223(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_afd1d223[address(arg1)].field_0
}

function sub_d20c9ae3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_26507538[address(arg1)].field_1440)
}

function getTotalStaked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_26507538[address(arg1)].field_768
}

function sub_df23f9be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_26507538[address(arg1)].field_1024
}

function sub_ea741922(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_ea741922[arg1][arg2][arg3]
}

function hasReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_26507538[address(arg1)].field_1448)
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

function sub_9c96f420(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= sub_afd1d223[address(arg1)].field_0:
        revert with 0, 50
    sub_afd1d223[address(arg1)][arg2].field_2560 = 0
    emit 0x4b637f9a: address(arg1), arg2
}

function sub_e4726259(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= sub_afd1d223[address(arg1)].field_0:
        revert with 0, 50
    sub_afd1d223[address(arg1)][arg2].field_2560 = 0
    emit 0xf07f2552: address(arg1), arg2
}

function sub_c4640e30(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= sub_afd1d223[address(arg1)].field_0:
        revert with 0, 50
    sub_afd1d223[address(arg1)][arg2].field_2048 = arg3
    emit 0x1b3d697c: address(arg1), arg2, arg3
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

function sub_b29ad689(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_26507538[address(arg1)].field_1448:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward for that farm does not exists'
    sub_26507538[address(arg1)].field_1440 = 1
}

function sub_f8112eed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_26507538[address(arg1)].field_1448:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward for that farm does not exists'
    sub_26507538[address(arg1)].field_1440 = 0
}

function sub_19f63a27(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_26507538[address(arg1)].field_1448:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward for that farm does not exists'
    sub_26507538[address(arg1)].field_512 = arg2
}

function sub_70e13aa5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_26507538[address(arg1)].field_1448:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward for that farm does not exists'
    sub_26507538[address(arg1)].field_1024 = address(arg2)
}

function sub_6b42e66a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_26507538[address(arg1)].field_1448:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward for that farm does not exists'
    require ext_code.size(sub_26507538[address(arg1)].field_0)
    call sub_26507538[address(arg1)].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function setRewardToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_26507538[address(arg1)].field_1448:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward for that farm does not exists'
    idx = 0
    while idx < uint256(stor6[address(arg1)]):
        if idx >= uint256(stor6[address(arg1)]):
            revert with 0, 50
        sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_512 = 0
        sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_256 = block.timestamp
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    sub_26507538[address(arg1)].field_0 = arg2
}

function sub_4c9a0a1a(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_26507538[address(arg1)].field_1448:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward for that farm already exists'
    require ext_code.size(address(arg2))
    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    sub_26507538[address(arg1)].field_0 = address(arg2)
    sub_26507538[address(arg1)].field_256 = arg5
    sub_26507538[address(arg1)].field_512 = arg4
    sub_26507538[address(arg1)].field_768 = 0
    sub_26507538[address(arg1)].field_1024 = address(arg6)
    sub_26507538[address(arg1)].field_1280 = address(arg7)
    sub_26507538[address(arg1)].field_1440 = 1
    sub_26507538[address(arg1)].field_1448 = 1
    sub_26507538[address(arg1)].field_1456 = 0
}

function sub_e27742ca(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = sha3(address(arg1), 4)
    mem[64] = (32 * sub_4b19501e[address(arg1)][address(arg2)].field_0) + 128
    mem[96] = sub_4b19501e[address(arg1)][address(arg2)].field_0
    s = 128
    idx = 0
    while idx < sub_4b19501e[address(arg1)][address(arg2)].field_0:
        mem[0] = sha3(address(arg2), sha3(address(arg1), 4))
        _15 = mem[64]
        mem[64] = mem[64] + 128
        mem[_15] = sub_4b19501e[address(arg1)][address(arg2)][idx].field_0
        mem[_15 + 32] = sub_4b19501e[address(arg1)][address(arg2)][idx].field_256
        mem[_15 + 64] = sub_4b19501e[address(arg1)][address(arg2)][idx].field_512
        mem[_15 + 96] = bool(sub_4b19501e[address(arg1)][address(arg2)][idx].field_768)
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _17:
        _24 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_24 + 32]
        mem[t + 64] = mem[_24 + 64]
        mem[t + 96] = bool(mem[_24 + 96])
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _16 + (128 * _17) + -mem[64] + 64
}

function sub_0faccefc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < sub_4b19501e[address(arg1)][msg.sender].field_0:
        if idx >= sub_4b19501e[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        if sub_4b19501e[address(arg1)][msg.sender][idx].field_512 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if idx >= sub_4b19501e[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        if block.timestamp < sub_4b19501e[address(arg1)][msg.sender][idx].field_256:
            revert with 0, 17
        if block.timestamp - sub_4b19501e[address(arg1)][msg.sender][idx].field_256 < 24 * 3600 * sub_4b19501e[address(arg1)][msg.sender][idx].field_512:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 4)
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_4b19501e[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        if sub_4b19501e[address(arg1)][msg.sender][idx].field_768:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 4)
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_4b19501e[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        if s > !sub_4b19501e[address(arg1)][msg.sender][idx].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 4)
        idx = idx + 1
        s = s + sub_4b19501e[address(arg1)][msg.sender][idx].field_0
        continue 
    return s
}

function earned(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_3bf8610b[address(arg1)][address(arg2)].field_256:
        if block.timestamp < sub_3bf8610b[address(arg1)][address(arg2)].field_256:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(arg2)].field_0 and block.timestamp - sub_3bf8610b[address(arg1)][address(arg2)].field_256 > -1 / sub_3bf8610b[address(arg1)][address(arg2)].field_0:
            revert with 0, 17
        if (block.timestamp * sub_3bf8610b[address(arg1)][address(arg2)].field_0) - (sub_3bf8610b[address(arg1)][address(arg2)].field_256 * sub_3bf8610b[address(arg1)][address(arg2)].field_0) and sub_26507538[address(arg1)].field_256 / 100 > -1 / (block.timestamp * sub_3bf8610b[address(arg1)][address(arg2)].field_0) - (sub_3bf8610b[address(arg1)][address(arg2)].field_256 * sub_3bf8610b[address(arg1)][address(arg2)].field_0):
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(arg2)].field_512 > !((block.timestamp * sub_3bf8610b[address(arg1)][address(arg2)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(arg2)].field_256 * sub_3bf8610b[address(arg1)][address(arg2)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600):
            revert with 0, 17
        return (sub_3bf8610b[address(arg1)][address(arg2)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(arg2)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(arg2)].field_256 * sub_3bf8610b[address(arg1)][address(arg2)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600))
    if block.timestamp < block.timestamp:
        revert with 0, 17
    if sub_3bf8610b[address(arg1)][address(arg2)].field_0 and 0 > -1 / sub_3bf8610b[address(arg1)][address(arg2)].field_0:
        revert with 0, 17
    if False and sub_26507538[address(arg1)].field_256 / 100 > 0:
        revert with 0, 17
    if sub_3bf8610b[address(arg1)][address(arg2)].field_512 > -1:
        revert with 0, 17
    return sub_3bf8610b[address(arg1)][address(arg2)].field_512
}

function sub_95f29898(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_26507538[address(arg1)].field_1448:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward for that farm does not exists'
    idx = 0
    while idx < uint256(stor6[address(arg1)]):
        if idx >= uint256(stor6[address(arg1)]):
            revert with 0, 50
        if not sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_256:
            if block.timestamp < block.timestamp:
                revert with 0, 17
            if sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0 and 0 > -1 / sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0:
                revert with 0, 17
            if False and sub_26507538[address(arg1)].field_256 / 100 > 0:
                revert with 0, 17
            if sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_512 > -1:
                revert with 0, 17
        else:
            if block.timestamp < sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_256:
                revert with 0, 17
            if sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0 and block.timestamp - sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_256 > -1 / sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0:
                revert with 0, 17
            if (block.timestamp * sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0) - (sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_256 * sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0) and sub_26507538[address(arg1)].field_256 / 100 > -1 / (block.timestamp * sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0) - (sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_256 * sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0):
                revert with 0, 17
            if sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_512 > !((block.timestamp * sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_256 * sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600):
                revert with 0, 17
            sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_512 += (block.timestamp * sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_256 * sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600
        sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_256 = block.timestamp
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 6
        idx = idx + 1
        continue 
    sub_26507538[address(arg1)].field_256 = arg2
}

function sub_e8bf88b2(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg5 == bool(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_afd1d223[address(arg1)].field_0++
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_0 = address(arg2)
    if sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_256:
        if sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_256 == uint255(sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((11 * sub_afd1d223[address(arg1)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_256 = 0
            idx = 0
            while (uint255(sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_256) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((11 * sub_afd1d223[address(arg1)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_256 == sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_257 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((11 * sub_afd1d223[address(arg1)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_256 = 0
            idx = 0
            while sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_257 + 31 / 32 > idx:
                stor[idx + sha3((11 * sub_afd1d223[address(arg1)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_512 = arg4
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_768 = uint8(bool(arg5))
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_1024 = arg6
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_1280 = arg7
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_1536 = arg8
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_1792 = arg9
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_2048 = arg10
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_2304 = 0
    sub_afd1d223[address(arg1)][sub_afd1d223[address(arg1)].field_0].field_2560 = 1
    if sub_afd1d223[address(arg1)].field_0 < 1:
        revert with 0, 17
    emit 0xc973c1e8: address(arg1), address(arg2), 352, arg4, bool(arg5), arg6, arg7, arg8, arg9, arg10, sub_afd1d223[address(arg1)].field_0 - 1, arg3.length, arg3[all], 0
}

function stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'staking amount must be greater than 0'
    if not sub_26507538[address(arg1)].field_1440:
        revert with 0, 'Reward is not valid'
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    sub_4b19501e[address(arg1)][msg.sender].field_0++
    sub_4b19501e[address(arg1)][msg.sender][sub_4b19501e[address(arg1)][msg.sender].field_0].field_0 = arg2
    sub_4b19501e[address(arg1)][msg.sender][sub_4b19501e[address(arg1)][msg.sender].field_0].field_256 = block.timestamp
    sub_4b19501e[address(arg1)][msg.sender][sub_4b19501e[address(arg1)][msg.sender].field_0].field_512 = sub_26507538[address(arg1)].field_512
    sub_4b19501e[address(arg1)][msg.sender][sub_4b19501e[address(arg1)][msg.sender].field_0].field_768 = 0
    if sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
        if block.timestamp < sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and block.timestamp - sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
            revert with 0, 17
        if (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) and sub_26507538[address(arg1)].field_256 / 100 > -1 / (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0):
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > !((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600):
            revert with 0, 17
        sub_3bf8610b[address(arg1)][msg.sender].field_512 = sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600)
    else:
        if block.timestamp < block.timestamp:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and 0 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
            revert with 0, 17
        if False and sub_26507538[address(arg1)].field_256 / 100 > 0:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > -1:
            revert with 0, 17
        sub_3bf8610b[address(arg1)][msg.sender].field_512 = sub_3bf8610b[address(arg1)][address(msg.sender)].field_512
    sub_3bf8610b[address(arg1)][msg.sender].field_256 = block.timestamp
    if sub_3bf8610b[address(arg1)][msg.sender].field_0 > !arg2:
        revert with 0, 17
    sub_3bf8610b[address(arg1)][msg.sender].field_0 += arg2
    if sub_26507538[address(arg1)].field_768 > !arg2:
        revert with 0, 17
    sub_26507538[address(arg1)].field_768 += arg2
    uint256(stor6[address(arg1)])++
    uint256(stor6[address(arg1)][uint256(stor6[address(arg1)])]) = msg.sender or Mask(96, 160, uint256(stor6[address(arg1)][uint256(stor6[address(arg1)])]))
    emit Staked(address(arg1), sub_26507538[address(arg1)].field_512, arg2, msg.sender);
}

function sub_10a4a33d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > !arg3:
        revert with 0, 17
    mem[0] = address(arg1)
    mem[32] = 6
    if arg2 + arg3 <= uint256(stor6[address(arg1)]):
        idx = arg2
        while idx < arg2 + arg3:
            if idx >= uint256(stor6[address(arg1)]):
                revert with 0, 50
            mem[0] = address(stor6[address(arg1)][idx])
            mem[32] = sha3(address(arg1), 5)
            if sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0:
                mem[mem[64] + 4] = address(stor6[address(arg1)][idx])
                mem[mem[64] + 36] = sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0
                require ext_code.size(address(arg1))
                call address(arg1).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor6[address(arg1)][idx]), sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _41 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_41] == bool(mem[_41])
                require mem[_41]
                if sub_26507538[address(arg1)].field_768 < sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 2
                sub_26507538[address(arg1)].field_768 -= sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0
                mem[mem[64]] = address(arg1)
                mem[mem[64] + 32] = sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0
                emit 0x472be967: address(arg1), sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0, address(stor6[address(arg1)][idx])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = address(arg1)
        mem[32] = 6
        idx = arg2
        while idx < uint256(stor6[address(arg1)]):
            if idx >= uint256(stor6[address(arg1)]):
                revert with 0, 50
            mem[0] = address(stor6[address(arg1)][idx])
            mem[32] = sha3(address(arg1), 5)
            if sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0:
                mem[mem[64] + 4] = address(stor6[address(arg1)][idx])
                mem[mem[64] + 36] = sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0
                require ext_code.size(address(arg1))
                call address(arg1).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor6[address(arg1)][idx]), sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _42 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_42] == bool(mem[_42])
                require mem[_42]
                if sub_26507538[address(arg1)].field_768 < sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 2
                sub_26507538[address(arg1)].field_768 -= sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0
                mem[mem[64]] = address(arg1)
                mem[mem[64] + 32] = sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0
                emit 0x472be967: address(arg1), sub_3bf8610b[address(arg1)][address(stor6[address(arg1)][idx])].field_0, address(stor6[address(arg1)][idx])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_26507538[address(arg1)].field_1440:
        revert with 0, 'Reward is not valid'
    if sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
        if block.timestamp < sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and block.timestamp - sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
            revert with 0, 17
        if (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) and sub_26507538[address(arg1)].field_256 / 100 > -1 / (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0):
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > !((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600):
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600) <= 0:
            revert with 0, 'user have no rewards to claim'
        require ext_code.size(sub_26507538[address(arg1)].field_0)
        call sub_26507538[address(arg1)].field_0.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        sub_3bf8610b[address(arg1)][msg.sender].field_512 = 0
        sub_3bf8610b[address(arg1)][msg.sender].field_256 = block.timestamp
        emit Claimed(address(arg1), sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600), msg.sender);
    else:
        if block.timestamp < block.timestamp:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and 0 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
            revert with 0, 17
        if False and sub_26507538[address(arg1)].field_256 / 100 > 0:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > -1:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 <= 0:
            revert with 0, 'user have no rewards to claim'
        require ext_code.size(sub_26507538[address(arg1)].field_0)
        call sub_26507538[address(arg1)].field_0.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_3bf8610b[address(arg1)][address(msg.sender)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        sub_3bf8610b[address(arg1)][msg.sender].field_512 = 0
        sub_3bf8610b[address(arg1)][msg.sender].field_256 = block.timestamp
        emit Claimed(address(arg1), sub_3bf8610b[address(arg1)][address(msg.sender)].field_512, msg.sender);
}

function sub_2b2a6736(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_afd1d223[arg1].field_0
    if sub_afd1d223[arg1][arg2].field_256:
        if sub_afd1d223[arg1][arg2].field_256 == uint255(sub_afd1d223[arg1][arg2].field_256) * 0.5 < 32:
            revert with 0, 34
        if sub_afd1d223[arg1][arg2].field_256:
            if sub_afd1d223[arg1][arg2].field_256 == uint255(sub_afd1d223[arg1][arg2].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_afd1d223[arg1][arg2].field_256):
                if 31 >= uint255(sub_afd1d223[arg1][arg2].field_256) * 0.5:
                    mem[128] = 256 * sub_afd1d223[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_afd1d223', 3)) + 1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_afd1d223[arg1][arg2].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_afd1d223', 3)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_afd1d223[arg1][arg2].field_256 == sub_afd1d223[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if sub_afd1d223[arg1][arg2].field_257:
                if 31 >= sub_afd1d223[arg1][arg2].field_257:
                    mem[128] = 256 * sub_afd1d223[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_afd1d223', 3)) + 1)].field_0
                    idx = 128
                    s = 0
                    while sub_afd1d223[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_afd1d223', 3)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sub_afd1d223[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, sub_afd1d223[arg1][arg2].field_256), data=mem[128 len ceil32(uint255(sub_afd1d223[arg1][arg2].field_256) * 0.5)]),
               sub_afd1d223[arg1][arg2].field_512,
               bool(sub_afd1d223[arg1][arg2].field_768),
               sub_afd1d223[arg1][arg2].field_1024,
               sub_afd1d223[arg1][arg2].field_1280,
               sub_afd1d223[arg1][arg2].field_1536,
               sub_afd1d223[arg1][arg2].field_1792,
               sub_afd1d223[arg1][arg2].field_2048,
               sub_afd1d223[arg1][arg2].field_2304,
               bool(sub_afd1d223[arg1][arg2].field_2560)
    if sub_afd1d223[arg1][arg2].field_256 == sub_afd1d223[arg1][arg2].field_257 < 32:
        revert with 0, 34
    if sub_afd1d223[arg1][arg2].field_256:
        if sub_afd1d223[arg1][arg2].field_256 == uint255(sub_afd1d223[arg1][arg2].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_afd1d223[arg1][arg2].field_256):
            if 31 >= uint255(sub_afd1d223[arg1][arg2].field_256) * 0.5:
                mem[128] = 256 * sub_afd1d223[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_afd1d223', 3)) + 1)].field_0
                idx = 128
                s = 0
                while (uint255(sub_afd1d223[arg1][arg2].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_afd1d223', 3)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_afd1d223[arg1][arg2].field_256 == sub_afd1d223[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if sub_afd1d223[arg1][arg2].field_257:
            if 31 >= sub_afd1d223[arg1][arg2].field_257:
                mem[128] = 256 * sub_afd1d223[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_afd1d223', 3)) + 1)].field_0
                idx = 128
                s = 0
                while sub_afd1d223[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_afd1d223', 3)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sub_afd1d223[arg1][arg2].field_0, 
           Array(len=sub_afd1d223[arg1][arg2].field_256, data=mem[128 len ceil32(sub_afd1d223[arg1][arg2].field_257)]),
           sub_afd1d223[arg1][arg2].field_512,
           bool(sub_afd1d223[arg1][arg2].field_768),
           sub_afd1d223[arg1][arg2].field_1024,
           sub_afd1d223[arg1][arg2].field_1280,
           sub_afd1d223[arg1][arg2].field_1536,
           sub_afd1d223[arg1][arg2].field_1792,
           sub_afd1d223[arg1][arg2].field_2048,
           sub_afd1d223[arg1][arg2].field_2304,
           bool(sub_afd1d223[arg1][arg2].field_2560)
}

function getNFT(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= sub_afd1d223[address(arg1)].field_0:
        revert with 0, 50
    if sub_afd1d223[address(arg1)][arg2].field_256:
        if sub_afd1d223[address(arg1)][arg2].field_256 == uint255(sub_afd1d223[address(arg1)][arg2].field_256) * 0.5 < 32:
            revert with 0, 34
        if sub_afd1d223[address(arg1)][arg2].field_256:
            if sub_afd1d223[address(arg1)][arg2].field_256 == uint255(sub_afd1d223[address(arg1)][arg2].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_afd1d223[address(arg1)][arg2].field_256):
                if 31 >= uint255(sub_afd1d223[address(arg1)][arg2].field_256) * 0.5:
                    mem[832] = 256 * sub_afd1d223[address(arg1)][arg2].field_264
                else:
                    mem[832] = stor[sha3((11 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_0
                    idx = 832
                    s = 0
                    while (uint255(sub_afd1d223[address(arg1)][arg2].field_256) * 0.5) + 800 > idx:
                        mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_afd1d223[address(arg1)][arg2].field_256 == sub_afd1d223[address(arg1)][arg2].field_257 < 32:
                revert with 0, 34
            if sub_afd1d223[address(arg1)][arg2].field_257:
                if 31 >= sub_afd1d223[address(arg1)][arg2].field_257:
                    mem[832] = 256 * sub_afd1d223[address(arg1)][arg2].field_264
                else:
                    mem[832] = stor[sha3((11 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_0
                    idx = 832
                    s = 0
                    while sub_afd1d223[address(arg1)][arg2].field_257 + 800 > idx:
                        mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, sub_afd1d223[address(arg1)][arg2].field_0, 
               352,
               sub_afd1d223[address(arg1)][arg2].field_512,
               bool(sub_afd1d223[address(arg1)][arg2].field_768),
               sub_afd1d223[address(arg1)][arg2].field_1024,
               sub_afd1d223[address(arg1)][arg2].field_1280,
               sub_afd1d223[address(arg1)][arg2].field_1536,
               sub_afd1d223[address(arg1)][arg2].field_1792,
               sub_afd1d223[address(arg1)][arg2].field_2048,
               sub_afd1d223[address(arg1)][arg2].field_2304,
               bool(sub_afd1d223[address(arg1)][arg2].field_2560),
               2 * Mask(256, -1, sub_afd1d223[address(arg1)][arg2].field_256),
               mem[832 len ceil32(uint255(sub_afd1d223[address(arg1)][arg2].field_256) * 0.5)]
    if sub_afd1d223[address(arg1)][arg2].field_256 == sub_afd1d223[address(arg1)][arg2].field_257 < 32:
        revert with 0, 34
    if sub_afd1d223[address(arg1)][arg2].field_256:
        if sub_afd1d223[address(arg1)][arg2].field_256 == uint255(sub_afd1d223[address(arg1)][arg2].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_afd1d223[address(arg1)][arg2].field_256):
            if 31 >= uint255(sub_afd1d223[address(arg1)][arg2].field_256) * 0.5:
                mem[832] = 256 * sub_afd1d223[address(arg1)][arg2].field_264
            else:
                mem[832] = stor[sha3((11 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_0
                idx = 832
                s = 0
                while (uint255(sub_afd1d223[address(arg1)][arg2].field_256) * 0.5) + 800 > idx:
                    mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_afd1d223[address(arg1)][arg2].field_256 == sub_afd1d223[address(arg1)][arg2].field_257 < 32:
            revert with 0, 34
        if sub_afd1d223[address(arg1)][arg2].field_257:
            if 31 >= sub_afd1d223[address(arg1)][arg2].field_257:
                mem[832] = 256 * sub_afd1d223[address(arg1)][arg2].field_264
            else:
                mem[832] = stor[sha3((11 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_0
                idx = 832
                s = 0
                while sub_afd1d223[address(arg1)][arg2].field_257 + 800 > idx:
                    mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_afd1d223', 3)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, sub_afd1d223[address(arg1)][arg2].field_0, 
           352,
           sub_afd1d223[address(arg1)][arg2].field_512,
           bool(sub_afd1d223[address(arg1)][arg2].field_768),
           sub_afd1d223[address(arg1)][arg2].field_1024,
           sub_afd1d223[address(arg1)][arg2].field_1280,
           sub_afd1d223[address(arg1)][arg2].field_1536,
           sub_afd1d223[address(arg1)][arg2].field_1792,
           sub_afd1d223[address(arg1)][arg2].field_2048,
           sub_afd1d223[address(arg1)][arg2].field_2304,
           bool(sub_afd1d223[address(arg1)][arg2].field_2560),
           sub_afd1d223[address(arg1)][arg2].field_256,
           mem[832 len ceil32(sub_afd1d223[address(arg1)][arg2].field_257)]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_26507538[address(arg1)].field_1440:
        revert with 0, 'Reward is not valid'
    if sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
        if block.timestamp < sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and block.timestamp - sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
            revert with 0, 17
        if (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) and sub_26507538[address(arg1)].field_256 / 100 > -1 / (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0):
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > !((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600):
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600):
            if not sub_26507538[address(arg1)].field_1440:
                revert with 0, 'Reward is not valid'
            if sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
                if block.timestamp < sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and block.timestamp - sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 17
                if (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) and sub_26507538[address(arg1)].field_256 / 100 > -1 / (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0):
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > !((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600):
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600) <= 0:
                    revert with 0, 'user have no rewards to claim'
                require ext_code.size(sub_26507538[address(arg1)].field_0)
                call sub_26507538[address(arg1)].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_3bf8610b[address(arg1)][msg.sender].field_512 = 0
                sub_3bf8610b[address(arg1)][msg.sender].field_256 = block.timestamp
                emit Claimed(address(arg1), sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600), msg.sender);
            else:
                if block.timestamp < block.timestamp:
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and 0 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 17
                if False and sub_26507538[address(arg1)].field_256 / 100 > 0:
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > -1:
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 <= 0:
                    revert with 0, 'user have no rewards to claim'
                require ext_code.size(sub_26507538[address(arg1)].field_0)
                call sub_26507538[address(arg1)].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_3bf8610b[address(arg1)][address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_3bf8610b[address(arg1)][msg.sender].field_512 = 0
                sub_3bf8610b[address(arg1)][msg.sender].field_256 = block.timestamp
                emit Claimed(address(arg1), sub_3bf8610b[address(arg1)][address(msg.sender)].field_512, msg.sender);
    else:
        if block.timestamp < block.timestamp:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and 0 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
            revert with 0, 17
        if False and sub_26507538[address(arg1)].field_256 / 100 > 0:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > -1:
            revert with 0, 17
        if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512:
            if not sub_26507538[address(arg1)].field_1440:
                revert with 0, 'Reward is not valid'
            if sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
                if block.timestamp < sub_3bf8610b[address(arg1)][address(msg.sender)].field_256:
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and block.timestamp - sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 17
                if (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) and sub_26507538[address(arg1)].field_256 / 100 > -1 / (block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0):
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > !((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600):
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600) <= 0:
                    revert with 0, 'user have no rewards to claim'
                require ext_code.size(sub_26507538[address(arg1)].field_0)
                call sub_26507538[address(arg1)].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_3bf8610b[address(arg1)][msg.sender].field_512 = 0
                sub_3bf8610b[address(arg1)][msg.sender].field_256 = block.timestamp
                emit Claimed(address(arg1), sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 + ((block.timestamp * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) - (sub_3bf8610b[address(arg1)][address(msg.sender)].field_256 * sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 * sub_26507538[address(arg1)].field_256 / 100) / 24 * 3600), msg.sender);
            else:
                if block.timestamp < block.timestamp:
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_0 and 0 > -1 / sub_3bf8610b[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 17
                if False and sub_26507538[address(arg1)].field_256 / 100 > 0:
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 > -1:
                    revert with 0, 17
                if sub_3bf8610b[address(arg1)][address(msg.sender)].field_512 <= 0:
                    revert with 0, 'user have no rewards to claim'
                require ext_code.size(sub_26507538[address(arg1)].field_0)
                call sub_26507538[address(arg1)].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_3bf8610b[address(arg1)][address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                sub_3bf8610b[address(arg1)][msg.sender].field_512 = 0
                sub_3bf8610b[address(arg1)][msg.sender].field_256 = block.timestamp
                emit Claimed(address(arg1), sub_3bf8610b[address(arg1)][address(msg.sender)].field_512, msg.sender);
    idx = 0
    s = 0
    while idx < sub_4b19501e[address(arg1)][msg.sender].field_0:
        if idx >= sub_4b19501e[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        if sub_4b19501e[address(arg1)][msg.sender][idx].field_512 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if idx >= sub_4b19501e[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        if block.timestamp < sub_4b19501e[address(arg1)][msg.sender][idx].field_256:
            revert with 0, 17
        if block.timestamp - sub_4b19501e[address(arg1)][msg.sender][idx].field_256 < 24 * 3600 * sub_4b19501e[address(arg1)][msg.sender][idx].field_512:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 4)
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_4b19501e[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        if sub_4b19501e[address(arg1)][msg.sender][idx].field_768:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 4)
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_4b19501e[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        if s > !sub_4b19501e[address(arg1)][msg.sender][idx].field_0:
            revert with 0, 17
        if idx >= sub_4b19501e[address(arg1)][msg.sender].field_0:
            revert with 0, 50
        sub_4b19501e[address(arg1)][msg.sender][idx].field_768 = 1
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 4)
        idx = idx + 1
        s = s + sub_4b19501e[address(arg1)][msg.sender][idx].field_0
        continue 
    if s <= 0:
        revert with 0, 'user have no tokens to withdraw'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if sub_26507538[address(arg1)].field_768 < s:
        revert with 0, 17
    sub_26507538[address(arg1)].field_768 -= s
    if sub_3bf8610b[address(arg1)][msg.sender].field_0 < s:
        revert with 0, 17
    sub_3bf8610b[address(arg1)][msg.sender].field_0 -= s
    emit 0x472be967: address(arg1), s, msg.sender
}



}
