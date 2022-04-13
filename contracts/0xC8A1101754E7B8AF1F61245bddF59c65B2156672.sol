contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_4c11b342(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_31caf9da(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_61e52de1(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5a2d53e4(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        mem[100] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[132] = cd[4]
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[68] + 36)]), cd[4]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_ec29a101(?) {
    require calldata.size - 4 >= 192
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[68] wei
         gas gas_remaining wei
        args 0, 1, 128, address(this.address), block.timestamp + 10000, ('cd', 132).length, call.data[cd[132] + 36 len floor32(('cd', 132).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 132).length - 1 < ('cd', 132).length
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], cd[100], 160, this.address, block.timestamp + 10000, ('cd', 164).length, call.data[cd[164] + 36 len floor32(('cd', 164).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_10543871(?) {
    require calldata.size - 4 >= 192
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[68] wei
         gas gas_remaining wei
        args 0, 1, 128, address(this.address), block.timestamp + 10000, ('cd', 132).length, call.data[cd[132] + 36 len floor32(('cd', 132).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 132).length - 1 < ('cd', 132).length
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], cd[100], 160, this.address, block.timestamp + 10000, ('cd', 164).length, call.data[cd[164] + 36 len floor32(('cd', 164).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7207020f(?) {
    require calldata.size - 4 >= 192
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[68] wei
         gas gas_remaining wei
        args 0, 1, 128, address(this.address), block.timestamp + 10000, ('cd', 132).length, call.data[cd[132] + 36 len floor32(('cd', 132).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 132).length - 1 < ('cd', 132).length
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], cd[100], 160, this.address, block.timestamp + 10000, ('cd', 164).length, call.data[cd[164] + 36 len floor32(('cd', 164).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1a2e905e(?) {
    require calldata.size - 4 >= 192
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[68] wei
         gas gas_remaining wei
        args 0, 1, 128, address(this.address), block.timestamp + 10000, ('cd', 132).length, call.data[cd[132] + 36 len floor32(('cd', 132).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 132).length - 1 < ('cd', 132).length
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], cd[100], 160, this.address, block.timestamp + 10000, ('cd', 164).length, call.data[cd[164] + 36 len floor32(('cd', 164).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_98b15426(?) {
    require calldata.size - 4 >= 192
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, uint32(cd[68]), 1, 160, address(this.address), block.timestamp + 10000, ('cd', 132).length, call.data[cd[132] + 36 len floor32(('cd', 132).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 132).length - 1 < ('cd', 132).length
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], cd[100], 160, this.address, block.timestamp + 10000, ('cd', 164).length, call.data[cd[164] + 36 len floor32(('cd', 164).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a5b5b153(?) {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ('cd', 100).length
    require ext_code.size(address(cd[4]))
    if address(('cd', 100)[0]) != stor1:
        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(cd[36]), cd[68], 160, address(this.address), block.timestamp + 10000, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 100).length - 1 < ('cd', 100).length
        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        call address(cd[4]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value cd[36] wei
             gas gas_remaining wei
            args 0, uint32(cd[68]), 128, address(this.address), block.timestamp + 10000, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_5c379aca(?) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[164] = this.address
    mem[196] = block.timestamp + 10000
    mem[132] = 128
    mem[228] = arg5.length
    mem[260 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 260] = 0
    require ext_code.size(arg1)
    call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg3 wei
         gas gas_remaining wei
        args 0, 1, 128, address(this.address), block.timestamp + 10000, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    require 1 < mem[ceil32(return_data.size) + 96]
    _25 = mem[ceil32(return_data.size) + 160]
    mem[(32 * _11) + ceil32(return_data.size) + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _11) + ceil32(return_data.size) + 132] = _25
    mem[(32 * _11) + ceil32(return_data.size) + 164] = arg4
    mem[(32 * _11) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * _11) + ceil32(return_data.size) + 260] = block.timestamp + 10000
    mem[(32 * _11) + ceil32(return_data.size) + 196] = 160
    mem[(32 * _11) + ceil32(return_data.size) + 292] = arg6.length
    mem[(32 * _11) + ceil32(return_data.size) + 324 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * _11) + ceil32(return_data.size) + (32 * arg6.length) + 324] = 0
    require ext_code.size(arg2)
    call arg2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _25, arg4, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)]), address(this.address), block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _11) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 <= 4294967296
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 32 <= return_data.size
    require mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 128] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + (32 * mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 128]) + 32 <= return_data.size
}

function sub_8e3c550c(?) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[164] = this.address
    mem[196] = block.timestamp + 10000
    mem[132] = 128
    mem[228] = arg5.length
    mem[260 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 260] = 0
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg3 wei
         gas gas_remaining wei
        args 0, 1, 128, address(this.address), block.timestamp + 10000, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    require 1 < mem[ceil32(return_data.size) + 96]
    _25 = mem[ceil32(return_data.size) + 160]
    mem[(32 * _11) + ceil32(return_data.size) + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _11) + ceil32(return_data.size) + 132] = _25
    mem[(32 * _11) + ceil32(return_data.size) + 164] = arg4
    mem[(32 * _11) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * _11) + ceil32(return_data.size) + 260] = block.timestamp + 10000
    mem[(32 * _11) + ceil32(return_data.size) + 196] = 160
    mem[(32 * _11) + ceil32(return_data.size) + 292] = arg6.length
    mem[(32 * _11) + ceil32(return_data.size) + 324 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * _11) + ceil32(return_data.size) + (32 * arg6.length) + 324] = 0
    require ext_code.size(arg2)
    call arg2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _25, arg4, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)]), address(this.address), block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _11) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 <= 4294967296
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 32 <= return_data.size
    require mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 128] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + (32 * mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 128]) + 32 <= return_data.size
}

