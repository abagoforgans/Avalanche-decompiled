contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b6fc6855(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Not allowed'
    if stor1 == address(arg1):
        revert with 0, 'Already set'
    stor1 = address(arg1)
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

function sub_813a6560(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Not allowed'
    if arg2 <= eth.balance(this.address):
        call address(arg1) with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call address(arg1) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b25e7050(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Not allowed'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    if arg3 <= ext_call.return_data[0]:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a29a825f(?) payable {
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
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Not allowed'
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[arg3.length + ceil32(ceil32(arg3.length)) + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
    if not return_data.size:
        return bool(ext_call.success), Array(len=arg3.length, data=arg3[all])
    return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0xa29a825f(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            emit OwnershipTransferred(owner, 0);
            owner = 0
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x813a6560(?????):
                require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return owner
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, 'Not allowed'
            if arg2 <= eth.balance(this.address):
                call address(arg1) with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
            else:
                call address(arg1) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if uint32(call.func_hash) >> 224 != unknown_0xa29a825f(?????):
        if uint32(call.func_hash) >> 224 != unknown_0xb25e7050(?????):
            if unknown_0xb6fc6855(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    if stor1 != msg.sender:
                        revert with 0, 'Not allowed'
                if stor1 == address(arg1):
                    revert with 0, 'Already set'
                stor1 = address(arg1)
            else:
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                emit OwnershipTransferred(owner, address(arg1));
                owner = address(arg1)
        else:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, 'Not allowed'
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            if arg3 <= ext_call.return_data[0]:
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), arg3
            else:
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Not allowed'
    mem[ceil32(ceil32(arg3.length)) + 129 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[arg3.length + ceil32(ceil32(arg3.length)) + 129] = 0
    call address(arg1).mem[ceil32(ceil32(arg3.length)) + 129 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 133 len arg3.length - 4]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(ceil32(arg3.length)) + 129] = bool(ext_call.success)
    mem[ceil32(ceil32(arg3.length)) + 161] = 64
    mem[ceil32(ceil32(arg3.length)) + 193] = mem[96]
    mem[ceil32(ceil32(arg3.length)) + 225 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + ceil32(ceil32(arg3.length)) + 225] = 0
    return bool(ext_call.success), Array(len=mem[96], data=mem[ceil32(ceil32(arg3.length)) + 225 len ceil32(mem[96])])
}



}
