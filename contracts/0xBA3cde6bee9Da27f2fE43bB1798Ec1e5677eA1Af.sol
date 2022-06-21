contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 stor3;

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function isExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_ea05ff67(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor0[msg.sender]:
        revert with 0, 'only owner'
    stor1[address(arg1)] = uint8(bool(arg2))
    emit 0xab46cc11: bool(arg2), address(arg1)
}

function sub_c999c50b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor0[msg.sender]:
        revert with 0, 'only owner'
    if arg2:
        if stor3 > -2:
            revert with 0, 17
        stor3++
    else:
        if stor3 < 1:
            revert with 0, 17
        stor3--
        if not stor3:
            revert with 0, 'NOWN'
    stor0[address(arg1)] = uint8(bool(arg2))
    stor1[address(arg1)] = uint8(bool(arg2))
    emit 0xd5bfcd8d: bool(arg2), address(arg1)
}

function sub_574a79db(?) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, 'only owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Create2: insufficient balance'
    if not arg3.length:
        revert with 0, 'Create2: bytecode length is zero'
    create2 contract with ('param', 'arg1') wei
                    salt: arg2
                    code: arg3[all]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    emit ContractDeployed(address(create2.new_address));
    return address(create2.new_address)
}

function sub_92e3ba41(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor0[msg.sender]:
        if not stor1[address(msg.sender)]:
            revert with 0, 'FO'
        if not stor2[address(arg1)]:
            revert with 0, 'ECNOC'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length:
                revert with arg2[all]
            revert with 0, '', 0
        return Array(len=arg2.length, data=arg2[all])
    if not delegate.return_code:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, '', 0
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_4b6cead1(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not stor0[msg.sender]:
        if not stor1[address(msg.sender)]:
            revert with 0, 'FO'
        if not stor2[address(arg1)]:
            revert with 0, 'ECNOC'
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
    if not return_data.size:
        if not ext_call.success:
            if arg3.length:
                revert with arg3[all]
            revert with 0, '', 0
        return Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, '', 0
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x92e3ba41(?????) <= uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0x92e3ba41(?????):
            if uint32(call.func_hash) >> 224 != unknown_0xc999c50b(?????):
                if unknown_0xdebfda30(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor1[address(arg1)])
                require unknown_0xea05ff67(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if not stor0[msg.sender]:
                    revert with 0, 'only owner'
                stor1[address(arg1)] = uint8(bool(arg2))
                emit 0xab46cc11: bool(arg2), address(arg1)
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if not stor0[msg.sender]:
                    revert with 0, 'only owner'
                if arg2:
                    if stor3 > -2:
                        revert with 0, 17
                    stor3++
                else:
                    if stor3 < 1:
                        revert with 0, 17
                    stor3--
                    if not stor3:
                        revert with 0, 'NOWN'
                stor0[address(arg1)] = uint8(bool(arg2))
                stor1[address(arg1)] = uint8(bool(arg2))
                emit 0xd5bfcd8d: bool(arg2), address(arg1)
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        require arg2 <= test266151307()
        require arg2 + 35 < calldata.size
        if arg2.length > test266151307():
            revert with 0, 65
        if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
            revert with 0, 65
        mem[128] = arg2.length
        require arg2 + arg2.length + 36 <= calldata.size
        mem[160 len arg2.length] = arg2[all]
        mem[arg2.length + 160] = 0
        if not stor0[msg.sender]:
            if not stor1[address(msg.sender)]:
                revert with 0, 'FO'
            if not stor2[address(arg1)]:
                revert with 0, 'ECNOC'
        mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(ceil32(arg2.length)) + arg2.length + 129] = 0
        delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + 129 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg2.length)) + 133 len arg2.length - 4]
        if return_data.size:
            if not delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, '', 0
            return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        mem[ceil32(ceil32(arg2.length)) + 129] = 3
        mem[ceil32(ceil32(arg2.length)) + 161] = 0x4e52520000000000000000000000000000000000000000000000000000000000
        if not delegate.return_code:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, '', 0
        mem[ceil32(ceil32(arg2.length)) + 193] = 32
        mem[ceil32(ceil32(arg2.length)) + 225] = mem[96]
        mem[ceil32(ceil32(arg2.length)) + 257 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[ceil32(ceil32(arg2.length)) + mem[96] + 257] = 0
        return Array(len=mem[96], data=mem[ceil32(ceil32(arg2.length)) + 257 len ceil32(mem[96])])
    if unknown_0x2f54bf6e(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        return bool(stor0[address(arg1)])
    if uint32(call.func_hash) >> 224 != unknown_0x4b6cead1(?????):
        require unknown_0x574a79db(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 96
        require arg3 <= test266151307()
        require arg3 + 35 < calldata.size
        if arg3.length > test266151307():
            revert with 0, 65
        if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
            revert with 0, 65
        require arg3 + arg3.length + 36 <= calldata.size
        if not stor0[msg.sender]:
            revert with 0, 'only owner'
        if eth.balance(this.address) < arg1:
            revert with 0, 'Create2: insufficient balance'
        if not arg3.length:
            revert with 0, 'Create2: bytecode length is zero'
        create2 contract with ('param', 'arg1') wei
                        salt: arg2
                        code: arg3[all]
        if not address(create2.new_address):
            revert with 0, 'Create2: Failed on deploy'
        emit ContractDeployed(address(create2.new_address));
        return address(create2.new_address)
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
        revert with 0, 65
    mem[128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[160 len arg3.length] = arg3[all]
    mem[arg3.length + 160] = 0
    if not stor0[msg.sender]:
        if not stor1[address(msg.sender)]:
            revert with 0, 'FO'
        if not stor2[address(arg1)]:
            revert with 0, 'ECNOC'
    mem[ceil32(ceil32(arg3.length)) + 129 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 129] = 0
    call address(arg1).mem[ceil32(ceil32(arg3.length)) + 129 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 133 len arg3.length - 4]
    if return_data.size:
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, '', 0
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(ceil32(arg3.length)) + 129] = 3
    mem[ceil32(ceil32(arg3.length)) + 161] = 0x4e52520000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        if mem[96]:
            revert with memory
              from 128
               len mem[96]
        revert with 0, '', 0
    mem[ceil32(ceil32(arg3.length)) + 193] = 32
    mem[ceil32(ceil32(arg3.length)) + 225] = mem[96]
    mem[ceil32(ceil32(arg3.length)) + 257 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[ceil32(ceil32(arg3.length)) + mem[96] + 257] = 0
    return Array(len=mem[96], data=mem[ceil32(ceil32(arg3.length)) + 257 len ceil32(mem[96])])
}



}
