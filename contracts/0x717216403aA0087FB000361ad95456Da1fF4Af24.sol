contract main {




// =====================  Runtime code  =====================


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
mapping of address sub_d7409659;

function governor() payable {
    return address(governorAddress)
}

function sub_d7409659(?) payable {
    require calldata.size - 4 >= 32
    return sub_d7409659[arg1]
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function getETHPx(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_d7409659[address(arg1)])
    staticcall sub_d7409659[address(arg1)].0xab9aadfe with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'price oracle failure'
    return ext_call.return_data[0]
}

function sub_573f775a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'inconsistent length'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 66
        sub_d7409659[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 36).length
        mem[96] = address(cd[((32 * idx) + cd[36] + 36)])
        emit SetRoute(address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
}



}
