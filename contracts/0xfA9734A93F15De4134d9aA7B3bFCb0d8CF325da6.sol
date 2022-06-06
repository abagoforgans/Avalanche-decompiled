contract main {




// =====================  Runtime code  =====================


address tokenAddress;
mapping of uint8 stor1;
address stor2;

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Admin: caller is not a admin!'
    if arg1 == msg.sender:
        revert with 0, 'Admin: You are already an admin!'
    stor1[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Admin: caller is not a admin!'
    if arg1 == stor2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: You cannot remove contract owner as admin.'
    stor1[address(arg1)] = 0
}

function withdrawExcess() payable {
    if stor2 != msg.sender:
        revert with 0, 'Owner: caller is not a owner!'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8e139940(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Admin: caller is not a admin!'
    if ('cd', 4).length and cd[36] > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if ('cd', 4).length >= 30:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERROR: Too many recipients, gas will be hella spensive or could run out'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ('cd', 4).length * cd[36]:
        revert with 0, 'ERROR: Not enough tokens to distribute'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == bool(mem[_18])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
