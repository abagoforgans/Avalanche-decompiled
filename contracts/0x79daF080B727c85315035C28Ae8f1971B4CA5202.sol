contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct addresses;

function addresses(address arg1) {
    require calldata.size - 4 >= 32
    return addresses[arg1].field_0, bool(addresses[arg1].field_160)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function attachAddress(address arg1) {
    require calldata.size - 4 >= 32
    addresses[address(arg1)].field_0 = msg.sender
    addresses[address(arg1)].field_160 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    require arg1
    owner = arg1
}

function exchange(address[] arg1, uint256 arg2, uint256 arg3, address arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 2
    if not addresses[address(msg.sender)].field_160:
        revert with 0, 'Not attached feeAddress'
    require 0 < arg1.length
    _6 = mem[128]
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].balanceOf(address rg1) with:
         gas gas_remaining wei
        args addresses[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'insufficient balance input token'
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].allowance(address rg1, address rg2) with:
         gas gas_remaining wei
        args addresses[address(msg.sender)].field_0, this.address
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Not approved amountIn'
    require 0 < arg1.length
    _20 = mem[128]
    mem[(32 * arg1.length) + 164] = addresses[address(msg.sender)].field_0
    mem[(32 * arg1.length) + 196] = this.address
    mem[(32 * arg1.length) + 228] = arg2
    mem[(32 * arg1.length) + 128] = 100
    mem[(32 * arg1.length) + 164 len 28] = addresses[address(msg.sender)].field_0
    mem[(32 * arg1.length) + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[(32 * arg1.length) + 260 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), addresses[address(msg.sender)].field_0, addresses[address(msg.sender)].field_0, address(this.address), Mask(224, 32, arg2) >> 32
    mem[(32 * arg1.length) + 384 len 4] = uint32(arg2)
    call address(_20) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[(32 * arg1.length) + 356 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        53,
                        0xfe5472616e7366657248656c706572554e44423a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * arg1.length) + 381 len 3],
                        uint32(arg2),
                        mem[(32 * arg1.length) + 388 len 4]
        if arg1.length:
            require arg1.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            53,
                            0xfe5472616e7366657248656c706572554e44423a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * arg1.length) + 381 len 3],
                            uint32(arg2),
                            mem[(32 * arg1.length) + 388 len 4]
        require ext_code.size(address(_6))
        call address(_6).allowance(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg2:
            if arg5:
                require ext_code.size(address(_6))
                call address(_6).balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + 456 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(arg4)
                call arg4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 456 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[(32 * arg1.length) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 264] = arg2
                mem[(32 * arg1.length) + 296] = arg3
                mem[(32 * arg1.length) + 360] = addresses[address(msg.sender)].field_0
                mem[(32 * arg1.length) + 392] = block.timestamp + 120
                mem[(32 * arg1.length) + 328] = 160
                mem[(32 * arg1.length) + 424] = arg1.length
                mem[(32 * arg1.length) + 456 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(arg4)
                call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 456 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 260
                require return_data.size >= 32
                require mem[(32 * arg1.length) + 260 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * arg1.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * arg1.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 260] <= 4294967296 and mem[(32 * arg1.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 260]) + 32 <= return_data.size
        else:
            require 0 < arg1.length
            mem[(32 * arg1.length) + 296] = arg4
            mem[(32 * arg1.length) + 328] = 100 * arg2
            mem[(32 * arg1.length) + 260] = 68
            mem[(32 * arg1.length) + 296 len 28] = address(arg4) << 64
            mem[(32 * arg1.length) + 292 len 4] = approve(address rg1, uint256 rg2)
            mem[(32 * arg1.length) + 360 len 64] = approve(address rg1, uint256 rg2), address(arg4) << 64, 0, Mask(224, 32, 100 * arg2) >> 32
            mem[(32 * arg1.length) + 452 len 4] = Mask(32, 64, 100 * arg2) >> 64
            call mem[140 len 20] with:
                 gas gas_remaining wei
                args Mask(224, 32, 100 * arg2) << 224, mem[(32 * arg1.length) + 424 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                47,
                                0x645472616e7366657248656c706572554e44423a3a73616665417070726f76653a20617070726f7665206661696c65,
                                mem[(32 * arg1.length) + 475 len 17]
                if arg1.length:
                    require arg1.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    47,
                                    0x645472616e7366657248656c706572554e44423a3a73616665417070726f76653a20617070726f7665206661696c65,
                                    mem[(32 * arg1.length) + 475 len 17]
                if arg5:
                    require ext_code.size(address(_6))
                    call address(_6).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg1.length) + 556 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg4)
                    call arg4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 556 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[(32 * arg1.length) + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + 364] = arg2
                    mem[(32 * arg1.length) + 396] = arg3
                    mem[(32 * arg1.length) + 460] = addresses[address(msg.sender)].field_0
                    mem[(32 * arg1.length) + 492] = block.timestamp + 120
                    mem[(32 * arg1.length) + 428] = 160
                    mem[(32 * arg1.length) + 524] = arg1.length
                    mem[(32 * arg1.length) + 556 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg4)
                    call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 556 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1.length) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 360
                    require return_data.size >= 32
                    require mem[(32 * arg1.length) + 360 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * arg1.length) + 360 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * arg1.length) + 360 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 360] <= 4294967296 and mem[(32 * arg1.length) + 360 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + 360 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 360]) + 32 <= return_data.size
            else:
                mem[(32 * arg1.length) + 360] = return_data.size
                mem[(32 * arg1.length) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                47,
                                0x645472616e7366657248656c706572554e44423a3a73616665417070726f76653a20617070726f7665206661696c65,
                                mem[(32 * arg1.length) + ceil32(return_data.size) + 476 len 17]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * arg1.length) + 392]:
                        revert with 0, 
                                    32,
                                    47,
                                    0x645472616e7366657248656c706572554e44423a3a73616665417070726f76653a20617070726f7665206661696c65,
                                    mem[(32 * arg1.length) + ceil32(return_data.size) + 476 len 17]
                if arg5:
                    require ext_code.size(address(_6))
                    call address(_6).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 557 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg4)
                    call arg4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 557 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 365] = arg2
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 397] = arg3
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 461] = addresses[address(msg.sender)].field_0
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 493] = block.timestamp + 120
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 429] = 160
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 525] = arg1.length
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 557 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg4)
                    call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 557 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 361
                    require return_data.size >= 32
                    require mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 361] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 361]) + 32 <= return_data.size
    else:
        mem[(32 * arg1.length) + 260] = return_data.size
        mem[(32 * arg1.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        53,
                        0xfe5472616e7366657248656c706572554e44423a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 382 len 11]
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * arg1.length) + 292]:
                revert with 0, 
                            32,
                            53,
                            0xfe5472616e7366657248656c706572554e44423a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 382 len 11]
        require ext_code.size(address(_6))
        call address(_6).allowance(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg2:
            if arg5:
                require ext_code.size(address(_6))
                call address(_6).balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + ceil32(return_data.size) + 457 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(arg4)
                call arg4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 457 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + ceil32(return_data.size) + 265] = arg2
                mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = arg3
                mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = addresses[address(msg.sender)].field_0
                mem[(32 * arg1.length) + ceil32(return_data.size) + 393] = block.timestamp + 120
                mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = 160
                mem[(32 * arg1.length) + ceil32(return_data.size) + 425] = arg1.length
                mem[(32 * arg1.length) + ceil32(return_data.size) + 457 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(arg4)
                call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 457 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                require mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 261] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 261]) + 32 <= return_data.size
        else:
            require 0 < arg1.length
            mem[(32 * arg1.length) + ceil32(return_data.size) + 297] = arg4
            mem[(32 * arg1.length) + ceil32(return_data.size) + 329] = 100 * arg2
            mem[(32 * arg1.length) + ceil32(return_data.size) + 261] = 68
            mem[(32 * arg1.length) + ceil32(return_data.size) + 297 len 28] = address(arg4) << 64
            mem[(32 * arg1.length) + ceil32(return_data.size) + 293 len 4] = approve(address rg1, uint256 rg2)
            mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 64] = approve(address rg1, uint256 rg2), address(arg4) << 64, 0, Mask(224, 32, 100 * arg2) >> 32
            mem[(32 * arg1.length) + ceil32(return_data.size) + 453 len 4] = Mask(32, 64, 100 * arg2) >> 64
            call mem[140 len 20] with:
                 gas gas_remaining wei
                args Mask(224, 32, 100 * arg2) << 224, mem[(32 * arg1.length) + ceil32(return_data.size) + 425 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                47,
                                0x645472616e7366657248656c706572554e44423a3a73616665417070726f76653a20617070726f7665206661696c65,
                                mem[(32 * arg1.length) + ceil32(return_data.size) + 476 len 17]
                if arg1.length:
                    require arg1.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    47,
                                    0x645472616e7366657248656c706572554e44423a3a73616665417070726f76653a20617070726f7665206661696c65,
                                    mem[(32 * arg1.length) + ceil32(return_data.size) + 476 len 17]
                if arg5:
                    require ext_code.size(address(_6))
                    call address(_6).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 557 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg4)
                    call arg4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 557 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 365] = arg2
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 397] = arg3
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 461] = addresses[address(msg.sender)].field_0
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 493] = block.timestamp + 120
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 429] = 160
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 525] = arg1.length
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 557 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg4)
                    call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 557 len (32 * arg1.length) - floor32(arg1.length)]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 361
                    require return_data.size >= 32
                    require mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 361] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            else:
                mem[(32 * arg1.length) + ceil32(return_data.size) + 361] = return_data.size
                mem[(32 * arg1.length) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                47,
                                0x645472616e7366657248656c706572554e44423a3a73616665417070726f76653a20617070726f7665206661696c65,
                                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 477 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 17]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * arg1.length) + ceil32(return_data.size) + 393]:
                        revert with 0, 
                                    32,
                                    47,
                                    0x645472616e7366657248656c706572554e44423a3a73616665417070726f76653a20617070726f7665206661696c65,
                                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 477 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 17]
                if arg5:
                    require ext_code.size(address(_6))
                    call address(_6).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address), mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 558 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg4)
                    call arg4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, Array(len=arg1.length, data=mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 558 len (32 * arg1.length) + (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return 0, 
                           mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 366] = arg2
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 398] = arg3
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 462] = addresses[address(msg.sender)].field_0
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 120
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 430] = 160
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 526] = arg1.length
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 558 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(arg4)
                call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 558 len (32 * arg1.length) + (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]), addresses[address(msg.sender)].field_0, block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 362
                require return_data.size >= 32
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
    return 0
}



}
