contract main {




// =====================  Runtime code  =====================


address stor3;
mapping of uint8 stor4;
mapping of struct sub_8d7fa77a;
uint256 stor6;

function sub_8d7fa77a(?) {
    require calldata.size - 4 >= 32
    return sub_8d7fa77a[address(arg1)].field_0, 
           sub_8d7fa77a[address(arg1)].field_256,
           bool(sub_8d7fa77a[address(arg1)].field_512),
           bool(sub_8d7fa77a[address(arg1)].field_520),
           bool(sub_8d7fa77a[address(arg1)].field_528)
}

function _fallback() payable {
    revert
}

function withdrawMatic() {
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_218f6663(?) {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        sub_8d7fa77a[address(arg2)].field_512 = 0
    else:
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_8d7fa77a[address(arg2)].field_512 = -1 == ext_call.return_data[0] or Mask(248, 8, sub_8d7fa77a[address(arg2)].field_512)
}

function withdrawErc20(address arg1, uint256 arg2) {
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

function sub_c0b377f7(?) payable {
    require calldata.size - 4 >= 96
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[356 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(arg3), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        sub_8d7fa77a[address(arg2)].field_520 = 0
    else:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_8d7fa77a[address(arg2)].field_520 = Mask(248, 0, ext_call.return_data[0] > 0)
}

function sub_84f520fe(?) {
    require calldata.size - 4 >= 96
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        call arg1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] - 1, 0, 160, address(arg3), block.timestamp, 2, mem[388 len 64]
    else:
        call arg1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg3), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        sub_8d7fa77a[address(arg2)].field_528 = 0
    else:
        sub_8d7fa77a[address(arg2)].field_528 = Mask(240, 0, bool(ext_call.return_data[0]))
    sub_8d7fa77a[address(arg2)].field_0 = block.number
    sub_8d7fa77a[address(arg2)].field_256 = block.timestamp
    stor4[address(arg2)] = 1
    stor6++
    emit 0x9b14f9d2: bool(sub_8d7fa77a[address(arg2)].field_512), bool(sub_8d7fa77a[address(arg2)].field_520), bool(sub_8d7fa77a[address(arg2)].field_528), arg2
}

function sub_8fac3536(?) payable {
    require calldata.size - 4 >= 96
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        sub_8d7fa77a[address(arg2)].field_512 = 0
    else:
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_8d7fa77a[address(arg2)].field_512 = -1 == ext_call.return_data[0] or Mask(248, 8, sub_8d7fa77a[address(arg2)].field_512)
    mem[356 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(arg3), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        sub_8d7fa77a[address(arg2)].field_520 = 0
        revert with 0, 'ERR: CANNOT BUY TOKEN'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_8d7fa77a[address(arg2)].field_520 = Mask(248, 0, ext_call.return_data[0] > 0)
    if bool(uint8(ext_call.return_data[0] > 0)) != 1:
        revert with 0, 'ERR: CANNOT BUY TOKEN'
}

function sub_8deb47a8(?) payable {
    require calldata.size - 4 >= 96
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        sub_8d7fa77a[address(arg2)].field_512 = 0
    else:
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_8d7fa77a[address(arg2)].field_512 = -1 == ext_call.return_data[0] or Mask(248, 8, sub_8d7fa77a[address(arg2)].field_512)
    mem[356 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(arg3), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        sub_8d7fa77a[address(arg2)].field_520 = 0
    else:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_8d7fa77a[address(arg2)].field_520 = Mask(248, 0, ext_call.return_data[0] > 0)
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[484 len 0] = None
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        call arg1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] - 1, 0, 0, 160, address(arg3), block.timestamp, 2, mem[484 len 64]
    else:
        call arg1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 0, 160, address(arg3), block.timestamp, 2, mem[484 len 64]
    if not ext_call.success:
        sub_8d7fa77a[address(arg2)].field_528 = 0
    else:
        sub_8d7fa77a[address(arg2)].field_528 = Mask(240, 0, bool(ext_call.return_data[0]))
    sub_8d7fa77a[address(arg2)].field_0 = block.number
    sub_8d7fa77a[address(arg2)].field_256 = block.timestamp
    stor4[address(arg2)] = 1
    stor6++
    if bool(sub_8d7fa77a[address(arg2)].field_528) != 1:
        revert with 0, '', 'ERR: CANNOT SELL TOKEN'
    emit 0x9b14f9d2: bool(sub_8d7fa77a[address(arg2)].field_512), bool(sub_8d7fa77a[address(arg2)].field_520), bool(sub_8d7fa77a[address(arg2)].field_528), arg2
}



}
