contract main {




// =====================  Runtime code  =====================


const sub_aacda54c(?) = eth.balance(msg.sender)


address owner;
uint256 sub_ffd0a603;

function getowner() {
    return owner
}

function sub_ffd0a603(?) {
    return sub_ffd0a603
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if sub_ffd0a603 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_ffd0a603 += msg.value
}

function ChangeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You are not !'
    owner = arg1
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'You are not !'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ffd0a603 < arg2:
        revert with 'NH{q', 17
    sub_ffd0a603 -= arg2
}

function sub_e4d4d453(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if msg.value and 2 > -1 / msg.value:
        revert with 'NH{q', 17
    if 2 * msg.value > sub_ffd0a603:
        if sub_ffd0a603 > -msg.value - 1:
            revert with 'NH{q', 17
        sub_ffd0a603 += msg.value
        return 0
    if arg2 != 1:
        if sub_ffd0a603 > -msg.value - 1:
            revert with 'NH{q', 17
        sub_ffd0a603 += msg.value
        return 0
    if msg.value and 2 > -1 / msg.value:
        revert with 'NH{q', 17
    call address(arg1) with:
       value 2 * msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ffd0a603 < msg.value:
        revert with 'NH{q', 17
    sub_ffd0a603 -= msg.value
    return 1
}



}
