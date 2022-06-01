contract main {




// =====================  Runtime code  =====================


uint128 stor3608; offset 160
address stor3608;
uint256 stor3608;
uint256 stor96DE;
uint256 storA0EA;
uint128 storB182; offset 160
address storB182;
uint256 storB182;
uint128 storB531; offset 160
address storB531;
uint256 storBC9D;

function _fallback() payable {
    require address(storB531.field_0) != msg.sender
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function removeTrust() {
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    storA0EA = 1
    emit TrustRemoved()
}

function cancelUpgrade() {
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    uint256(storB182.field_0) = uint256(stor3608.field_0)
    emit NextLogicCanceled()
}

function sub_9a6fec23(?) {
    if msg.sender == address(storB531.field_0):
        return address(stor3608.field_0), address(storB182.field_0), storBC9D, stor96DE, storA0EA, address(storB531.field_0)
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgrade() {
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if block.number < stor96DE:
        revert with 0, 'too soon'
    uint256(stor3608.field_0) = uint256(storB182.field_0)
    emit Upgraded(address(storB182.field_0));
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    emit AdminChanged(address(storB531.field_0), arg1);
    address(storB531.field_0) = arg1
    Mask(96, 0, storB531.field_160) = 0
}

function prolongLock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if arg1 <= storBC9D:
        revert with 0, 'get maxxed'
    storBC9D = arg1
    emit ProposingUpgradesRestrictedUntil(arg1, arg1 + (360 * 24 * 3600));
}

function proposeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not storA0EA:
        stor96DE = block.number + (360 * 24 * 3600)
        address(stor3608.field_0) = arg1
        Mask(96, 0, stor3608.field_160) = 0
        emit Upgraded(arg1);
    else:
        if block.number < storBC9D:
            revert with 0, 'too soon'
        stor96DE = block.number + (360 * 24 * 3600)
        address(storB182.field_0) = arg1
        Mask(96, 0, storB182.field_160) = 0
        emit NextLogicDefined((block.number + (360 * 24 * 3600)), arg1);
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not delegate.return_code:
        revert with 0, 'failed to call'
}



}
