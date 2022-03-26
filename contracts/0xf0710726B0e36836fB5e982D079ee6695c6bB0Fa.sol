contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function detonate() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[18601 len 32]
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[18601 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[18601 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[18563 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function init(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[18601 len 32]
    mem[13061 len 0] = None
    mem[13125 len 0] = None
    create contract with 0 wei
                    code: code.data[1564 len 12581], arg4, address(arg1), 224, 288, address(arg2), arg6, arg7, 1, mem[13061], 1, mem[13125]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[14145 len 4418], address(arg1), address(arg2), address(create.new_address), arg5
    return address(create.new_address), address(create.new_address)
}



}
