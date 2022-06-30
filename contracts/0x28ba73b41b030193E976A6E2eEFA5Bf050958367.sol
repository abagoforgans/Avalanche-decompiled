contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor1;
mapping of uint256 balance;
address stor4;
address stor5;
address stor6;
uint256 stor7;

function received() {
    return bool(stor0)
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[address(arg1)]
}

function sub_495057be(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function setOperatorFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, 'Admins only.'
    stor7 = arg1
}

function sub_384efaf6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'no'
}

function sub_b5cef24a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor6)
    call stor6.0x935418fc with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balance[address(arg1)] > !ext_call.return_data[0]:
        revert with 0, 17
    balance[address(arg1)] += ext_call.return_data[0]
}

function sub_74727681(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(stor6)
    call stor6.0x9bc255f8 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x935418fc with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balance[address(arg1)] > !ext_call.return_data[0]:
        revert with 0, 17
    balance[address(arg1)] += ext_call.return_data[0]
}

function sub_5cffeb71(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(address(arg2))
    if stor5 != msg.sender:
        staticcall address(arg2).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Admin only.'
    staticcall address(arg2).getRewards(uint256 arg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa795e193 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).0xa795e193 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).0x4d57ca4f with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor6)
    call stor6.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).0x1b64ab59 with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1b64ab59 with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if balance[msg.sender] < 2 * arg3:
        revert with 0, 17
    balance[msg.sender] -= 2 * arg3
    emit 0x99643a31: address(arg2), address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0]
    stor1 = 1
}

function sub_fb60e6fa(?) {
    require calldata.size - 4 >= 288
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
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 99 < 98 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 99 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == bool(arg5)
    require arg9 == address(arg9)
    if stor5 != msg.sender:
        if stor5 != address(arg9):
            revert with 0, 'Admins only.'
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg2.length) <= arg2.length:
            create contract with 0 wei
                            code: code.data[7158 len 17260], Array(len=stor5, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], code.data[arg4.length + -ceil32(ceil32(arg4.length)) + 7189 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg1.length) + 352, address(arg3), ceil32(arg2.length) + ceil32(arg1.length) + 384, bool(arg5), arg6, arg7, arg8, stor6
        else:
            mem[ceil32(arg2.length) + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17743] = arg4.length
            mem[ceil32(arg2.length) + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17775 len ceil32(arg4.length)] = arg4[all], code.data[arg4.length + -ceil32(ceil32(arg4.length)) + 7189 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg2.length) + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 17775] = 0
            create contract with 0 wei
                            code: code.data[7158 len 17260], Array(len=stor5, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg1.length) + arg2.length + 17775 len ceil32(arg4.length) - arg2.length + ceil32(arg2.length)]), ceil32(arg1.length) + 352, address(arg3), ceil32(arg2.length) + ceil32(arg1.length) + 384, bool(arg5), arg6, arg7, arg8, stor6
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17711] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17743 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + arg2.length + 17743] = 0
        mem[ceil32(arg2.length) + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17743] = arg4.length
        create contract with 0 wei
                        code: code.data[7158 len 17260], Array(len=stor5, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + arg1.length + 17743 len ceil32(arg2.length) + ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], code.data[arg4.length + -ceil32(ceil32(arg4.length)) + 7189 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg1.length) + 352, address(arg3), ceil32(arg2.length) + ceil32(arg1.length) + 384, bool(arg5), arg6, arg7, arg8, stor6
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args address(arg9)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xcfc38f0d: address(arg9), address(create.new_address)
    return address(create.new_address)
}

