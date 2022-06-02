contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getSelector(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return Mask(32, 224, sha3(arg1[all]))
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_80610936(?) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg5.length) + 128] = arg6.length
    mem[(32 * arg5.length) + 160 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg5.length) + (32 * arg6.length) + 160] = 0
    if stor0 != msg.sender:
        revert with 0, 'Not Allowed'
    require 0 < arg5.length
    if arg4 == mem[140 len 20]:
        require 0 < arg5.length
        require 0 < arg6.length
        if arg4 == mem[140 len 20]:
            _15 = mem[(32 * arg5.length) + 160]
            mem[(32 * arg5.length) + (32 * arg6.length) + 164] = mem[(32 * arg5.length) + 172 len 20]
            mem[(32 * arg5.length) + (32 * arg6.length) + 196] = arg1
            require ext_code.size(arg4)
            call arg4.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_15), arg1
            mem[(32 * arg5.length) + (32 * arg6.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, '1'
            require return_data.size >= 32
            require 0 < arg6.length
            _45 = mem[(32 * arg5.length) + 160]
            require 1 < arg6.length
            _53 = mem[(32 * arg5.length) + 192]
            mem[(32 * arg5.length) + (32 * arg6.length) + 160] = 0x45bb14fe00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (32 * arg6.length) + 164] = 0
            mem[(32 * arg5.length) + (32 * arg6.length) + 196] = arg3
            require ext_code.size(address(_45))
            call address(_45).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, arg3, address(_53), 160, block.timestamp + 10, 0, mem[(32 * arg5.length) + (32 * arg6.length) + 356]
            if not ext_call.success:
                revert with 0, '2'
            require 1 < arg6.length
            require ext_code.size(mem[(32 * arg5.length) + 204 len 20])
            call mem[(32 * arg5.length) + 204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, this.address, 160, block.timestamp + 10, 0, mem[(32 * arg5.length) + (32 * arg6.length) + 356]
            if not ext_call.success:
                revert with 0, '4'
        else:
            _20 = mem[(32 * arg5.length) + 160]
            mem[(32 * arg5.length) + (32 * arg6.length) + 164] = mem[(32 * arg5.length) + 172 len 20]
            mem[(32 * arg5.length) + (32 * arg6.length) + 196] = arg1
            require ext_code.size(arg4)
            call arg4.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_20), arg1
            mem[(32 * arg5.length) + (32 * arg6.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, '1'
            require return_data.size >= 32
            require 0 < arg6.length
            _51 = mem[(32 * arg5.length) + 160]
            require 1 < arg6.length
            _59 = mem[(32 * arg5.length) + 192]
            mem[(32 * arg5.length) + (32 * arg6.length) + 160] = 0x45bb14fe00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (32 * arg6.length) + 164] = arg3
            mem[(32 * arg5.length) + (32 * arg6.length) + 196] = 0
            require ext_code.size(address(_51))
            call address(_51).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 0, address(_59), 160, block.timestamp + 10, 0, mem[(32 * arg5.length) + (32 * arg6.length) + 356]
            if not ext_call.success:
                revert with 0, '3'
            require 1 < arg6.length
            require ext_code.size(mem[(32 * arg5.length) + 204 len 20])
            call mem[(32 * arg5.length) + 204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, arg2, this.address, 160, block.timestamp + 10, 0, mem[(32 * arg5.length) + (32 * arg6.length) + 356]
            if not ext_call.success:
                revert with 0, '5'
    else:
        require 1 < arg5.length
        if arg4 != mem[172 len 20]:
            revert with 0, 'Not Allowed'
        require 0 < arg5.length
        require 0 < arg6.length
        if arg4 == mem[140 len 20]:
            _25 = mem[(32 * arg5.length) + 160]
            mem[(32 * arg5.length) + (32 * arg6.length) + 164] = mem[(32 * arg5.length) + 172 len 20]
            mem[(32 * arg5.length) + (32 * arg6.length) + 196] = arg1
            require ext_code.size(arg4)
            call arg4.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_25), arg1
            mem[(32 * arg5.length) + (32 * arg6.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, '1'
            require return_data.size >= 32
            require 0 < arg6.length
            _57 = mem[(32 * arg5.length) + 160]
            require 1 < arg6.length
            _64 = mem[(32 * arg5.length) + 192]
            mem[(32 * arg5.length) + (32 * arg6.length) + 160] = 0x45bb14fe00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (32 * arg6.length) + 164] = 0
            mem[(32 * arg5.length) + (32 * arg6.length) + 196] = arg3
            require ext_code.size(address(_57))
            call address(_57).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, arg3, address(_64), 160, block.timestamp + 10, 0, mem[(32 * arg5.length) + (32 * arg6.length) + 356]
            if not ext_call.success:
                revert with 0, '2'
            require 1 < arg6.length
            require ext_code.size(mem[(32 * arg5.length) + 204 len 20])
            call mem[(32 * arg5.length) + 204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, this.address, 160, block.timestamp + 10, 0, mem[(32 * arg5.length) + (32 * arg6.length) + 356]
            if not ext_call.success:
                revert with 0, '4'
        else:
            _33 = mem[(32 * arg5.length) + 160]
            mem[(32 * arg5.length) + (32 * arg6.length) + 164] = mem[(32 * arg5.length) + 172 len 20]
            mem[(32 * arg5.length) + (32 * arg6.length) + 196] = arg1
            require ext_code.size(arg4)
            call arg4.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_33), arg1
            mem[(32 * arg5.length) + (32 * arg6.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, '1'
            require return_data.size >= 32
            require 0 < arg6.length
            _63 = mem[(32 * arg5.length) + 160]
            require 1 < arg6.length
            _70 = mem[(32 * arg5.length) + 192]
            mem[(32 * arg5.length) + (32 * arg6.length) + 160] = 0x45bb14fe00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (32 * arg6.length) + 164] = arg3
            mem[(32 * arg5.length) + (32 * arg6.length) + 196] = 0
            require ext_code.size(address(_63))
            call address(_63).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 0, address(_70), 160, block.timestamp + 10, 0, mem[(32 * arg5.length) + (32 * arg6.length) + 356]
            if not ext_call.success:
                revert with 0, '3'
            require 1 < arg6.length
            require ext_code.size(mem[(32 * arg5.length) + 204 len 20])
            call mem[(32 * arg5.length) + 204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, arg2, this.address, 160, block.timestamp + 10, 0, mem[(32 * arg5.length) + (32 * arg6.length) + 356]
            if not ext_call.success:
                revert with 0, '5'
    ('bool', 'ext_call.success')
}



}
