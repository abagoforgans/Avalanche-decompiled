contract main {




// =====================  Runtime code  =====================


mapping of struct stor273;
mapping of uint256 stor2730;
uint256 stor9360;
address storBCA7;
uint256 storBCA7;
uint256 storFEC6;

function _fallback() payable {
    delegate stor9360 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function proxyScheduleTimelockUpdate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(storBCA7) != msg.sender:
        delegate stor9360 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    stor273[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720].field_0 = arg1
    storAAA[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720] = block.timestamp + storFEC6
    emit TimelockUpdateScheduled(arg1, block.timestamp + storFEC6);
}

function proxyUpgradeImplementation() {
    if address(storBCA7) != msg.sender:
        delegate stor9360 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if block.timestamp < storAAA[0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b]:
        revert with 0, 'Timelock has not passed yet'
    stor9360 = stor273[0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b].field_0
    emit Upgraded(stor273[0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b].field_0);
}

function proxyUpgradeTimelock() {
    if address(storBCA7) != msg.sender:
        delegate stor9360 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if block.timestamp < storAAA[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720]:
        revert with 0, 'Timelock has not passed yet'
    storFEC6 = stor273[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720].field_0
    emit TimelockUpdated(stor273[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720].field_0);
}

function proxyUpgradeOwner() {
    if address(storBCA7) != msg.sender:
        delegate stor9360 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if block.timestamp < storAAA[0xbca7b53796fd2d99cb1f5ae019b54f9e024446c3d12b483f733ccc62ed04eb12]:
        revert with 0, 'Timelock has not passed yet'
    uint256(storBCA7) = stor273[0xbca7b53796fd2d99cb1f5ae019b54f9e024446c3d12b483f733ccc62ed04eb12].field_0
    emit OwnershipTransfered(stor273[0xbca7b53796fd2d99cb1f5ae019b54f9e024446c3d12b483f733ccc62ed04eb12].field_0);
}

function proxyScheduleAddressUpdate(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if address(storBCA7) != msg.sender:
        delegate stor9360 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    stor273[arg1].field_0 = arg2
    stor273[arg1].field_160 = 0
    storAAA[arg1] = block.timestamp + storFEC6
    if arg1 == 0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b:
        emit UpgradeScheduled((block.timestamp + storFEC6), arg2);
    else:
        if arg1 == 0xbca7b53796fd2d99cb1f5ae019b54f9e024446c3d12b483f733ccc62ed04eb12:
            emit 0xd9a3d0be: (block.timestamp + storFEC6), arg2
}



}
