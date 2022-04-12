contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;

function sub_a95910f2(?) {
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if stor3 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require ext_code.size(stor1)
        if not ext_call.return_data[0]:
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    selfdestruct(stor3)
}

function _fallback() payable {
    revert
}

function sub_ab92eb55(?) {
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0f67bb23(?) {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_cdadda47(?) {
    require calldata.size - 4 >= 32
    if not eth.balance(this.address):
        revert with 0, '0'
    mem[356 len 0] = None
    require ext_code.size(stor0)
    call stor0.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 128, stor3, block.timestamp, 2, mem[356 len 64]
}

function sub_ac8ddcd8(?) payable {
    require calldata.size - 4 >= 32
    if not eth.balance(this.address):
        revert with 0, '0'
    mem[356 len 0] = None
    require ext_code.size(stor0)
    call stor0.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 128, stor3, block.timestamp, 2, mem[356 len 64]
}

function sub_fa3933a9(?) {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    if arg2:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
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
}

function sub_1b75f7e4(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    delegate arg1 with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if return_data.size:
        return bool(delegate.return_code)
    mem[ceil32(arg2.length) + 128] = bool(delegate.return_code)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_7bc67aa3(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    delegate arg1 with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if return_data.size:
        return bool(delegate.return_code)
    mem[ceil32(arg2.length) + 128] = bool(delegate.return_code)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_d0c3189b(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if return_data.size:
        return bool(ext_call.success)
    mem[ceil32(arg3.length) + 128] = bool(ext_call.success)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function sub_8b9d683b(?) payable {
    require calldata.size - 4 >= 64
    if not msg.value:
        if not eth.balance(this.address):
            revert with 0, '0'
        mem[356 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, 128, address(arg1), block.timestamp, 2, mem[356 len 64]
    else:
        if msg.value >= eth.balance(this.address):
            if not eth.balance(this.address):
                revert with 0, '0'
            mem[356 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, 128, address(arg1), block.timestamp, 2, mem[356 len 64]
        else:
            if not msg.value:
                revert with 0, '0'
            mem[356 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, address(arg1), block.timestamp, 2, mem[356 len 64]
}

function sub_b3d08147(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + 292] = block.timestamp + 360
    mem[(32 * arg3.length) + 324] = arg3.length
    mem[(32 * arg3.length) + 356 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + 356 len floor32((32 * arg3.length) + 196)] = swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), ext_call.return_data[0 len 28], ext_call.return_data[28 len 4], 0, 160, msg.sender, block.timestamp + 360, mem[(32 * arg3.length) + 324 len floor32((32 * arg3.length) + 196) - 164]
    mem[(64 * arg3.length) + floor32((32 * arg3.length) + 196) + -((32 * arg3.length) + 196 % 32) + 388 len (32 * arg3.length) + 196 % 32] = mem[(32 * arg3.length) + -((32 * arg3.length) + 196 % 32) + floor32((32 * arg3.length) + 196) + 192 len (32 * arg3.length) + 196 % 32]
    delegate arg1.mem[(32 * arg3.length) + floor32((32 * arg3.length) + 196) + 128 len 4] with:
         gas gas_remaining wei
        args mem[(64 * arg3.length) + 360 len (160 * arg3.length) + 192]
    if not return_data.size:
        mem[(64 * arg3.length) + 356] = bool(delegate.return_code)
        return memory
          from (64 * arg3.length) + 356
           len (127 * arg3.length) + 32
    mem[(64 * arg3.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[(64 * arg3.length) + ceil32(return_data.size) + 357] = bool(delegate.return_code)
    return memory
      from (64 * arg3.length) + ceil32(return_data.size) + 357
       len (127 * arg3.length) + 32
}



}
