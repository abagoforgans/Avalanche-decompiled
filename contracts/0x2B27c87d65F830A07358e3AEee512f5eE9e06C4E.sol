contract main {




// =====================  Runtime code  =====================


function withdrawETH() {
    if tx.origin != 0xa1d48eb95a70c524bafc6cd9b7c92ddbe572eba3:
        revert with 0, 'Unauthorized'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != 0xa1d48eb95a70c524bafc6cd9b7c92ddbe572eba3:
        revert with 0, 'Unauthorized'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function start(uint128 arg1, uint128 arg2, uint80 arg3, uint88 arg4, uint88 arg5, address arg6, address arg7, address arg8, address arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == Mask(80, 0, arg3)
    require arg4 == Mask(88, 0, arg4)
    require arg5 == Mask(88, 0, arg5)
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    if tx.origin != 0xa1d48eb95a70c524bafc6cd9b7c92ddbe572eba3:
        revert with 0, 'Unauthorized'
    require ext_code.size(arg8)
    call arg8.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg1 << 128, arg2 << 128, address(this.address), 128, 224, arg3 << 176, arg4 << 168, arg5 << 168, address(arg6), address(arg7), address(arg8), arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 36)] == Mask(80, 0, cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == Mask(88, 0, cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == Mask(88, 0, cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    require cd[(arg4 + 196)] == address(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == address(cd[(arg4 + 228)])
    if address(cd[(arg4 + 196)]) != msg.sender:
        revert with 0, 'Unauthorized'
    if arg1 != this.address:
        revert with 0, 'Only this contract may initiate'
    if not arg2:
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 228)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Payment failed'
        require ext_code.size(address(cd[(arg4 + 228)]))
        call address(cd[(arg4 + 228)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args cd[(arg4 + 68)] << 168, cd[(arg4 + 100)] << 168, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not Mask(88, 0, cd[(arg4 + 68)]):
            if Mask(80, 0, cd[(arg4 + 36)]) >= Mask(88, 0, cd[(arg4 + 100)]):
                revert with 0, 'No profitable trade.'
        else:
            if Mask(80, 0, cd[(arg4 + 36)]) >= Mask(88, 0, cd[(arg4 + 68)]):
                revert with 0, 'No profitable trade.'
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 196)]), Mask(80, 0, cd[(arg4 + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Repay failed'
    if not Mask(88, 0, cd[(arg4 + 68)]):
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 228)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Payment failed'
        require ext_code.size(address(cd[(arg4 + 228)]))
        call address(cd[(arg4 + 228)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args cd[(arg4 + 68)] << 168, cd[(arg4 + 100)] << 168, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if Mask(80, 0, cd[(arg4 + 36)]) >= Mask(88, 0, cd[(arg4 + 100)]):
            revert with 0, 'No profitable trade.'
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 196)]), Mask(80, 0, cd[(arg4 + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Repay failed'
    mem[132] = arg2
    require ext_code.size(address(cd[(arg4 + 164)]))
    call address(cd[(arg4 + 164)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 228)]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Payment failed'
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 260] = 0
    mem[ceil32(return_data.size) + 292 len 0] = None
    require ext_code.size(address(cd[(arg4 + 228)]))
    call address(cd[(arg4 + 228)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args cd[(arg4 + 68)] << 168, cd[(arg4 + 100)] << 168, address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if Mask(80, 0, cd[(arg4 + 36)]) >= Mask(88, 0, cd[(arg4 + 68)]):
        revert with 0, 'No profitable trade.'
    mem[ceil32(return_data.size) + 132] = address(cd[(arg4 + 196)])
    mem[ceil32(return_data.size) + 164] = Mask(80, 0, cd[(arg4 + 36)])
    require ext_code.size(address(cd[(arg4 + 132)]))
    call address(cd[(arg4 + 132)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 196)]), Mask(80, 0, cd[(arg4 + 36)])
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
    mem[(2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 132] = 32
    mem[(2 * ceil32(return_data.size)) + 164] = 12
    mem[(2 * ceil32(return_data.size)) + 196] = 0x5265706179206661696c65640000000000000000000000000000000000000000
    revert with memory
      from (2 * ceil32(return_data.size)) + 128
       len ceil32(return_data.size) + 100
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if uint32(call.func_hash) >> 224 != unknown_0x10d1e85c(?????):
        if uint32(call.func_hash) >> 224 != unknown_0x4640044e(?????):
            if uint32(call.func_hash) >> 224 != unknown_0x89476069(?????):
                require unknown_0xe086e5ec(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if tx.origin != 0xa1d48eb95a70c524bafc6cd9b7c92ddbe572eba3:
                    revert with 0, 'Unauthorized'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if tx.origin != 0xa1d48eb95a70c524bafc6cd9b7c92ddbe572eba3:
                    revert with 0, 'Unauthorized'
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require not msg.value
            require calldata.size - 4 >= 288
            require cd[4] == uint128(cd[4])
            require cd[36] == uint128(cd[36])
            require cd[68] == Mask(80, 0, cd[68])
            require cd[100] == Mask(88, 0, cd[100])
            require cd[132] == Mask(88, 0, cd[132])
            require cd[164] == address(cd[164])
            require cd[196] == address(cd[196])
            require cd[228] == address(cd[228])
            require cd[260] == address(cd[260])
            if tx.origin != 0xa1d48eb95a70c524bafc6cd9b7c92ddbe572eba3:
                revert with 0, 'Unauthorized'
            require ext_code.size(address(cd[228]))
            call address(cd[228]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[4] << 128, cd[36] << 128, address(this.address), 128, 224, cd[68] << 176, cd[100] << 168, cd[132] << 168, address(cd[164]), address(cd[196]), address(cd[228]), address(cd[260])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 224
    require ('cd', 100)[0] == Mask(80, 0, ('cd', 100)[0])
    require ('cd', 100)[1] == Mask(88, 0, ('cd', 100)[1])
    require ('cd', 100)[2] == Mask(88, 0, ('cd', 100)[2])
    require ('cd', 100)[3] == address(('cd', 100)[3])
    require ('cd', 100)[4] == address(('cd', 100)[4])
    require ('cd', 100)[5] == address(('cd', 100)[5])
    require ('cd', 100)[6] == address(('cd', 100)[6])
    if address(('cd', 100)[5]) != msg.sender:
        revert with 0, 'Unauthorized'
    if address(cd[4]) != this.address:
        revert with 0, 'Only this contract may initiate'
    if not cd[36]:
        require ext_code.size(address(('cd', 100)[4]))
        call address(('cd', 100)[4]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[6]), cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Payment failed'
        require ext_code.size(address(('cd', 100)[6]))
        call address(('cd', 100)[6]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 100)[1] << 168, ('cd', 100)[2] << 168, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not Mask(88, 0, ('cd', 100)[1]):
            if Mask(80, 0, ('cd', 100)[0]) >= Mask(88, 0, ('cd', 100)[2]):
                revert with 0, 'No profitable trade.'
        else:
            if Mask(80, 0, ('cd', 100)[0]) >= Mask(88, 0, ('cd', 100)[1]):
                revert with 0, 'No profitable trade.'
        require ext_code.size(address(('cd', 100)[3]))
        call address(('cd', 100)[3]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[5]), Mask(80, 0, ('cd', 100)[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Repay failed'
    mem[164] = cd[36]
    require ext_code.size(address(('cd', 100)[4]))
    call address(('cd', 100)[4]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 100)[6]), cd[36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Payment failed'
    mem[ceil32(return_data.size) + 228] = this.address
    mem[ceil32(return_data.size) + 260] = 128
    mem[ceil32(return_data.size) + 292] = 0
    mem[ceil32(return_data.size) + 324 len 0] = None
    require ext_code.size(address(('cd', 100)[6]))
    call address(('cd', 100)[6]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args ('cd', 100)[1] << 168, ('cd', 100)[2] << 168, address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not Mask(88, 0, ('cd', 100)[1]):
        if Mask(80, 0, ('cd', 100)[0]) >= Mask(88, 0, ('cd', 100)[2]):
            revert with 0, 'No profitable trade.'
    else:
        if Mask(80, 0, ('cd', 100)[0]) >= Mask(88, 0, ('cd', 100)[1]):
            revert with 0, 'No profitable trade.'
    mem[ceil32(return_data.size) + 164] = address(('cd', 100)[5])
    mem[ceil32(return_data.size) + 196] = Mask(80, 0, ('cd', 100)[0])
    require ext_code.size(address(('cd', 100)[3]))
    call address(('cd', 100)[3]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 100)[5]), Mask(80, 0, ('cd', 100)[0])
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
    mem[(2 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 164] = 32
    mem[(2 * ceil32(return_data.size)) + 196] = 12
    mem[(2 * ceil32(return_data.size)) + 228] = 0x5265706179206661696c65640000000000000000000000000000000000000000
    revert with memory
      from (2 * ceil32(return_data.size)) + 160
       len ceil32(return_data.size) + 100
}



}
