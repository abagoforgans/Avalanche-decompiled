contract main {




// =====================  Runtime code  =====================


address owner;
address futureOwner;
address sub_ad4d4e29Address;
uint256 sub_c187ac47;
array of address sub_778154f2;

function sub_778154f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 10^9
    return sub_778154f2[arg1]
}

function owner() payable {
    return owner
}

function sub_ad4d4e29(?) payable {
    return sub_ad4d4e29Address
}

function futureOwner() payable {
    return futureOwner
}

function sub_c187ac47(?) payable {
    return sub_c187ac47
}

function _fallback() payable {
    revert
}

function applyTransferOwnership() payable {
    require msg.sender == futureOwner
    emit 0xd56a37b3: owner, msg.sender
    owner = msg.sender
}

function commitTransferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    futureOwner = arg1
    emit 0x49a14dc6: arg1
}

function sub_ce8417e6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(sha3(0, this.address, address(arg1), sha3(code.data[2487 len 14571]))), 
           not not ext_code.size(address(sha3(0, this.address, address(arg1), sha3(code.data[2487 len 14571]))))
}

function sub_b8d466c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_ad4d4e29Address = address(arg1)
    create2 contract with 0 wei
                    salt: address(arg1)
                    code: code.data[2487 len 14571]
    if not create2.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require address(create2.new_address)
    if sub_c187ac47 >= 10^9:
        revert with 'NH{q', 50
    sub_778154f2[stor3] = address(create2.new_address)
    sub_c187ac47++
    emit 0x7d620f75: address(arg1), address(create2.new_address)
    return address(create2.new_address)
}



}
