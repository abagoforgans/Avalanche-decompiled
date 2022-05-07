contract main {




// =====================  Runtime code  =====================


mapping of uint256 owners;
address stor1;
address stor2;

function owners(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return owners[arg1]
}

function _fallback() payable {
    revert
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owners[address(msg.sender)] != 1:
        revert with 0, 'Caller is not owner'
    owners[address(arg1)] = 1
}

function approveToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owners[address(msg.sender)] != 1:
        revert with 0, 'Caller is not owner'
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owners[address(msg.sender)] != 1:
        revert with 0, 'Caller is not owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swapPreview(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owners[address(msg.sender)] != 1:
        revert with 0, 'Caller is not owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor1 with:
         gas gas_remaining wei
        args arg2[all]
    if bool(ext_call.success) != 1:
        revert with 0, 'a failed'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0]
}

function swap(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owners[address(msg.sender)] != 1:
        revert with 0, 'Caller is not owner'
    if owners[address(msg.sender)] != 1:
        revert with 0, 'Caller is not owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor1 with:
         gas gas_remaining wei
        args arg2[all]
    if bool(ext_call.success) != 1:
        revert with 0, 'a failed'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'uh oh'
}



}
