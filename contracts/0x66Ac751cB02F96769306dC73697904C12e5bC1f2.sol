contract main {




// =====================  Runtime code  =====================


address implementationAddress;
uint256 stor3608;

function implementation() {
    return address(implementationAddress)
}

function _fallback() payable {
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgrade() {
    require ext_code.size(this.address)
    staticcall this.address.0x9d16acfd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'Upgrade not scheduled'
    if not ext_code.size(ext_call.return_data[32]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645570677261646561626c6550726f78793a206e657720696d706c656d656e746174696f6e206973206e6f74206120636f6e74726163,
                    mem[218 len 10]
    uint256(stor3608) = ext_call.return_data[32]
    emit Upgraded(ext_call.return_data[44 len 20]);
    delegate this.address with:
       funct ext_call.return_data[36 len 4]
         gas gas_remaining wei
        args 
    if not return_data.size:
        if not delegate.return_code:
            revert with 0, 32, 33, 0xfe4973737565207768656e2066696e616c697a696e672074686520757067726164, mem[233 len 31]
    else:
        if not delegate.return_code:
            revert with 0, 
                        32,
                        33,
                        0xfe4973737565207768656e2066696e616c697a696e672074686520757067726164,
                        mem[ceil32(return_data.size) + 234 len 31]
    ('bool', 'delegate.return_code')
}



}
