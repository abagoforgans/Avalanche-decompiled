contract main {




// =====================  Runtime code  =====================


address policyAddress;
mapping of address bondForController;

function policy() payable {
    return policyAddress
}

function bondForController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bondForController[arg1]
}

function _fallback() payable {
    revert
}

function transferManagment(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    policyAddress = arg1
}

function removeSubsidyController(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bondForController[address(arg1)] = 0
}

function addSubsidyController(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg2
    bondForController[address(arg2)] = arg1
}

function getSubsidyInfo() payable {
    if not bondForController[msg.sender]:
        revert with 0, 'Address not mapped'
    require ext_code.size(bondForController[msg.sender])
    call bondForController[msg.sender].paySubsidy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