function sub_ac90611a(?) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[164] = this.address
    mem[196] = block.timestamp + 10000
    mem[132] = 128
    mem[228] = arg5.length
    mem[260 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 260] = 0
    require ext_code.size(arg1)
    call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg3 wei
         gas gas_remaining wei
        args 0, 1, 128, address(this.address), block.timestamp + 10000, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    require 1 < mem[ceil32(return_data.size) + 96]
    _25 = mem[ceil32(return_data.size) + 160]
    mem[(32 * _11) + ceil32(return_data.size) + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[(32 * _11) + ceil32(return_data.size) + 132] = _25
    mem[(32 * _11) + ceil32(return_data.size) + 164] = arg4
    mem[(32 * _11) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * _11) + ceil32(return_data.size) + 260] = block.timestamp + 10000
    mem[(32 * _11) + ceil32(return_data.size) + 196] = 160
    mem[(32 * _11) + ceil32(return_data.size) + 292] = arg6.length
    mem[(32 * _11) + ceil32(return_data.size) + 324 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * _11) + ceil32(return_data.size) + (32 * arg6.length) + 324] = 0
    require ext_code.size(arg2)
    call arg2.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _25, arg4, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)]), address(this.address), block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _11) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 <= 4294967296
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 32 <= return_data.size
    require mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 128] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + (32 * mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 128]) + 32 <= return_data.size
}

function sub_9036bfaa(?) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[164] = this.address
    mem[196] = block.timestamp + 10000
    mem[132] = 128
    mem[228] = arg5.length
    mem[260 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 260] = 0
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg3 wei
         gas gas_remaining wei
        args 0, 1, 128, address(this.address), block.timestamp + 10000, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    require 1 < mem[ceil32(return_data.size) + 96]
    _25 = mem[ceil32(return_data.size) + 160]
    mem[(32 * _11) + ceil32(return_data.size) + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[(32 * _11) + ceil32(return_data.size) + 132] = _25
    mem[(32 * _11) + ceil32(return_data.size) + 164] = arg4
    mem[(32 * _11) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * _11) + ceil32(return_data.size) + 260] = block.timestamp + 10000
    mem[(32 * _11) + ceil32(return_data.size) + 196] = 160
    mem[(32 * _11) + ceil32(return_data.size) + 292] = arg6.length
    mem[(32 * _11) + ceil32(return_data.size) + 324 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * _11) + ceil32(return_data.size) + (32 * arg6.length) + 324] = 0
    require ext_code.size(arg2)
    call arg2.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _25, arg4, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)]), address(this.address), block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _11) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 <= 4294967296
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 32 <= return_data.size
    require mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 128] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + (32 * mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _25) >> 32 + 128]) + 32 <= return_data.size
}



}
