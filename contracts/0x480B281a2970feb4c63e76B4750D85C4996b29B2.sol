contract main {




// =====================  Runtime code  =====================


const sub_f556fcdb(?) = address(this.address)


address stor0;
address stor2;
address sub_2dd21d17Address;
mapping of uint8 stor4;

function sub_2dd21d17(?) payable {
    if not stor4[msg.sender]:
        revert with 0, 'Caller is not authed'
    return sub_2dd21d17Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4[msg.sender]:
        revert with 0, 'Caller is not authed'
    stor0 = arg1
}

function sub_e4572019(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor4[msg.sender]:
        revert with 0, 'Caller is not authed'
    create2 contract with 0 wei
                    salt: sha3(this.address, address(arg1), block.timestamp)
                    code: code.data[747 len 8603]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address arg1, address arg2) with:
         gas gas_remaining wei
        args stor0, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2dd21d17Address = address(create2.new_address)
    return address(create2.new_address)
}



}
