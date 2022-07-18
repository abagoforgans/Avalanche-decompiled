contract main {




// =====================  Runtime code  =====================


#
#  - getPosition(address arg1)
#  - sub_24a046fb(?)
#  - approveToken(address arg1, address arg2, uint256 arg3)
#  - transferTokenFrom(address arg1, address arg2, address arg3, uint256 arg4)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function destroy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    selfdestruct(arg1)
}

function updateOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor2 = arg1
}

function sub_a71eef1b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor1 = address(arg1)
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    owner = arg1
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrap(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    require ext_code.size(arg1)
    call arg1.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrap(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    require ext_code.size(arg1)
    call arg1.0xd0e30db0 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_26b7256f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    require ext_code.size(address(arg1))
    call address(arg1).0x2e1a7d4d with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(arg2) with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
}



}
