contract main {




// =====================  Runtime code  =====================


address avacoFinanceDevAddress;
uint256 unlockTimestamp;

function unlockTimestamp() payable {
    return unlockTimestamp
}

function AvacoFinanceDev() payable {
    return avacoFinanceDevAddress
}

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if avacoFinanceDevAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdraw: message sender is not Dev'
    if block.timestamp <= unlockTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdraw: the token is still locked'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
