contract main {




// =====================  Runtime code  =====================


const name = 'Auth-v1'


function _fallback() payable {
    revert
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    call this.address.enable(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 64, 128, 27, 'LogAddAuth(address,address)' << 40, 64, msg.sender, arg1
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9926955e0dd681dc303370c52f4ad0a4dd061687)
    staticcall 0x9926955e0dd681dc303370c52f4ad0a4dd061687.accountID(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    require ext_code.size(0x9926955e0dd681dc303370c52f4ad0a4dd061687)
    staticcall 0x9926955e0dd681dc303370c52f4ad0a4dd061687.0x8028a9fd with:
            gas gas_remaining wei
           args uint64(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((2 * ceil32(return_data.size)) + 192 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    if ext_call.return_data[88 len 8] <= 1:
        revert with 0, 'Removing-all-authorities'
    require ext_code.size(this.address)
    call this.address.disable(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 64, 128, 30, 65536 * 'LogRemoveAuth(address,address)', 64, msg.sender, arg1
}



}
