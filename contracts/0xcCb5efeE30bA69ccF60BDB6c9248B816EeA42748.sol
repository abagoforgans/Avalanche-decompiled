contract main {




// =====================  Runtime code  =====================


#
#  - sub_d1f6a807(?)
#
address owner;
uint256 bonusBalance;
array of struct referrers;
mapping of uint256 totalCommission;
mapping of uint8 stor4;
mapping of address sponsors;
mapping of uint256 sub_25f58dac;

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
    emit 0x4aad3dcf: arg2
}

function sub_90c5ce37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) == msg.sender:
        revert with 0, 'you can not referrer yourself'
    if stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you hhave already been referrenced'
    stor4[address(msg.sender)] = 1
    referrers[address(arg1)].field_0++
    referrers[address(arg1)][referrers[address(arg1)].field_0].field_0 = msg.sender
    referrers[address(arg1)][referrers[address(arg1)].field_0].field_256 = block.timestamp
    sponsors[address(msg.sender)] = address(arg1)
    emit 0xc846062a: msg.sender, address(arg1)
}

function sub_852cd45c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 2
    mem[64] = (32 * referrers[address(msg.sender)].field_0) + 128
    mem[96] = referrers[address(msg.sender)].field_0
    s = 128
    idx = 0
    while idx < referrers[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 2)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = referrers[address(msg.sender)][idx].field_0
        mem[_12 + 32] = referrers[address(msg.sender)][idx].field_256
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
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}



}
