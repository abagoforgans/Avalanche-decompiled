contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_f77435f8;
uint256 sub_cea83a88;
mapping of uint256 sub_7cd42076;
mapping of uint256 sub_f5020232;

function sub_2268e1c7(?) {
    return sub_cea83a88
}

function sub_7cd42076(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7cd42076[arg1]
}

function owner() {
    return owner
}

function sub_cea83a88(?) {
    return sub_cea83a88
}

function sub_e4302bb4(?) {
    return sub_f77435f8
}

function sub_f5020232(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f5020232[arg1]
}

function sub_f77435f8(?) {
    return sub_f77435f8
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

function sub_14b60450(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cea83a88 = arg1
}

function sub_c7355ee5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f77435f8 = arg1
}

function sub_230cceae(?) payable {
    if msg.value < sub_f77435f8:
        revert with 0, 'Not enough ethers sent'
    if block.timestamp > -2592001:
        revert with 0, 17
    require block.timestamp + (720 * 24 * 3600) >= block.timestamp
    sub_7cd42076[msg.sender] = block.timestamp + (720 * 24 * 3600)
}

function sub_9db4d9e6(?) payable {
    if msg.value < sub_cea83a88:
        revert with 0, 'Not enough ethers sent'
    if block.timestamp > -2592001:
        revert with 0, 17
    require block.timestamp + (720 * 24 * 3600) >= block.timestamp
    sub_f5020232[msg.sender] = block.timestamp + (720 * 24 * 3600)
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address)
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
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



}
