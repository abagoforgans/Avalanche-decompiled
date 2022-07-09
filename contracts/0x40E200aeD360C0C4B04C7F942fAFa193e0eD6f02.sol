contract main {




// =====================  Runtime code  =====================


address stor0;
address TOKENAddress;
address ADMINAddress;
mapping of uint256 sub_67da263d;
mapping of uint256 price;

function price(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return price[stor1][arg1]
}

function ADMIN() {
    return ADMINAddress
}

function sub_67da263d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_67da263d[arg1]
}

function TOKEN() {
    return TOKENAddress
}

function _fallback() payable {
    revert
}

function setRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ADMINAddress != msg.sender:
        revert with 0, 'caller is not the admin'
    stor0 = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ADMINAddress != msg.sender:
        revert with 0, 'caller is not the admin'
    TOKENAddress = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ADMINAddress != msg.sender:
        revert with 0, 'caller is not the admin'
    ADMINAddress = arg1
}

function sub_a36a0783(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ADMINAddress != msg.sender:
        revert with 0, 'caller is not the admin'
    sub_67da263d[arg1] = arg2
}

function setPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ADMINAddress != msg.sender:
        revert with 0, 'caller is not the admin'
    price[stor1][arg1] = arg2
}

function sub_5d0a5365(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    if sub_67da263d[arg2] <= 0:
        revert with 0, 'No price defined'
    if sub_67da263d[arg2] != msg.value:
        revert with 0, 'Incorrect amount'
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd8571a0a: Array(len=arg1.length, data=arg1[all]), arg2, msg.sender
}

function sub_98e2de77(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    if price[stor1][arg2] <= 0:
        revert with 0, 'No price defined'
    staticcall TOKENAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < price[stor1][arg2]:
        revert with 0, 'INSUFFICIENT_ALLOWANCE'
    call TOKENAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor0, price[stor1][arg2]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FROM_FAILED'
    emit 0xd8571a0a: Array(len=arg1.length, data=arg1[all]), arg2, msg.sender
}



}
