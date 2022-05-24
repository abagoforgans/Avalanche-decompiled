contract main {




// =====================  Runtime code  =====================


address owner;
address sub_85d9704bAddress;
address stor3;
address dappAddress;
address stor5;
address sub_bea293afAddress;
address wavaxAddress;
address stor9;
uint256 nodePrice;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function wavax() {
    return wavaxAddress
}

function sub_85d9704b(?) {
    return sub_85d9704bAddress
}

function owner() {
    return owner
}

function getNodePrice() {
    return nodePrice
}

function dapp() {
    return dappAddress
}

function sub_bea293af(?) {
    return sub_bea293afAddress
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor9 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function omg() {
    require ext_code.size(sub_85d9704bAddress)
    staticcall sub_85d9704bAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if eth.balance(stor5) and nodePrice > -1 / eth.balance(stor5):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (eth.balance(stor5) * nodePrice / ext_call.return_data[0])
}

function withdrawTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_85d9704bAddress)
    staticcall sub_85d9704bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_85d9704bAddress)
    call sub_85d9704bAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c9e984ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't buy more than 10 nodes in a single tx.'
    if nodePrice and arg1 > -1 / nodePrice:
        revert with 'NH{q', 17
    require ext_code.size(sub_85d9704bAddress)
    staticcall sub_85d9704bAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if eth.balance(stor5) and nodePrice * arg1 > -1 / eth.balance(stor5):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if msg.value < eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0]:
        revert with 0, 'Wrong value.'
    if msg.value > eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0]:
        if msg.value < eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0]) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
    if eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0] and stor13 > -1 / eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    call stor9 with:
       value eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0] * stor13 / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
    if eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0] and stor11 > -1 / eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(sub_bea293afAddress)
    call sub_bea293afAddress.0x7b8dd3de with:
       value eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0] * stor11 / 100 wei
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0] and stor12 > -1 / eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(sub_bea293afAddress)
    call sub_bea293afAddress.0x7b8dd3de with:
       value eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0] * stor12 / 200 wei
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_85d9704bAddress)
    call sub_85d9704bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, nodePrice * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0] and stor12 > -1 / eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(sub_bea293afAddress)
    call sub_bea293afAddress.0xd0e30db0 with:
       value eth.balance(stor5) * nodePrice * arg1 / ext_call.return_data[0] * stor12 / 200 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(dappAddress)
    call dappAddress.addNode(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
