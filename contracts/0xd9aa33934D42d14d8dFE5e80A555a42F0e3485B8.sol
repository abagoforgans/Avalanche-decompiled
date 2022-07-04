contract main {




// =====================  Runtime code  =====================


const INVEST_MIN_AMOUNT = 10^17


uint256 sub_ceeae78e;
address baseAddress;
address sub_ea796f7aAddress;

function base() {
    return baseAddress
}

function sub_ceeae78e(?) {
    return sub_ceeae78e
}

function sub_ea796f7a(?) {
    return sub_ea796f7aAddress
}

function _fallback() payable {
    revert
}

function setInvest(address arg1) {
    require calldata.size - 4 >= 32
    if baseAddress != msg.sender:
        revert with 0, 'not base'
    sub_ea796f7aAddress = arg1
}

function liquidity() {
    if baseAddress != msg.sender:
        revert with 0, 'no commissionWallet'
    if not eth.balance(this.address):
        revert with 0, 'no liquidity'
    call baseAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.value >= 10^17
    if arg2 >= 3:
        revert with 0, 'Invalid plan'
    require ext_code.size(sub_ea796f7aAddress)
    call sub_ea796f7aAddress.0x773dda4d with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), arg2 << 248, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ceeae78e++
}



}
