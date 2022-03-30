contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function setActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function fee() {
    if stor1 < 100:
        return 10^18
    if stor1 < 300:
        return 2 * 10^18
    if stor1 < 600:
        return 3 * 10^18
    if stor1 >= 1000:
        return 5 * 10^18
    return 4 * 10^18
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor0.field_0)
    require arg1 <= eth.balance(this.address)
    call address(stor0.field_0) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function createAccount() payable {
    if stor1 < 100:
        require msg.value == 10^18
    else:
        if stor1 < 300:
            require msg.value == 2 * 10^18
        else:
            if stor1 < 600:
                require msg.value == 3 * 10^18
            else:
                if stor1 >= 1000:
                    require msg.value == 5 * 10^18
                else:
                    require msg.value == 4 * 10^18
    require bool(uint8(stor0.field_160)) == 1
    require ext_code.size(0x95d294bc407bed9ad34f040405d6cdbe5f952dd4)
    staticcall 0x95d294bc407bed9ad34f040405d6cdbe5f952dd4.0x5a2b6238 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require not ext_call.return_data[12 len 20]
    require ext_code.size(0x95d294bc407bed9ad34f040405d6cdbe5f952dd4)
    call 0x95d294bc407bed9ad34f040405d6cdbe5f952dd4.0x9859387b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1 > -2:
        revert with 'NH{q', 17
    stor1++
}



}
