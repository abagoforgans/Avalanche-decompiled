contract main {




// =====================  Runtime code  =====================


address stor3608;
uint256 stor3608;
address storFEB5;
uint256 storFEB5;

function _fallback() payable {
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function admin() {
    if msg.sender == address(storFEB5):
        return address(storFEB5)
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function implementation() {
    if msg.sender == address(storFEB5):
        return address(stor3608)
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set a proxy implementation to a non-contract address'
    uint256(stor3608) = arg1
    emit Upgraded(arg1);
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot change the admin of a proxy to the zero address'
    emit AdminChanged(address(storFEB5), arg1);
    uint256(storFEB5) = arg1
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set a proxy implementation to a non-contract address'
    uint256(stor3608) = arg1
    emit Upgraded(arg1);
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    require delegate.return_code
}



}
