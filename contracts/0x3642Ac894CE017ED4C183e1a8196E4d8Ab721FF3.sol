contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_3b716452Address;
mapping of address sub_1f16a046;

function sub_1f16a046(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1f16a046[arg1]
}

function sub_3b716452(?) payable {
    return sub_3b716452Address
}

function owner() payable {
    return owner
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

function sub_463a6176(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(sha3(0, this.address, sha3(address(arg1)), sha3(code.data[2222 len 10031], mem[10211 len 17] >> 79992, this.address)))
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

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '#RF_I:042'
    sub_3b716452Address = arg1
    require ext_code.size(arg1)
    staticcall arg1.getChainId() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = ext_call.return_data[0]
}

function sub_7f629efc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not sub_3b716452Address:
        revert with 0, '#RF_CR:042'
    if not address(arg1):
        revert with 0, '#RF_CR:041'
    if not address(arg2):
        revert with 0, '#RF_CR:007'
    if eth.balance(this.address) < 0:
        revert with 0, 'Create2: insufficient balance'
    create2 contract with 0 wei
                    salt: sha3(address(arg1))
                    code: code.data[2222 len 10031], mem[10211 len 17] >> 79992, this.address
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x44bd3765 with:
         gas gas_remaining wei
        args sub_3b716452Address, stor1, address(arg1), address(arg2), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_1f16a046[address(arg1)] = address(create2.new_address)
    emit 0xe8e81167: address(create2.new_address), address(arg1), address(arg2), sub_3b716452Address
    return address(create2.new_address)
}



}
