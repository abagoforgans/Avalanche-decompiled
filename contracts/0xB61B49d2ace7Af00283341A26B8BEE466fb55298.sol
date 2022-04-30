contract main {




// =====================  Runtime code  =====================


#
#  - sub_460273ec(?)
#  - sub_90872eec(?)
#
address owner;
uint256 bonusBalance;
array of struct referrers;
mapping of uint256 totalCommission;
mapping of uint8 stor4;
mapping of address sponsors;
mapping of uint256 sub_25f58dac;
address stor7;

function sub_25f58dac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_25f58dac[arg1]
}

function sub_820da3d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function owner() payable {
    return owner
}

function sub_a5d4ed82(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[address(arg1)])
}

function bonusBalance() payable {
    return bonusBalance
}

function referrers(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < referrers[arg1].field_0
    return referrers[arg1][arg2].field_0, referrers[arg1][arg2].field_256
}

function sponsors(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sponsors[arg1]
}

function totalCommission(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalCommission[arg1]
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

function sub_90c5ce37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor4[address(msg.sender)]:
        stor4[address(msg.sender)] = 1
        referrers[address(arg1)].field_0++
        referrers[address(arg1)][referrers[address(arg1)].field_0].field_0 = msg.sender
        referrers[address(arg1)][referrers[address(arg1)].field_0].field_256 = block.timestamp
        sponsors[address(arg1)] = msg.sender
    emit 0xc846062a: msg.sender, address(arg1)
}

function returnTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xbac3e1a8: arg2
}

function sub_35d64a7c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 2
    idx = 0
    s = 0
    while idx < referrers[address(msg.sender)].field_0:
        mem[32] = 2
        if idx >= referrers[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 2)
        mem[mem[64]] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = referrers[address(msg.sender)][idx].field_0
        require ext_code.size(stor7)
        staticcall stor7.pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args arg1, referrers[address(msg.sender)][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _25 = mem[_24]
        require mem[_24] == mem[_24]
        require mem[_24 + 32] == mem[_24 + 44 len 20]
        _27 = mem[_24 + 64]
        require mem[_24 + 64] <= test266151307()
        require _24 + mem[_24 + 64] + 31 < _24 + return_data.size
        _28 = mem[_24 + mem[_24 + 64]]
        if mem[_24 + mem[_24 + 64]] > test266151307():
            revert with 'NH{q', 65
        if _24 + ceil32(return_data.size) + ceil32(ceil32(mem[_24 + mem[_24 + 64]])) + 1 > test266151307() or ceil32(ceil32(mem[_24 + mem[_24 + 64]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _24 + ceil32(return_data.size) + ceil32(ceil32(mem[_24 + mem[_24 + 64]])) + 1
        mem[_24 + ceil32(return_data.size)] = _28
        require _27 + _28 + 32 <= return_data.size
        t = 0
        while t < _28:
            mem[_24 + ceil32(return_data.size) + t + 32] = mem[_24 + _27 + t + 32]
            mem[0] = msg.sender
            mem[32] = 2
            t = t + 32
            continue 
        if ceil32(_28) > _28:
            mem[_24 + ceil32(return_data.size) + _28 + 32] = 0
        require mem[_24 + 96] == mem[_24 + 96]
        if s > -_25 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 2
        idx = idx + 1
        s = s + _25
        continue 
    return s
}



}
