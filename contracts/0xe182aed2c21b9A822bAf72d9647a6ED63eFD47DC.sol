contract main {




// =====================  Runtime code  =====================


address stor1973;
uint256 stor1973;
address adminAddress;
uint256 storBCFE;
address implementationAddress;
uint256 storFE36;

function governor() {
    return address(adminAddress)
}

function implementation() {
    return address(implementationAddress)
}

function admin() {
    return address(adminAddress)
}

function isGovernor() {
    return (msg.sender == address(adminAddress))
}

function transferGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    uint256(stor1973) = arg1
    emit PendingGovernorshipTransfer(address(adminAddress), arg1);
}

function _fallback() payable {
    delegate uint256(storFE36) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function claimGovernance() {
    if address(stor1973) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the pending Governor can complete the claim'
    if not msg.sender:
        revert with 0, 'New Governor is address(0)'
    emit GovernorshipTransferred(address(adminAddress), msg.sender);
    uint256(storBCFE) = msg.sender
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set a proxy implementation to a non-contract address'
    uint256(storFE36) = arg1
    emit Upgraded(arg1);
}

function initialize(address arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if address(adminAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    require not address(implementationAddress)
    revert with 0, 1
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if address(adminAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set a proxy implementation to a non-contract address'
    uint256(storFE36) = arg1
    emit Upgraded(arg1);
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    require delegate.return_code
}



}
