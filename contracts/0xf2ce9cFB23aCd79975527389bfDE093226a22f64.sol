contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_41da89e4(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[320 len arg5.length] = arg5[all]
    mem[arg5.length + 320] = 0
    mem[ceil32(arg5.length) + 320] = 0
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(arg2):
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(arg1):
            mem[ceil32(arg5.length) + 512 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 320 len ceil32(arg5.length) - arg5.length]
            if ceil32(arg5.length) > arg5.length:
                mem[ceil32(arg5.length) + arg5.length + 512] = 0
            call 0x1111111254fb6c44bac0bed2854e76f90643097d.mem[ceil32(arg5.length) + 512 len 4] with:
               value arg3 wei
                 gas gas_remaining wei
                args mem[ceil32(arg5.length) + 516 len arg5.length - 4]
            if not ext_call.success:
                revert with 0, '1Inch-swap-failed'
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(arg1):
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if 0 > eth.balance(this.address):
                    revert with 0, 'math-not-safe'
                if 0 < arg4:
                    revert with 0, 'Too much slippage'
                emit 0xbf9c4c69: 0, arg3, address(arg1), address(arg2)
                return 0
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < eth.balance(this.address):
                revert with 0, 17
            if ext_call.return_data[0] - eth.balance(this.address) > ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ext_call.return_data[0] - eth.balance(this.address) < arg4:
                revert with 0, 'Too much slippage'
            emit 0xbf9c4c69: ext_call.return_data[0] - eth.balance(this.address), arg3, address(arg1), address(arg2)
            return (ext_call.return_data[0] - eth.balance(this.address))
        mem[ceil32(arg5.length) + 516] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(arg5.length) + 512] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg5.length) + ceil32(return_data.size) + 512 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 320 len ceil32(arg5.length) - arg5.length]
        if ceil32(arg5.length) > arg5.length:
            mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 512] = 0
        call 0x1111111254fb6c44bac0bed2854e76f90643097d.mem[ceil32(arg5.length) + ceil32(return_data.size) + 512 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg5.length) + ceil32(return_data.size) + 516 len arg5.length - 4]
    else:
        mem[ceil32(arg5.length) + 512] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg5.length) + 516] = 0x1111111254fb6c44bac0bed2854e76f90643097d
        mem[ceil32(arg5.length) + 548] = arg3
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1111111254fb6c44bac0bed2854e76f90643097d, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(arg1):
            mem[ceil32(arg5.length) + 512 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 320 len ceil32(arg5.length) - arg5.length]
            if ceil32(arg5.length) > arg5.length:
                mem[ceil32(arg5.length) + arg5.length + 512] = 0
            call 0x1111111254fb6c44bac0bed2854e76f90643097d.mem[ceil32(arg5.length) + 512 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg5.length) + 516 len arg5.length - 4]
            if not ext_call.success:
                revert with 0, '1Inch-swap-failed'
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(arg1):
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if 0 > eth.balance(this.address):
                    revert with 0, 'math-not-safe'
                if 0 < arg4:
                    revert with 0, 'Too much slippage'
                emit 0xbf9c4c69: 0, arg3, address(arg1), address(arg2)
                return 0
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < eth.balance(this.address):
                revert with 0, 17
            if ext_call.return_data[0] - eth.balance(this.address) > ext_call.return_data[0]:
                revert with 0, 'math-not-safe'
            if ext_call.return_data[0] - eth.balance(this.address) < arg4:
                revert with 0, 'Too much slippage'
            emit 0xbf9c4c69: ext_call.return_data[0] - eth.balance(this.address), arg3, address(arg1), address(arg2)
            return (ext_call.return_data[0] - eth.balance(this.address))
        mem[ceil32(arg5.length) + 516] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(arg5.length) + 512] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg5.length) + ceil32(return_data.size) + 512 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 320 len ceil32(arg5.length) - arg5.length]
        if ceil32(arg5.length) > arg5.length:
            mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 512] = 0
        call 0x1111111254fb6c44bac0bed2854e76f90643097d.mem[ceil32(arg5.length) + ceil32(return_data.size) + 512 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg5.length) + ceil32(return_data.size) + 516 len arg5.length - 4]
    if not ext_call.success:
        revert with 0, '1Inch-swap-failed'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(arg1):
        if eth.balance(this.address) < ext_call.return_data[0]:
            revert with 0, 17
        if eth.balance(this.address) - ext_call.return_data[0] > eth.balance(this.address):
            revert with 0, 'math-not-safe'
        if eth.balance(this.address) - ext_call.return_data[0] < arg4:
            revert with 0, 'Too much slippage'
        emit 0xbf9c4c69: eth.balance(this.address) - ext_call.return_data[0], arg3, address(arg1), address(arg2)
        return (eth.balance(this.address) - ext_call.return_data[0])
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 > ext_call.return_data[0]:
        revert with 0, 'math-not-safe'
    if 0 < arg4:
        revert with 0, 'Too much slippage'
    emit 0xbf9c4c69: 0, arg3, address(arg1), address(arg2)
    return 0
}



}
