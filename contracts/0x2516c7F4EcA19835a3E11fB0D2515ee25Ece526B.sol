contract main {




// =====================  Runtime code  =====================


address owner;
uint256 root;
mapping of uint256 tokensClaimed;
uint256 pricePerToken;
array of address sub_4644d6e4;
address sub_c0aa80e7Address;
address sub_8547f152Address;
uint256 sub_3f2b605f;

function sub_3f2b605f(?) payable {
    return sub_3f2b605f
}

function sub_4644d6e4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_4644d6e4.length
    return sub_4644d6e4[arg1]
}

function tokensClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokensClaimed[arg1]
}

function pricePerToken() payable {
    return pricePerToken
}

function sub_8547f152(?) payable {
    return sub_8547f152Address
}

function owner() payable {
    return owner
}

function sub_c0aa80e7(?) payable {
    return sub_c0aa80e7Address
}

function root() payable {
    return root
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

function updateRoot(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    root = arg1
    return 1
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

function sub_696d30a6(?) payable {
    if sub_8547f152Address != msg.sender:
        revert with 0, 'Not Allowed'
    require ext_code.size(sub_c0aa80e7Address)
    staticcall sub_c0aa80e7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_c0aa80e7Address)
    call sub_c0aa80e7Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Withdraw failed'
}

function sub_8fce8f2f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    mem[180 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 180] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if s + sha3(msg.sender) > mem[(32 * idx) + 180]:
            mem[0] = mem[(32 * idx) + 180]
            mem[32] = s + sha3(msg.sender)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[(32 * idx) + 180], s)
            continue 
        mem[0] = s + sha3(msg.sender)
        mem[32] = mem[(32 * idx) + 180]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = sha3(s, mem[(32 * idx) + 180])
        continue 
    if s != root:
        revert with 0, 'Invalid proof.'
    if tokensClaimed[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    if tokensClaimed[address(msg.sender)] + arg2 > sub_3f2b605f:
        revert with 0, 'Amount Exceeded'
    if arg2 and pricePerToken > -1 / arg2:
        revert with 'NH{q', 17
    if tokensClaimed[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    tokensClaimed[address(msg.sender)] += arg2
    if arg3 >= sub_4644d6e4.length:
        revert with 'NH{q', 50
    require ext_code.size(sub_4644d6e4[arg3])
    call sub_4644d6e4[arg3].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_8547f152Address, arg2 * pricePerToken / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Balance Insuffisant'
    require ext_code.size(sub_c0aa80e7Address)
    call sub_c0aa80e7Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'No balance left in the contract'
    return 1
}



}
