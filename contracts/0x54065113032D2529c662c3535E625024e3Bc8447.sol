contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor3;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_eba96d0e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    emit Transfer(this.address, address(arg1), 1);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_6f5c1f45(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value stor3 wei
         gas gas_remaining wei
    require ext_call.success
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
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
