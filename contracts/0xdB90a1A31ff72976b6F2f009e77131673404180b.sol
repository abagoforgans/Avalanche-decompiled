contract main {




// =====================  Runtime code  =====================


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
address sub_edcc99eeAddress;
mapping of address sub_a01b5271;

function governor() payable {
    return address(governorAddress)
}

function sub_a01b5271(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a01b5271[arg1]
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function sub_edcc99ee(?) payable {
    return sub_edcc99eeAddress
}

function _fallback() payable {
    revert
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function sub_7f205d0a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_edcc99eeAddress)
    staticcall sub_edcc99eeAddress.0xd7409659 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_a01b5271[ext_call.return_data[12 len 20]])
    staticcall sub_a01b5271[ext_call.return_data[12 len 20]].0x7f205d0a with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if 0 == ext_call.return_data[0]:
        revert with 0, 'price oracle failure'
    return ext_call.return_data[0], bool(ext_call.return_data[32])
}

function sub_4d153463(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'inconsistent length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 67
        sub_a01b5271[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
