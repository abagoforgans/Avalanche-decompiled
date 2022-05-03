contract main {




// =====================  Runtime code  =====================


#
#  - sub_0773b509(?)
#  - sub_1a8d1ab2(?)
#  - sub_96919a5a(?)
#  - sub_96b3ab6c(?)
#  - sub_ca81fc0a(?)
#  - _fallback()
#
mapping of uint8 stor1;

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    stor1[address(arg1)] = 1
}

function sub_9886ccd5(?) {
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5b8bfaea(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    require ext_code.size(address(arg1))
    call address(arg1).burn(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_3412b979(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function payout(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
}

function sub_6d9cec22(?) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(160, 96, arg1)
    require arg2 == Mask(160, 96, arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    if uint64(arg2) > -msg.sender + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if address(msg.sender + uint64(arg2)) < 3735932941:
        revert with 'NH{q', 17
    require ext_code.size(address(address(arg1) >> 96 xor address(msg.sender + uint64(arg2)) - 3735932941))
    call address(address(arg1) >> 96 xor address(msg.sender + uint64(arg2)) - 3735932941).skim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0363e1a8(?) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(160, 96, arg1)
    require arg2 == Mask(160, 96, arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    if uint64(arg2) > -msg.sender + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if address(msg.sender + uint64(arg2)) < 275969102669431:
        revert with 'NH{q', 17
    require ext_code.size(address(address(arg1) >> 96 xor address(msg.sender + uint64(arg2)) - 275969102669431))
    call address(address(arg1) >> 96 xor address(msg.sender + uint64(arg2)) - 275969102669431).skim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
