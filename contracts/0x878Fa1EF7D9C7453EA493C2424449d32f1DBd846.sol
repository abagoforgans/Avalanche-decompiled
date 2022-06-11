contract main {




// =====================  Runtime code  =====================


address controllerAddress;
address crpFactoryAddress;
address sub_742f3746Address;
uint256 sub_1e931a05;
mapping of uint8 stor4;

function sub_1e931a05(?) payable {
    return sub_1e931a05
}

function getController() payable {
    return controllerAddress
}

function isPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function sub_742f3746(?) payable {
    return sub_742f3746Address
}

function crpFactory() payable {
    return crpFactoryAddress
}

function _fallback() payable {
    revert
}

function sub_1504a383(?) payable {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_NOT_CONTROLLER'
    if arg1 >= 10^18:
        revert with 0, 'ERR_NOT_VALID_PERCENTAGE'
    emit 0x66f50c4a: arg1, msg.sender
    sub_1e931a05 = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_NOT_CONTROLLER'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    emit OwnershipTransferred(controllerAddress, arg1);
    controllerAddress = arg1
}

function sub_83fec7af(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_NOT_CONTROLLER'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdc19e842 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    crpFactoryAddress = address(arg1)
}

function sub_a530e308(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if controllerAddress != msg.sender:
        revert with 0, 'ERR_NOT_CONTROLLER'
    require ext_code.size(0x4c192c42ea58dcdeaeb24040d10989fed8772fa9)
    delegate 0x4c192c42ea58dcdeaeb24040d10989fed8772fa9.verifyTokenCompliance(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfeb8dab5: address(arg1), msg.sender
    sub_742f3746Address = address(arg1)
}

function sub_0f11779b(?) payable {
    require ext_code.size(this.address)
    staticcall this.address.0x3018205f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(crpFactoryAddress)
        staticcall crpFactoryAddress.0xdc19e842 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_NOT_CONTROLLER'
    create contract with 0 wei
                    code: code.data[2711 len 19981], 64, 128, 3, 0, 0, 24, 'Kassandra Internal Token', 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[address(create.new_address)] = 1
    emit 0x2dcffae7: msg.sender, address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x581e1fdc with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x92eefe9b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_f73d85f5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(this.address)
    staticcall this.address.0x3018205f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        if ceil32(arg1.length) <= arg1.length:
            create contract with 0 wei
                            code: code.data[2711 len 19981], Array(len=ceil32(arg1.length) + 96, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256)
        else:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 20175] = arg2.length
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 20207 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 20207] = 0
            create contract with 0 wei
                            code: code.data[2711 len 19981], Array(len=ceil32(arg1.length) + 96, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 20207 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)])
    else:
        require ext_code.size(crpFactoryAddress)
        staticcall crpFactoryAddress.0xdc19e842 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_NOT_CONTROLLER'
        if ceil32(arg1.length) <= arg1.length:
            create contract with 0 wei
                            code: code.data[2711 len 19981], Array(len=ceil32(arg1.length) + 96, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256)
        else:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 20175] = arg2.length
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 20207 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
            if ceil32(arg2.length) > arg2.length:
                mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + arg2.length + 20207] = 0
            create contract with 0 wei
                            code: code.data[2711 len 19981], Array(len=ceil32(arg1.length) + 96, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + arg1.length + 20207 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[address(create.new_address)] = 1
    emit 0x2dcffae7: msg.sender, address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x581e1fdc with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x92eefe9b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
