contract main {




// =====================  Runtime code  =====================


address bearAddress;
address devaddress;
mapping of uint256 user_info;

function user_info(address arg1) {
    require calldata.size - 4 >= 32
    return user_info[arg1]
}

function bear() {
    return bearAddress
}

function devaddress() {
    return devaddress
}

function _fallback() payable {
    revert
}

function buyBear() payable {
    require 10 > user_info[msg.sender]
    require ext_code.size(bearAddress)
    staticcall bearAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1000:
        require msg.value == 10^17
    else:
        if ext_call.return_data[0] >= 2500:
            require msg.value == 3 * 10^17
        else:
            require msg.value == 2 * 10^17
    call devaddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    user_info[msg.sender]++
    require ext_code.size(bearAddress)
    staticcall bearAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bearAddress)
    call bearAddress.0xc960dad5 with:
         gas gas_remaining wei
        args msg.sender, (1000 * sha3(block.difficulty, block.timestamp, ext_call.return_data[0]) / 1000) + (sha3(block.difficulty, block.timestamp, ext_call.return_data[0]) / 1000 % 400)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
