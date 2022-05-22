contract main {




// =====================  Runtime code  =====================


const cakeAddress = 0x4eb49a2f9a79053866fae806fac95a3ef5b92c05

const sub_804f7bbb(?) = 0x1ba497712e20f8d629f16ca9e7e070a6f4779754

const sub_e3053d3c(?) = 0xa3e4200ca1ac92331d529327e82d89c149ccd81c


address CAKEAddress;
address sub_13b8beb7Address;
address stor3;

function sub_13b8beb7(?) payable {
    return sub_13b8beb7Address
}

function CAKE() payable {
    return CAKEAddress
}

function _fallback() payable {
    revert
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0a5d48a9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_13b8beb7Address)
    call sub_13b8beb7Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xa3e4200ca1ac92331d529327e82d89c149ccd81c, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(CAKEAddress)
    call CAKEAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xa3e4200ca1ac92331d529327e82d89c149ccd81c, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_13b8beb7Address)
    call sub_13b8beb7Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xa3e4200ca1ac92331d529327e82d89c149ccd81c, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(CAKEAddress)
    call CAKEAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xa3e4200ca1ac92331d529327e82d89c149ccd81c, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_47f4d98d(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    call stor3.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(CAKEAddress)
    call CAKEAddress.0x23b872dd with:
         gas gas_remaining wei
        args 0x4eb49a2f9a79053866fae806fac95a3ef5b92c05, 0xa3e4200ca1ac92331d529327e82d89c149ccd81c, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_13b8beb7Address)
    call sub_13b8beb7Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xa3e4200ca1ac92331d529327e82d89c149ccd81c, 264956316961
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_13b8beb7Address)
    call sub_13b8beb7Address.0x23b872dd with:
         gas gas_remaining wei
        args this.address, 0xa3e4200ca1ac92331d529327e82d89c149ccd81c, 264956316961
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(CAKEAddress)
    call CAKEAddress.0x23b872dd with:
         gas gas_remaining wei
        args 0xa3e4200ca1ac92331d529327e82d89c149ccd81c, this.address, 264956316961
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(CAKEAddress)
    call CAKEAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, 264956316961
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(CAKEAddress)
    call CAKEAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, 0x84d2fe6adace63407f4b6bd91ab9f782ba3cb420, 264956316961
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
