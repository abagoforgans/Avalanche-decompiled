contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_02c8b5e2;
address stor2;

function sub_02c8b5e2(?) {
    require calldata.size - 4 >= 32
    return sub_02c8b5e2[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[11671 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_854685d3(?) {
    require ext_code.size(stor2)
    staticcall stor2.0x37ebea6d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[1004 len 10667], address(msg.sender), block.timestamp
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_02c8b5e2[msg.sender] = address(create.new_address)
}



}
