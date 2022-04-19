contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address pendingGovernanceAddress;

function governance() payable {
    return governanceAddress
}

function pendingGovernance() payable {
    return pendingGovernanceAddress
}

function _fallback() payable {
    revert
}

function claimGovernance() payable {
    if pendingGovernanceAddress != msg.sender:
        revert with 0, 'WRONG_GOVERNANCE'
    emit GovernanceClaimed(pendingGovernanceAddress, governanceAddress);
    governanceAddress = pendingGovernanceAddress
    pendingGovernanceAddress = 0
}

function transferGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    pendingGovernanceAddress = arg1
    emit TransferGovernancePending(arg1);
}



}
