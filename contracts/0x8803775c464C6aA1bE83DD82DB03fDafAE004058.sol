contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
array of address data;

function Data(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < data.length
    return data[arg1]
}

function harvest() payable {
  stop
}

function _fallback() payable {
    revert
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'Not a Admin'
    data.length++
    data[data.length] = arg1
}

function sub_063215ba(?) payable {
    idx = 0
    while idx < data.length:
        mem[0] = 3
        mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(data[idx])
        call data[idx].0x4641257d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
