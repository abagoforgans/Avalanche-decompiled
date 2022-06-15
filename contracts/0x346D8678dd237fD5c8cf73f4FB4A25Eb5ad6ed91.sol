contract main {




// =====================  Runtime code  =====================


uint256 value;
uint256 sub_d12df045;
address sellerAddress;
address buyerAddress;
address adminAddress;
address sub_d5ffc2c7Address;
uint256 sub_43ee9522;
uint8 state;

function seller() {
    return sellerAddress
}

function value() {
    return value
}

function sub_43ee9522(?) {
    return sub_43ee9522
}

function buyer() {
    return buyerAddress
}

function state() {
    if state >= 4:
        revert with 'NH{q', 33
    return state
}

function sub_d12df045(?) {
    return sub_d12df045
}

function sub_d5ffc2c7(?) {
    return sub_d5ffc2c7Address
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function confirmOrder() {
    if adminAddress != msg.sender:
        revert with 0, 'Only admin can call this.'
    if state > 3:
        revert with 'NH{q', 33
    if state:
        revert with 0, 'Invalid state.'
    emit 0xdff48734 
    state = 1
}

function sub_4d24e902(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if state > 3:
        revert with 'NH{q', 33
    if state != 1:
        revert with 0, 'Invalid state.'
    require msg.value == value
    emit PurchaseConfirmed()
    sub_43ee9522 = arg1
    buyerAddress = msg.sender
    state = 2
}

function sub_62d5925e(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if state > 3:
        revert with 'NH{q', 33
    if state:
        revert with 0, 'Invalid state.'
    emit 0xdc6366ea 
    sellerAddress = msg.sender
    sub_d12df045 = arg1
    value = arg2
    adminAddress = address(arg3)
}

function abort() {
    if sellerAddress != msg.sender:
        revert with 0, 'Only seller can call this.'
    if state > 3:
        revert with 'NH{q', 33
    if state:
        revert with 0, 'Invalid state.'
    emit Aborted()
    state = 3
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1be6a34e(?) {
    if sub_d5ffc2c7Address != msg.sender:
        revert with 0, 'Only daoagent can call this.'
    if state > 3:
        revert with 'NH{q', 33
    if state != 2:
        revert with 0, 'Invalid state.'
    emit ItemReceived()
    state = 3
    call sub_d5ffc2c7Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3c0935e1(?) {
    if adminAddress != msg.sender:
        revert with 0, 'Only admin can call this.'
    if state > 3:
        revert with 'NH{q', 33
    if state != 2:
        revert with 0, 'Invalid state.'
    emit ItemReceived()
    state = 3
    if value > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 'NH{q', 17
    call sellerAddress with:
       value 997 * value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if value > -1:
        revert with 'NH{q', 17
    call adminAddress with:
       value value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function confirmReceived() {
    if buyerAddress != msg.sender:
        revert with 0, 'Only buyer can call this.'
    if state > 3:
        revert with 'NH{q', 33
    if state != 2:
        revert with 0, 'Invalid state.'
    emit ItemReceived()
    state = 3
    if value > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 'NH{q', 17
    call sellerAddress with:
       value 997 * value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if value > -1:
        revert with 'NH{q', 17
    call adminAddress with:
       value value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
