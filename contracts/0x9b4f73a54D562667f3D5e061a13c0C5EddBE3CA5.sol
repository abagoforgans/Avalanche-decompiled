contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function setPendingOwner(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    stor1 = arg1
}

function sub_b8ca8dd8(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function acceptOwner() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[3554 len 37], mem[201 len 27]
    if stor0 == stor1:
        revert with 0, 'must acceptOwner != owner'
    stor0 = stor1
    stor1 = 0
    emit NewOwner(stor1);
}

function sub_9a886530(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    require ext_code.size(arg1)
    call arg1.withdrawNative(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4a4f42df(?) {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    require ext_code.size(arg1)
    call arg1.withdrawToken(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg4), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createUserAddress(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 'Create2: insufficient balance'
    create2 contract with 0 wei
                    salt: arg1
                    code: code.data[3316 len 224], code.data[3540 len 14], stor2
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    emit 0x908facc4: address(create2.new_address)
    return address(create2.new_address)
}

function sub_890d9ca0(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    require ext_code.size(this.address)
    call this.address.0x7aeff9cb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdrawNative(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b3a283f1(?) {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    require ext_code.size(this.address)
    call this.address.0x7aeff9cb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdrawToken(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg4), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    if arg2:
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
        mem[352 len 4] = uint32(arg2)
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            emit 0x79d3fc7d: bool(ext_call.success)
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                emit 0x79d3fc7d: bool(ext_call.success)
            else:
                if not return_data.size:
                    emit 0x79d3fc7d: not bool(return_data.size)
                else:
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 261] = bool(mem[292])
                    emit 0x79d3fc7d: mem[ceil32(return_data.size) + 261]
}



}
