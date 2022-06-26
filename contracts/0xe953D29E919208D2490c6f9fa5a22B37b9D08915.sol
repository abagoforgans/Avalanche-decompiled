contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 fee;

function owner() {
    return owner
}

function ChargeFee() {
    return bool(uint8(stor0.field_160))
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function sub_f914d1a6(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = address(arg1)
    Mask(96, 0, stor0.field_160) = Mask(96, 0, bool(arg2))
    fee = arg3
}

function sub_6883f2bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.value <= fee:
        revert with 0, 'payment not enough'
    if msg.value < fee:
        revert with 0, 17
    if not uint8(stor0.field_160):
        call address(arg1) with:
           value msg.value - fee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Failed to send Coin'
    else:
        call owner with:
           value fee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Failed to send Coin'
        call address(arg1) with:
           value msg.value - fee wei
             gas 2300 * is_zero(value) wei
}



}
