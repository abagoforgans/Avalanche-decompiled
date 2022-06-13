contract main {




// =====================  Runtime code  =====================


uint256 value;
address sellerAddress;
address buyerAddress;
uint8 state; offset 160
address adminAddress;

function seller() {
    return sellerAddress
}

function value() {
    return value
}

function buyer() {
    return buyerAddress
}

function state() {
    if state >= 3:
        revert with 'NH{q', 33
    return state
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function confirmPurchase() payable {
    if state > 2:
        revert with 'NH{q', 33
    if state:
        revert with 0, 'Invalid state.'
    if value > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    require msg.value == 2 * value
    emit PurchaseConfirmed()
    buyerAddress = msg.sender
    state = 1
}

function abort() {
    if sellerAddress != msg.sender:
        revert with 0, 'Only seller can call this.'
    if state > 2:
        revert with 'NH{q', 33
    if state:
        revert with 0, 'Invalid state.'
    emit Aborted()
    state = 2
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function confirmReceived() {
    if buyerAddress != msg.sender:
        revert with 0, 'Only buyer can call this.'
    if adminAddress != msg.sender:
        revert with 0, 'Only admin can call this.'
    if state > 2:
        revert with 'NH{q', 33
    if state != 1:
        revert with 0, 'Invalid state.'
    emit ItemReceived()
    state = 2
    call buyerAddress with:
       value value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    call adminAddress with:
       value value wei
         gas 2300 * is_zero(value) wei
}



}
