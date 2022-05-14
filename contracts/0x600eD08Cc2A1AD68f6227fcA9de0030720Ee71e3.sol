contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
address sub_9e7ed409Address;
address sub_5d6af94fAddress;
uint256 sub_2e00c6a6;
uint256 sub_76fe9f90;
uint256 sub_bfff0b4b;
uint256 sub_9245a74f;
uint256 sub_ee3e0d8f;
uint256 sub_f4dd61a8;

function sub_2e00c6a6(?) {
    return sub_2e00c6a6
}

function sub_5d6af94f(?) {
    return sub_5d6af94fAddress
}

function sub_76fe9f90(?) {
    return sub_76fe9f90
}

function owner() {
    return owner
}

function sub_9245a74f(?) {
    return sub_9245a74f
}

function sub_9e7ed409(?) {
    return sub_9e7ed409Address
}

function geUnlockTime() {
    return geUnlockTime
}

function sub_bfff0b4b(?) {
    return sub_bfff0b4b
}

function sub_ee3e0d8f(?) {
    return sub_ee3e0d8f
}

function sub_f4dd61a8(?) {
    return sub_f4dd61a8
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    owner = stor1
}

function updateAddresses(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9e7ed409Address = arg1
    sub_5d6af94fAddress = arg2
}

function updatePrices(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e00c6a6 = arg1
    sub_76fe9f90 = arg3
    sub_9245a74f = arg2
    sub_bfff0b4b = arg4
}

function sub_3e607e8f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_d5716456(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if sub_5d6af94fAddress != msg.sender:
        revert with 0, 'Invalid caller'
    create contract with 0 wei
                    code: code.data[11537 len 5401], address(arg1), arg2, address(arg3)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_56d67fb7(?) payable {
    require calldata.size - 4 >= 288
    require arg2 == address(arg2)
    if 1 == arg1:
        if sub_2e00c6a6 != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'INVALID PAYMENT AMOUNT FOR SELECTED METHOD'
        require ext_code.size(sub_5d6af94fAddress)
        call sub_5d6af94fAddress.0xc7d71696 with:
             gas gas_remaining wei
            args 0, 0, msg.sender, arg3, arg4, arg5, arg6, arg7, arg8, arg9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_83c0211b(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    if arg1 != 1:
        return 0
    if sub_bfff0b4b != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'INVALID PAYMENT AMOUNT FOR SELECTED METHOD'
    require ext_code.size(sub_9e7ed409Address)
    call sub_9e7ed409Address.0x8db7e9b5 with:
         gas gas_remaining wei
        args 0, 0, arg3, arg4, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], ext_call.return_data[32]
}

function sub_fe793cb7(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    if arg1 != 1:
        return 0
    if sub_76fe9f90 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'INVALID PAYMENT AMOUNT FOR SELECTED METHOD'
    require ext_code.size(sub_9e7ed409Address)
    call sub_9e7ed409Address.0x8db7e9b5 with:
         gas gas_remaining wei
        args 0, 0, arg3, arg4, msg.sender, address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], ext_call.return_data[32]
}

function sub_aa7e66d2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_88d4d580(?) payable {
    require calldata.size - 4 >= 192
    require arg2 == address(arg2)
    require arg4 == uint8(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 <= test266151307() and ceil32(arg5.length) + 128 >= 96
    require calldata.size >= arg5.length + arg5 + 36
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require ceil32(arg5.length) + ceil32(arg6.length) + 160 <= test266151307() and ceil32(arg6.length) + 160 >= 128
    mem[ceil32(arg5.length) + 128] = arg6.length
    require calldata.size >= arg6.length + arg6 + 36
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg5.length) + arg6.length + 160] = 0
    if arg1 != 1:
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = 0
    else:
        if sub_9245a74f != msg.value:
            revert with 0, 'INVALID PAYMENT AMOUNT FOR SELECTED METHOD'
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 160 len 5437] = code.data[6100 len 5437]
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 5597] = address(arg2)
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 5629] = msg.sender
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 5661] = arg3
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 5693] = uint8(arg4)
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 5725] = 192
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 5789] = arg5.length
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 5821 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
        if ceil32(arg5.length) > arg5.length:
            mem[ceil32(arg5.length) + ceil32(arg6.length) + arg5.length + 5821] = 0
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 5757] = ceil32(arg5.length) + 224
        mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 5821] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 5853 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
        if ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) > Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
            mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 5853] = 0
        create contract with 0 wei
                        code: mem[ceil32(arg5.length) + ceil32(arg6.length) + 160 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + ceil32(arg5.length) + 5693]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = address(create.new_address)
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = msg.sender
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 224] = address(arg2)
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 256] = 288
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 448] = 5
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 480] = 'BASIC'
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 288] = 352
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 512] = arg5.length
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 544 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
        if ceil32(arg5.length) > arg5.length:
            mem[ceil32(arg5.length) + ceil32(arg6.length) + arg5.length + 544] = 0
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 320] = ceil32(arg5.length) + 384
        mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 544] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 576 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
        if ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) > Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
            mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 576] = 0
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 352] = uint8(arg4)
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 384] = arg3
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 416] = msg.value
        emit 0x7728ddf4: mem[ceil32(arg5.length) + ceil32(arg6.length) + 160 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + ceil32(arg5.length) + 416]
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = address(create.new_address)
    return Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), 
           mem[ceil32(arg5.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]
}



}
