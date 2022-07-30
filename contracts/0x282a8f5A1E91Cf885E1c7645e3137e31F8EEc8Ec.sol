contract main {




// =====================  Runtime code  =====================


#
#  - sub_8dcd07db(?)
#  - sub_b2c09095(?)
#  - sub_cf2160da(?)
#
address owner;
address stor1;
mapping of struct stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_82080dc0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor1 = address(arg1)
}

function sub_8bb568e3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require calldata.size - 36 >= 64
    stor2[address(arg1)].field_0 = arg2
    stor2[address(arg1)].field_256 = arg3
}

function withdrawBNB(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}



}
