contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
mapping of uint8 stor1;
array of address tokens;
mapping of address stor99;

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function superAdmins(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function allTokensLength() payable {
    return tokens.length
}

function _fallback() payable {
    revert
}

function addSuperAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'not allowed'
    stor1[address(arg1)] = 1
    emit SuperAdminAdded(arg1);
}

function removeSuperAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'not allowed'
    if arg1 == msg.sender:
        revert with 0, 'can not remove self'
    if not arg1:
        revert with 0, 'illegal address'
    stor1[address(arg1)] = 0
    emit SuperAdminRemoved(arg1);
}

function sub_84d02832(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor0[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_3f14ba97(?) payable {
    require calldata.size - 4 >= 96
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'not allowed'
    require ext_code.size(arg1)
    staticcall arg1.0x1bf5fc4d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1._operator() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.changeUser(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8c8a8fa7: address(arg1), address(ext_call.return_data[0]), address(arg2), address(ext_call.return_data[0]), arg3
}

function sub_90853cb0(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'not allowed'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] or mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 160] = 0
    if stor[mem[ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)]:
        revert with 0, 'symbol already exists'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
    _218 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 192 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192])
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 192] = arg5 << 248
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = _218 + arg3.length + 1
    mem[64] = _218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193
    _315 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len 5478] = code.data[3330 len 5478]
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5671] = arg1
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5703] = arg2
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5799] = arg5
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5735] = 160
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5831] = arg3.length
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5863 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5767] = arg3.length + 192
        mem[(2 * arg3.length) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + 5863] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * arg3.length) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + 5895 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            create2 contract with 0 wei
                            salt: _315
                            code: code.data[3330 len 5478], address(arg1), address(arg2), Array(len=arg5 << 248, data=arg3.length, mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5863 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 32]), arg3.length + 192
            if not create2.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 193] = 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 193] or mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1)
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + _491 + 193] = 0
            stor[sha3(mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len _491 + 32])] = address(create2.new_address)
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + (2 * arg3.length) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + 5895] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + (2 * arg3.length) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 5927 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            create2 contract with 0 wei
                            salt: _315
                            code: code.data[3330 len 5478], address(arg1), address(arg2), Array(len=arg5 << 248, data=arg3.length, mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5863 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 64]), arg3.length + 192
            if not create2.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            _497 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 193] = 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 193] or mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1)
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + _497 + 193] = 0
            stor[sha3(mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len _497 + 32])] = address(create2.new_address)
    else:
        mem[floor32(arg3.length) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5863] = mem[(2 * floor32(arg3.length)) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + 5895 len arg3.length % 32]
        mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5767] = floor32(arg3.length) + 224
        mem[floor32(arg3.length) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5895] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5927 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            create2 contract with 0 wei
                            salt: _315
                            code: code.data[3330 len 5478], address(arg1), address(arg2), Array(len=arg5 << 248, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[_218 + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg3.length + 5863 len floor32(arg3.length) + -ceil32(arg3.length) + 32], Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(arg3.length) + 5927 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), floor32(arg3.length) + 224
            if not create2.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            _494 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 193] = 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 193] or mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1)
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + _494 + 193] = 0
            stor[sha3(mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len _494 + 32])] = address(create2.new_address)
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5927] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 5959 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            create2 contract with 0 wei
                            salt: _315
                            code: code.data[3330 len 5478], address(arg1), address(arg2), Array(len=arg5 << 248, data=arg3.length, mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 5863 len floor32(arg3.length) + 32], Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(arg3.length) + 5927 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 32]), floor32(arg3.length) + 224
            if not create2.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            _499 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 193] = 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 193] or mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1)
            mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + _499 + 193] = 0
            stor[sha3(mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len _499 + 32])] = address(create2.new_address)
    tokens.length++
    tokens[tokens.length] = address(create2.new_address)
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193] = address(create2.new_address)
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 225] = 64
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 257] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 289 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        emit 0x4e9fa516: mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 96]
    else:
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 289] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + _218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 321 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        emit 0x4e9fa516: mem[_218 + ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 193 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 128]
    return address(create2.new_address)
}



}
