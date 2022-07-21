contract main {




// =====================  Runtime code  =====================


const getCurrentBalance = eth.balance(this.address)


uint256 addressesCount;
uint256 sub_18f47001;
uint256 sub_13a314ab;
uint256 sub_9fd813e3;
address owner;
address withdrawalAddress;
mapping of uint256 sub_95b116e0;

function sub_13a314ab(?) {
    return sub_13a314ab
}

function sub_18f47001(?) {
    return sub_18f47001
}

function getAddressesCount() {
    return addressesCount
}

function getOwner() {
    return owner
}

function sub_95b116e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_95b116e0[address(arg1)]
}

function sub_9fd813e3(?) {
    return sub_9fd813e3
}

function getWithdrawalAddress() {
    return withdrawalAddress
}

function _fallback() payable {
    revert
}

function sub_782adc3f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_18f47001 = arg1
}

function sub_be8e9be8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_13a314ab = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call withdrawalAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6f73d189(?) payable {
    if msg.value > -sub_95b116e0[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    if msg.value + sub_95b116e0[address(msg.sender)] < sub_18f47001:
        revert with 0, 'Payment above minimum allocation'
    if msg.value > -sub_95b116e0[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    if msg.value + sub_95b116e0[address(msg.sender)] > sub_13a314ab:
        revert with 0, 'Payment above maximum allocation'
    if sub_95b116e0[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    sub_95b116e0[address(msg.sender)] += msg.value
    if sub_9fd813e3 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_9fd813e3 += msg.value
    if addressesCount == -1:
        revert with 'NH{q', 17
    addressesCount++
}



}
