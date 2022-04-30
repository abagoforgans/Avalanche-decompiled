contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address managerAddress;

function manager() payable {
    return managerAddress
}

function governance() payable {
    return governanceAddress
}

function _fallback() payable {
    revert
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'Registry: Only Governance'
    if not ext_code.size(arg1):
        revert with 0, 'Registry: Invalid Manager'
    emit ManagerUpdated(managerAddress, arg1);
    managerAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'Registry: Only Governance'
    if not ext_code.size(arg1):
        revert with 0, 'Registry: Invalid Governance'
    emit GovernanceUpdated(governanceAddress, arg1);
    governanceAddress = arg1
}



}