function sub_a715e2fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x24d64ca2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Not yet.'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xb086613c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > msg.value:
        revert with 0, 'More.'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xb086613c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 17
    if msg.value < msg.value - ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor6)
    call stor6.0x935418fc with:
       value msg.value - ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < msg.value - ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor6)
    call stor6.0x935418fc with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor7 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * stor7 / 100:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if balance[ext_call.return_data[12 len 20]] > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor7 / 100)):
        revert with 0, 17
    balance[ext_call.return_data[12 len 20]] = balance[ext_call.return_data[12 len 20]] + ext_call.return_data[0] - (ext_call.return_data[0] * stor7 / 100)
    if balance[stor5] > !(ext_call.return_data[0] * stor7 / 100):
        revert with 0, 17
    balance[stor5] += ext_call.return_data[0] * stor7 / 100
    if balance[msg.sender] > !ext_call.return_data[0]:
        revert with 0, 17
    balance[msg.sender] += ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getRewards(uint256 arg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    if not ext_call.return_data[12 len 20]:
        call address(arg1).0xa795e193 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor6)
        call stor6.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        call address(arg1).0x1b64ab59 with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if balance[msg.sender] < ext_call.return_data[0]:
            revert with 0, 17
        balance[msg.sender] -= ext_call.return_data[0]
    else:
        staticcall address(arg1).getRewards(uint256 arg1) with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa795e193 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        call address(arg1).0xa795e193 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        call address(arg1).0x4d57ca4f with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor6)
        call stor6.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        call stor6.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0] / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        call address(arg1).0x1b64ab59 with:
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(255, 1, ext_call.return_data[0]), ext_call.return_data[0] / 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x1b64ab59 with:
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(255, 1, ext_call.return_data[0]), ext_call.return_data[0] / 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if balance[msg.sender] < Mask(255, 1, ext_call.return_data[0]):
            revert with 0, 17
        balance[msg.sender] -= Mask(255, 1, ext_call.return_data[0])
        emit 0x99643a31: address(arg1), address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xc43e92b1 with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_2a74eebe(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.sender == stor5:
        if arg4 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if uint255(arg4) and arg3 > -1 / 2 * arg4:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 3
        if balance[msg.sender] < 2 * arg4 * arg3:
            revert with 0, 'Need more CC on the books.'
        idx = 0
        while idx < arg3:
            require ext_code.size(address(arg2))
            staticcall address(arg2).getRewards(uint256 arg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _85 = mem[_83]
            require mem[_83] == mem[_83 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_85))
            call address(_85).0xa795e193 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _95 = mem[_93]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(arg2))
            call address(arg2).0xa795e193 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _103 = mem[_101]
            mem[mem[64] + 4] = mem[_101]
            require ext_code.size(address(arg2))
            call address(arg2).0x4d57ca4f with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _95
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = arg4
            require ext_code.size(stor6)
            call stor6.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_113] == bool(mem[_113])
            mem[mem[64] + 4] = address(_85)
            mem[mem[64] + 36] = arg4
            require ext_code.size(stor6)
            call stor6.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_85), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_121] == bool(mem[_121])
            require ext_code.size(address(arg2))
            call address(arg2).0x1b64ab59 with:
                 gas gas_remaining wei
                args _103, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_85))
            call address(_85).0x1b64ab59 with:
                 gas gas_remaining wei
                args _95, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 3
            if balance[msg.sender] < 2 * arg4:
                revert with 0, 17
            balance[msg.sender] -= 2 * arg4
            mem[mem[64]] = address(arg2)
            mem[mem[64] + 32] = address(_85)
            mem[mem[64] + 64] = _103
            mem[mem[64] + 96] = _95
            emit 0x99643a31: address(arg2), address(_85), _103, _95
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x8da5cb5b with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'You do not admin of this printing press.'
        if arg4 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if uint255(arg4) and arg3 > -1 / 2 * arg4:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 3
        if balance[msg.sender] < 2 * arg4 * arg3:
            revert with 0, 'Need more CC on the books.'
        idx = 0
        while idx < arg3:
            require ext_code.size(address(arg2))
            staticcall address(arg2).getRewards(uint256 arg1) with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _86 = mem[_84]
            require mem[_84] == mem[_84 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_86))
            call address(_86).0xa795e193 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _94 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _96 = mem[_94]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(arg2))
            call address(arg2).0xa795e193 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _104 = mem[_102]
            mem[mem[64] + 4] = mem[_102]
            require ext_code.size(address(arg2))
            call address(arg2).0x4d57ca4f with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _96
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = arg4
            require ext_code.size(stor6)
            call stor6.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_114] == bool(mem[_114])
            mem[mem[64] + 4] = address(_86)
            mem[mem[64] + 36] = arg4
            require ext_code.size(stor6)
            call stor6.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_86), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_122] == bool(mem[_122])
            require ext_code.size(address(arg2))
            call address(arg2).0x1b64ab59 with:
                 gas gas_remaining wei
                args _104, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_86))
            call address(_86).0x1b64ab59 with:
                 gas gas_remaining wei
                args _96, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 3
            if balance[msg.sender] < 2 * arg4:
                revert with 0, 17
            balance[msg.sender] -= 2 * arg4
            mem[mem[64]] = address(arg2)
            mem[mem[64] + 32] = address(_86)
            mem[mem[64] + 64] = _104
            mem[mem[64] + 96] = _96
            emit 0x99643a31: address(arg2), address(_86), _104, _96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balance[msg.sender] < arg4:
        revert with 0, 17
    balance[msg.sender] -= arg4
    stor1 = 1
}



}
