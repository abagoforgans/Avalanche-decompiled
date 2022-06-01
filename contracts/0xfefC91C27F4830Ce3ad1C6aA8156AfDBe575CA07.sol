contract main {




// =====================  Runtime code  =====================


mapping of uint256 commitments;
uint256 sub_61800b2c;

function commitments(uint256 arg1) {
    require calldata.size - 4 >= 32
    return commitments[arg1]
}

function sub_61800b2c(?) {
    return sub_61800b2c
}

function destroy() {
    selfdestruct(msg.sender)
}

function sub_4a6a7407(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function toBytes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return 32, 32, arg1
}

function getCommitments() {
    require sub_61800b2c <= test266151307()
    if sub_61800b2c:
        mem[128 len 32 * sub_61800b2c] = call.data[calldata.size len 32 * sub_61800b2c]
    idx = 0
    while idx < sub_61800b2c:
        mem[0] = idx
        mem[32] = 0
        require idx < sub_61800b2c
        mem[(32 * idx) + 128] = commitments[idx]
        idx = idx + 1
        continue 
    mem[(32 * sub_61800b2c) + 192 len floor32(sub_61800b2c)] = mem[128 len floor32(sub_61800b2c)]
    return Array(len=sub_61800b2c, data=mem[128 len floor32(sub_61800b2c)], mem[(32 * sub_61800b2c) + floor32(sub_61800b2c) + 192 len (32 * sub_61800b2c) - floor32(sub_61800b2c)]), 
}

function sub_2be9602a(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[228 len arg3.length] = arg3[all]
    mem[arg3.length + 228] = 0
    require ext_code.size(arg1)
    call arg1.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args 0, 0, arg2, 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error asking for flashloan'
    emit 0xb76c48be: sha3(arg3[all])
    return 1
}

function sub_d1663689(?) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        mem[0] = idx
        mem[32] = 0
        commitments[idx] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    sub_61800b2c = arg4.length
    require ext_code.size(arg1)
    call arg1.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(arg2), arg3, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error asking for flashloan'
    mem[(32 * arg4.length) + 352 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    emit 0x40042780: address(arg1), address(arg2), arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 352 len (32 * arg4.length) - floor32(arg4.length)]), arg5
    return 1
}

function sub_cb92f93c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.flashLoanFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        idx = 0
        while idx < sub_61800b2c:
            mem[160] = 0xb214faa500000000000000000000000000000000000000000000000000000000
            mem[164] = commitments[idx]
            require ext_code.size(msg.sender)
            call msg.sender.deposit(bytes32 arg1) with:
               value 10^18 wei
                 gas gas_remaining wei
                args commitments[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = idx
            mem[32] = 0
            emit 0xbe7d7776: commitments[idx]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        call msg.sender.payBack() with:
             gas gas_remaining wei
    else:
        require msg.value
        if ext_call.return_data[0] * msg.value / msg.value != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        idx = 0
        while idx < sub_61800b2c:
            mem[160] = 0xb214faa500000000000000000000000000000000000000000000000000000000
            mem[164] = commitments[idx]
            require ext_code.size(msg.sender)
            call msg.sender.deposit(bytes32 arg1) with:
               value 10^18 wei
                 gas gas_remaining wei
                args commitments[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = idx
            mem[32] = 0
            emit 0xbe7d7776: commitments[idx]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        call msg.sender.payBack() with:
           value ext_call.return_data[0] * msg.value / 10000 wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error giving back money'
    return 1
}



}
