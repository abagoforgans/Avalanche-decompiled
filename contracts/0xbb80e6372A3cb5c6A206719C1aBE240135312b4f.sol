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

function start(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, address arg7, address arg8, address arg9) {
    require calldata.size - 4 >= 288
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    if tx.origin != 0xa1d48eb95a70c524bafc6cd9b7c92ddbe572eba3:
        revert with 0, 'Unauthorized'
    require ext_code.size(arg8)
    call arg8.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg1, arg2, address(this.address), 128, 224, arg3, arg4, arg5, address(arg6), address(arg7), address(arg8), arg9
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

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    require cd[(arg4 + 196)] == address(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == address(cd[(arg4 + 228)])
    if address(cd[(arg4 + 196)]) != msg.sender:
        revert with 0, 'Unauthorized'
    if arg1 != this.address:
        revert with 0, 'Only this contract may initiate'
    require ext_code.size(address(cd[(arg4 + 164)]))
    if not arg2:
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 228)]), arg3
    else:
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
        args cd[(arg4 + 68)], cd[(arg4 + 100)], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 == cd[(arg4 + 68)]:
        if cd[(arg4 + 36)] >= cd[(arg4 + 100)]:
            revert with 0, 'No profitable trade.'
    else:
        if cd[(arg4 + 36)] >= cd[(arg4 + 68)]:
            revert with 0, 'No profitable trade.'
    require ext_code.size(address(cd[(arg4 + 132)]))
    call address(cd[(arg4 + 132)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 196)]), cd[(arg4 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Repay failed'
}

function yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    require cd[(arg4 + 196)] == address(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == address(cd[(arg4 + 228)])
    if address(cd[(arg4 + 196)]) != msg.sender:
        revert with 0, 'Unauthorized'
    if arg1 != this.address:
        revert with 0, 'Only this contract may initiate'
    require ext_code.size(address(cd[(arg4 + 164)]))
    if not arg2:
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 228)]), arg3
    else:
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
        args cd[(arg4 + 68)], cd[(arg4 + 100)], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 == cd[(arg4 + 68)]:
        if cd[(arg4 + 36)] >= cd[(arg4 + 100)]:
            revert with 0, 'No profitable trade.'
    else:
        if cd[(arg4 + 36)] >= cd[(arg4 + 68)]:
            revert with 0, 'No profitable trade.'
    require ext_code.size(address(cd[(arg4 + 132)]))
    call address(cd[(arg4 + 132)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 196)]), cd[(arg4 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Repay failed'
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    require cd[(arg4 + 196)] == address(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == address(cd[(arg4 + 228)])
    if address(cd[(arg4 + 196)]) != msg.sender:
        revert with 0, 'Unauthorized'
    if arg1 != this.address:
        revert with 0, 'Only this contract may initiate'
    require ext_code.size(address(cd[(arg4 + 164)]))
    if not arg2:
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 228)]), arg3
    else:
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
        args cd[(arg4 + 68)], cd[(arg4 + 100)], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 == cd[(arg4 + 68)]:
        if cd[(arg4 + 36)] >= cd[(arg4 + 100)]:
            revert with 0, 'No profitable trade.'
    else:
        if cd[(arg4 + 36)] >= cd[(arg4 + 68)]:
            revert with 0, 'No profitable trade.'
    require ext_code.size(address(cd[(arg4 + 132)]))
    call address(cd[(arg4 + 132)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 196)]), cd[(arg4 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Repay failed'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x83be44a8(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 288
        require cd[164] == address(cd[164])
        require cd[196] == address(cd[196])
        require cd[228] == address(cd[228])
        require cd[260] == address(cd[260])
        if tx.origin != 0xa1d48eb95a70c524bafc6cd9b7c92ddbe572eba3:
            revert with 0, 'Unauthorized'
        require ext_code.size(address(cd[228]))
        call address(cd[228]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args cd[4], cd[36], address(this.address), 128, 224, cd[68], cd[100], cd[132], address(cd[164]), address(cd[196]), address(cd[228]), address(cd[260])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0x89476069(?????) == uint32(call.func_hash) >> 224:
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
    if unknown_0xd172cd47(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 128
        require cd[4] == address(cd[4])
        require cd[100] <= test266151307()
        require cd[100] + 35 < calldata.size
        require ('cd', 100).length <= test266151307()
        require cd[100] + ('cd', 100).length + 36 <= calldata.size
        require ('cd', 100).length >= 224
        require ('cd', 100)[3] == address(('cd', 100)[3])
        require ('cd', 100)[4] == address(('cd', 100)[4])
        require ('cd', 100)[5] == address(('cd', 100)[5])
        require ('cd', 100)[6] == address(('cd', 100)[6])
        if address(('cd', 100)[5]) != msg.sender:
            revert with 0, 'Unauthorized'
        if address(cd[4]) != this.address:
            revert with 0, 'Only this contract may initiate'
        if not cd[36]:
            mem[164] = cd[68]
            require ext_code.size(address(('cd', 100)[4]))
            call address(('cd', 100)[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 100)[6]), cd[68]
        else:
            mem[164] = cd[36]
            require ext_code.size(address(('cd', 100)[4]))
            call address(('cd', 100)[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 100)[6]), cd[36]
    else:
        if unknown_0xe086e5ec(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if tx.origin != 0xa1d48eb95a70c524bafc6cd9b7c92ddbe572eba3:
                revert with 0, 'Unauthorized'
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if uint32(call.func_hash) >> 224 != unknown_0xee22dd87(?????):
            require unknown_0xf8890f8e(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] == address(cd[4])
            require cd[100] <= test266151307()
            require cd[100] + 35 < calldata.size
            require ('cd', 100).length <= test266151307()
            require cd[100] + ('cd', 100).length + 36 <= calldata.size
            require ('cd', 100).length >= 224
            require ('cd', 100)[3] == address(('cd', 100)[3])
            require ('cd', 100)[4] == address(('cd', 100)[4])
            require ('cd', 100)[5] == address(('cd', 100)[5])
            require ('cd', 100)[6] == address(('cd', 100)[6])
            if address(('cd', 100)[5]) != msg.sender:
                revert with 0, 'Unauthorized'
            if address(cd[4]) != this.address:
                revert with 0, 'Only this contract may initiate'
            require ext_code.size(address(('cd', 100)[4]))
            if not cd[36]:
                call address(('cd', 100)[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 100)[6]), cd[68]
            else:
                call address(('cd', 100)[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 100)[6]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Payment failed'
            require ext_code.size(address(('cd', 100)[6]))
            call address(('cd', 100)[6]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ('cd', 100)[1], ('cd', 100)[2], address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 == ('cd', 100)[1]:
                if ('cd', 100)[0] >= ('cd', 100)[2]:
                    revert with 0, 'No profitable trade.'
            else:
                if ('cd', 100)[0] >= ('cd', 100)[1]:
                    revert with 0, 'No profitable trade.'
            require ext_code.size(address(('cd', 100)[3]))
            call address(('cd', 100)[3]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 100)[5]), ('cd', 100)[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Repay failed'
        require not msg.value
        require calldata.size - 4 >= 128
        require cd[4] == address(cd[4])
        require cd[100] <= test266151307()
        require cd[100] + 35 < calldata.size
        require ('cd', 100).length <= test266151307()
        require cd[100] + ('cd', 100).length + 36 <= calldata.size
        require ('cd', 100).length >= 224
        require ('cd', 100)[3] == address(('cd', 100)[3])
        require ('cd', 100)[4] == address(('cd', 100)[4])
        require ('cd', 100)[5] == address(('cd', 100)[5])
        require ('cd', 100)[6] == address(('cd', 100)[6])
        if address(('cd', 100)[5]) != msg.sender:
            revert with 0, 'Unauthorized'
        if address(cd[4]) != this.address:
            revert with 0, 'Only this contract may initiate'
        if cd[36]:
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
            require ext_code.size(address(('cd', 100)[6]))
            call address(('cd', 100)[6]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ('cd', 100)[1], ('cd', 100)[2], address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 == ('cd', 100)[1]:
                if ('cd', 100)[0] >= ('cd', 100)[2]:
                    revert with 0, 'No profitable trade.'
            else:
                if ('cd', 100)[0] >= ('cd', 100)[1]:
                    revert with 0, 'No profitable trade.'
            require ext_code.size(address(('cd', 100)[3]))
            call address(('cd', 100)[3]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 100)[5]), ('cd', 100)[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Repay failed'
        mem[164] = cd[68]
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
    mem[ceil32(return_data.size) + 228] = this.address
    mem[ceil32(return_data.size) + 260] = 128
    mem[ceil32(return_data.size) + 292] = 0
    mem[ceil32(return_data.size) + 324 len 0] = None
    require ext_code.size(address(('cd', 100)[6]))
    call address(('cd', 100)[6]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args ('cd', 100)[1], ('cd', 100)[2], address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 == ('cd', 100)[1]:
        if ('cd', 100)[0] >= ('cd', 100)[2]:
            revert with 0, 'No profitable trade.'
    else:
        if ('cd', 100)[0] >= ('cd', 100)[1]:
            revert with 0, 'No profitable trade.'
    mem[ceil32(return_data.size) + 164] = address(('cd', 100)[5])
    mem[ceil32(return_data.size) + 196] = ('cd', 100)[0]
    require ext_code.size(address(('cd', 100)[3]))
    call address(('cd', 100)[3]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 100)[5]), ('cd', 100)[0]
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
