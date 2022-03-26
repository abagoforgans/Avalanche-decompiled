contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function detonate() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[19927 len 32]
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[19927 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[19927 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[19889 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[19927 len 32]
    create contract with 0 wei
                    code: code.data[1235 len 11879], address(arg1), address(arg2), arg6, arg4, address(arg5)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[13114 len 6775], address(arg3), address(arg2), arg6
    return address(create.new_address), address(create.new_address)
}



}
