contract main {




// =====================  Runtime code  =====================


address stormAddress;
address wavaxAddress;
array of address sub_e87796b8;

function wavax() {
    return wavaxAddress
}

function storm() {
    return stormAddress
}

function sub_e87796b8(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e87796b8.length
    return sub_e87796b8[arg1]
}

function harvest() {
  stop
}

function _fallback() payable {
    revert
}

function add(address arg1) {
    require calldata.size - 4 >= 32
    sub_e87796b8.length++
    sub_e87796b8[sub_e87796b8.length] = arg1
}

function sub_063215ba(?) payable {
    idx = 0
    while idx < sub_e87796b8.length:
        mem[0] = 2
        mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_e87796b8[idx])
        call sub_e87796b8[idx].0x4641257d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(stormAddress)
    staticcall stormAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stormAddress)
    staticcall stormAddress.transfer(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wavaxAddress)
    staticcall wavaxAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wavaxAddress)
    staticcall wavaxAddress.transfer(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
