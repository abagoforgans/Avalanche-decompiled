contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function detonate() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17083 len 32]
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17083 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17083 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[17045 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0b9705e1(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17083 len 32]
    create contract with 0 wei
                    code: code.data[1239 len 6132], address(arg1), address(arg4), arg5, arg6
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[7371 len 9674], address(arg1), address(arg2), address(arg3), address(create.new_address)
    return address(create.new_address), address(create.new_address)
}



}
