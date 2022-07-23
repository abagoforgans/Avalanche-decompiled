contract main {




// =====================  Runtime code  =====================


address sub_f0dc471fAddress;
address stor1;

function sub_f0dc471f(?) {
    return sub_f0dc471fAddress
}

function _fallback() payable {
    revert
}

function sub_6c937374(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f0dc471fAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swap(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    call sub_f0dc471fAddress with:
       value msg.value wei
         gas gas_remaining wei
        args arg1[all]
    if not return_data.size:
        require mem[96] >= 96
        emit 0xe165a299: bool(ext_call.success), mem[128 len 96]
    else:
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        emit 0xe165a299: bool(ext_call.success), mem[128], mem[160], mem[192]
}

function getBalance(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while arg1.length > uint8(idx):
        require uint8(idx) < arg1.length
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(cd[((32 * uint8(idx)) + arg1 + 36)]))
        staticcall address(cd[((32 * uint8(idx)) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 128] = eth.balance(this.address)
    mem[(32 * arg1.length) + 160] = 64
    mem[(32 * arg1.length) + 192] = mem[96]
    mem[(32 * arg1.length) + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return eth.balance(this.address), 64, mem[(32 * arg1.length) + 192 len (32 * mem[96]) + 32]
}

function sub_fe348d11(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if stor1 != msg.sender:
        revert with 0, 'no permission!'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _19 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg2.length) + 132] = this.address
        require ext_code.size(address(_19))
        staticcall address(_19).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < arg2.length
        _25 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg2.length) + 132] = arg1
        mem[(32 * arg2.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_25))
        call address(_25).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
