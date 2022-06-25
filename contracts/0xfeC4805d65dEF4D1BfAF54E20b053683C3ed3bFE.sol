contract main {




// =====================  Runtime code  =====================


uint8 stor0;
mapping of uint256 balance;
address stor2;
address stor3;
address stor4;
uint256 stor5;

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
    if stor3 != msg.sender:
        revert with 0, 'Admins only.'
    stor5 = arg1
}

function sub_384efaf6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'no'
}

function sub_b5cef24a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor4)
    call stor4.0x935418fc with:
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
    require ext_code.size(stor4)
    call stor4.0x9bc255f8 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0x935418fc with:
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
    require ext_code.size(address(arg2))
    if stor3 != msg.sender:
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
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
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
    if stor3 != msg.sender:
        if stor3 != address(arg9):
            revert with 0, 'Admins only.'
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg2.length) <= arg2.length:
            create contract with 0 wei
                            code: code.data[6893 len 17356], Array(len=stor3, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], code.data[arg4.length + -ceil32(ceil32(arg4.length)) + 6924 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg1.length) + 352, address(arg3), ceil32(arg2.length) + ceil32(arg1.length) + 384, bool(arg5), arg6, arg7, arg8, stor4
        else:
            mem[ceil32(arg2.length) + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17839] = arg4.length
            mem[ceil32(arg2.length) + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17871 len ceil32(arg4.length)] = arg4[all], code.data[arg4.length + -ceil32(ceil32(arg4.length)) + 6924 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg2.length) + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 17871] = 0
            create contract with 0 wei
                            code: code.data[6893 len 17356], Array(len=stor3, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg1.length) + arg2.length + 17871 len ceil32(arg4.length) - arg2.length + ceil32(arg2.length)]), ceil32(arg1.length) + 352, address(arg3), ceil32(arg2.length) + ceil32(arg1.length) + 384, bool(arg5), arg6, arg7, arg8, stor4
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17807] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17839 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + arg2.length + 17839] = 0
        mem[ceil32(arg2.length) + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 17839] = arg4.length
        create contract with 0 wei
                        code: code.data[6893 len 17356], Array(len=stor3, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + arg1.length + 17839 len ceil32(arg2.length) + ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], code.data[arg4.length + -ceil32(ceil32(arg4.length)) + 6924 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg1.length) + 352, address(arg3), ceil32(arg2.length) + ceil32(arg1.length) + 384, bool(arg5), arg6, arg7, arg8, stor4
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
    require ext_code.size(stor4)
    call stor4.0x935418fc with:
       value msg.value - ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < msg.value - ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor4)
    call stor4.0x935418fc with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor5 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * stor5 / 100:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if balance[ext_call.return_data[12 len 20]] > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100)):
        revert with 0, 17
    balance[ext_call.return_data[12 len 20]] = balance[ext_call.return_data[12 len 20]] + ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100)
    if balance[stor3] > !(ext_call.return_data[0] * stor5 / 100):
        revert with 0, 17
    balance[stor3] += ext_call.return_data[0] * stor5 / 100
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
        require ext_code.size(stor4)
        call stor4.approve(address arg1, uint256 arg2) with:
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
        require ext_code.size(stor4)
        call stor4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor4)
        call stor4.approve(address arg1, uint256 arg2) with:
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
}

function sub_2a74eebe(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if msg.sender == stor3:
        mem[0] = msg.sender
        mem[32] = 1
        if arg4 > balance[msg.sender]:
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
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _83 = mem[_81]
            require mem[_81] == mem[_81 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_83))
            call address(_83).0xa795e193 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _93 = mem[_91]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(arg2))
            call address(arg2).0xa795e193 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _101 = mem[_99]
            mem[mem[64] + 4] = mem[_99]
            require ext_code.size(address(arg2))
            call address(arg2).0x4d57ca4f with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _93
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = arg4
            require ext_code.size(stor4)
            call stor4.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_111] == bool(mem[_111])
            mem[mem[64] + 4] = address(_83)
            mem[mem[64] + 36] = arg4
            require ext_code.size(stor4)
            call stor4.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_83), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_119] == bool(mem[_119])
            require ext_code.size(address(arg2))
            call address(arg2).0x1b64ab59 with:
                 gas gas_remaining wei
                args _101, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_83))
            call address(_83).0x1b64ab59 with:
                 gas gas_remaining wei
                args _93, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            if balance[msg.sender] < 2 * arg4:
                revert with 0, 17
            balance[msg.sender] -= 2 * arg4
            mem[mem[64]] = address(arg2)
            mem[mem[64] + 32] = address(_83)
            mem[mem[64] + 64] = _101
            mem[mem[64] + 96] = _93
            emit 0x99643a31: address(arg2), address(_83), _101, _93
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
        mem[0] = msg.sender
        mem[32] = 1
        if arg4 > balance[msg.sender]:
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
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _84 = mem[_82]
            require mem[_82] == mem[_82 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_84))
            call address(_84).0xa795e193 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _92 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _94 = mem[_92]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(arg2))
            call address(arg2).0xa795e193 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _102 = mem[_100]
            mem[mem[64] + 4] = mem[_100]
            require ext_code.size(address(arg2))
            call address(arg2).0x4d57ca4f with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _94
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = arg4
            require ext_code.size(stor4)
            call stor4.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _112 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_112] == bool(mem[_112])
            mem[mem[64] + 4] = address(_84)
            mem[mem[64] + 36] = arg4
            require ext_code.size(stor4)
            call stor4.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_84), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_120] == bool(mem[_120])
            require ext_code.size(address(arg2))
            call address(arg2).0x1b64ab59 with:
                 gas gas_remaining wei
                args _102, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_84))
            call address(_84).0x1b64ab59 with:
                 gas gas_remaining wei
                args _94, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            if balance[msg.sender] < 2 * arg4:
                revert with 0, 17
            balance[msg.sender] -= 2 * arg4
            mem[mem[64]] = address(arg2)
            mem[mem[64] + 32] = address(_84)
            mem[mem[64] + 64] = _102
            mem[mem[64] + 96] = _94
            emit 0x99643a31: address(arg2), address(_84), _102, _94
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balance[msg.sender] < arg4:
        revert with 0, 17
    balance[msg.sender] -= arg4
}



}
