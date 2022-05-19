contract main {




// =====================  Runtime code  =====================


mapping of struct stor273;
mapping of uint256 stor2730;
uint256 stor9360;
address storF7CE;
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
    require ext_code.size(storF7CE)
    staticcall storF7CE.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storF7CE)
        staticcall storF7CE.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xbc6d73672e73656e646572206973206e6f742061646d696e50726976696c65646765,
                        mem[198 len 30]
    stor273[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720].field_0 = arg1
    storAAA[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720] = block.timestamp + storFEC6
    emit TimelockUpdateScheduled(arg1, block.timestamp + storFEC6);
}

function proxyUpgradeImplementation() {
    require ext_code.size(storF7CE)
    staticcall storF7CE.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storF7CE)
        staticcall storF7CE.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xbc6d73672e73656e646572206973206e6f742061646d696e50726976696c65646765,
                        mem[198 len 30]
    if block.timestamp < storAAA[0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b]:
        revert with 0, 'Timelock has not passed yet'
    stor9360 = stor273[0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b].field_0
    emit Upgraded(stor273[0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b].field_0);
}

function proxyUpgradeTimelock() {
    require ext_code.size(storF7CE)
    staticcall storF7CE.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storF7CE)
        staticcall storF7CE.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xbc6d73672e73656e646572206973206e6f742061646d696e50726976696c65646765,
                        mem[198 len 30]
    if block.timestamp < storAAA[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720]:
        revert with 0, 'Timelock has not passed yet'
    storFEC6 = stor273[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720].field_0
    emit TimelockUpdated(stor273[0xfec6fb23975d74c7743b6d6d0c1ad9dc3911bc8a4a970ec5723a30579b454720].field_0);
}

function proxyScheduleImplementationUpdate(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(storF7CE)
    staticcall storF7CE.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storF7CE)
        staticcall storF7CE.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xbc6d73672e73656e646572206973206e6f742061646d696e50726976696c65646765,
                        mem[198 len 30]
    stor273[0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b].field_0 = arg1
    stor273[0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b].field_160 = 0
    storAAA[0x9360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382b] = block.timestamp + storFEC6
    emit UpgradeScheduled((block.timestamp + storFEC6), arg1);
}



}
