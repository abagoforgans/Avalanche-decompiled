contract main {




// =====================  Runtime code  =====================


#
#  - sub_2957cba1(?)
#
uint32 stor0;
address owner;
uint256 stor0;
address stor1;
address stor2;
address stor3;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 stor6;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function owner() {
    return address(owner)
}

function _fallback() payable {
    revert
}

function returnTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'own'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function returnBalance() payable {
    if address(owner) != msg.sender:
        revert with 0, 'own'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if address(owner) != msg.sender:
        revert with 0, 'own'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call stor1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_9e990c5f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 5
    if not stor5[address(msg.sender)]:
        revert with 0, 'slave'
    require arg1.length - 1 < arg1.length
    _7 = mem[(32 * arg1.length - 1) + 128]
    if arg2 == stor2:
        require 0 < arg1.length
        _11 = mem[128]
        require 0 < arg1.length
        require 1 < arg1.length
        require ext_code.size(address(stor3))
        staticcall address(stor3).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(mem[128]), mem[172 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 164] = ext_call.return_data[12 len 20]
        mem[(32 * arg1.length) + 196] = arg4
        mem[(32 * arg1.length) + 128] = 68
        mem[64] = (32 * arg1.length) + 228
        mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * arg1.length) + 228 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg4) >> 32
        mem[(32 * arg1.length) + 320 len 4] = uint32(arg4)
        call address(_11).mem[(32 * arg1.length) + 192 len 4] with:
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 224, mem[(32 * arg1.length) + 292 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'T'
            if not arg1.length:
                require arg1.length - 1 < arg1.length
                _2366 = mem[(32 * arg1.length - 1) + 128]
                mem[(32 * arg1.length) + 232] = this.address
                require ext_code.size(address(_2366))
                staticcall address(_2366).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _4632 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _4665 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4665)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4632))
                        staticcall address(_4632).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4632) == address(_4632):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4632) == address(_4632):
                                if idx >= mem[96] - 2:
                                    _5654 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5654 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5654 + 36] = 0
                                    mem[_5654 + 68] = ext_call.return_data[0]
                                    mem[_5654 + 100] = this.address
                                    mem[_5654 + 132] = 128
                                    mem[_5654 + 164] = mem[_5654]
                                    s = 0
                                    while s < mem[_5654]:
                                        mem[_5654 + s + 196] = mem[_5654 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5654] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5654 + 164 len mem[_5654] + 32]
                                    else:
                                        mem[floor32(mem[_5654]) + _5654 + 196] = mem[floor32(mem[_5654]) + _5654 + -(mem[_5654] % 32) + 228 len mem[_5654] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5654], mem[_5654 + 196 len floor32(mem[_5654]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5462 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4665)
                                    mem[mem[64] + 36] = address(_5462)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4665), address(_5462)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6102 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6102 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6102 + 36] = 0
                                    mem[_6102 + 68] = ext_call.return_data[0]
                                    mem[_6102 + 100] = address(ext_call.return_data[0])
                                    mem[_6102 + 132] = 128
                                    mem[_6102 + 164] = mem[_6102]
                                    s = 0
                                    while s < mem[_6102]:
                                        mem[_6102 + s + 196] = mem[_6102 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6102] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6102 + 164 len mem[_6102] + 32]
                                    else:
                                        mem[floor32(mem[_6102]) + _6102 + 196] = mem[floor32(mem[_6102]) + _6102 + -(mem[_6102] % 32) + 228 len mem[_6102] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6102], mem[_6102 + 196 len floor32(mem[_6102]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5655 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5655 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5655 + 36] = ext_call.return_data[0]
                                    mem[_5655 + 68] = 0
                                    mem[_5655 + 100] = this.address
                                    mem[_5655 + 132] = 128
                                    mem[_5655 + 164] = mem[_5655]
                                    s = 0
                                    while s < mem[_5655]:
                                        mem[_5655 + s + 196] = mem[_5655 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5655] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5655 + 164 len mem[_5655] + 32]
                                    else:
                                        mem[floor32(mem[_5655]) + _5655 + 196] = mem[floor32(mem[_5655]) + _5655 + -(mem[_5655] % 32) + 228 len mem[_5655] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5655], mem[_5655 + 196 len floor32(mem[_5655]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5465 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4665)
                                    mem[mem[64] + 36] = address(_5465)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4665), address(_5465)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6105 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6105 + 36] = ext_call.return_data[0]
                                    mem[_6105 + 68] = 0
                                    mem[_6105 + 100] = address(ext_call.return_data[0])
                                    mem[_6105 + 132] = 128
                                    mem[_6105 + 164] = mem[_6105]
                                    s = 0
                                    while s < mem[_6105]:
                                        mem[_6105 + s + 196] = mem[_6105 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6105] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6105 + 164 len mem[_6105] + 32]
                                    else:
                                        mem[floor32(mem[_6105]) + _6105 + 196] = mem[floor32(mem[_6105]) + _6105 + -(mem[_6105] % 32) + 228 len mem[_6105] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6105], mem[_6105 + 196 len floor32(mem[_6105]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4632) == address(_4632):
                                if idx >= mem[96] - 2:
                                    _5656 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5656 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5656 + 36] = 0
                                    mem[_5656 + 68] = ext_call.return_data[0]
                                    mem[_5656 + 100] = this.address
                                    mem[_5656 + 132] = 128
                                    mem[_5656 + 164] = mem[_5656]
                                    s = 0
                                    while s < mem[_5656]:
                                        mem[_5656 + s + 196] = mem[_5656 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5656] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5656 + 164 len mem[_5656] + 32]
                                    else:
                                        mem[floor32(mem[_5656]) + _5656 + 196] = mem[floor32(mem[_5656]) + _5656 + -(mem[_5656] % 32) + 228 len mem[_5656] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5656], mem[_5656 + 196 len floor32(mem[_5656]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5468 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4665)
                                    mem[mem[64] + 36] = address(_5468)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4665), address(_5468)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6108 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6108 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6108 + 36] = 0
                                    mem[_6108 + 68] = ext_call.return_data[0]
                                    mem[_6108 + 100] = address(ext_call.return_data[0])
                                    mem[_6108 + 132] = 128
                                    mem[_6108 + 164] = mem[_6108]
                                    s = 0
                                    while s < mem[_6108]:
                                        mem[_6108 + s + 196] = mem[_6108 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6108] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6108 + 164 len mem[_6108] + 32]
                                    else:
                                        mem[floor32(mem[_6108]) + _6108 + 196] = mem[floor32(mem[_6108]) + _6108 + -(mem[_6108] % 32) + 228 len mem[_6108] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6108], mem[_6108 + 196 len floor32(mem[_6108]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5657 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5657 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5657 + 36] = ext_call.return_data[0]
                                    mem[_5657 + 68] = 0
                                    mem[_5657 + 100] = this.address
                                    mem[_5657 + 132] = 128
                                    mem[_5657 + 164] = mem[_5657]
                                    s = 0
                                    while s < mem[_5657]:
                                        mem[_5657 + s + 196] = mem[_5657 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5657] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5657 + 164 len mem[_5657] + 32]
                                    else:
                                        mem[floor32(mem[_5657]) + _5657 + 196] = mem[floor32(mem[_5657]) + _5657 + -(mem[_5657] % 32) + 228 len mem[_5657] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5657], mem[_5657 + 196 len floor32(mem[_5657]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5471 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4665)
                                    mem[mem[64] + 36] = address(_5471)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4665), address(_5471)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6111 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6111 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6111 + 36] = ext_call.return_data[0]
                                    mem[_6111 + 68] = 0
                                    mem[_6111 + 100] = address(ext_call.return_data[0])
                                    mem[_6111 + 132] = 128
                                    mem[_6111 + 164] = mem[_6111]
                                    s = 0
                                    while s < mem[_6111]:
                                        mem[_6111 + s + 196] = mem[_6111 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6111] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6111 + 164 len mem[_6111] + 32]
                                    else:
                                        mem[floor32(mem[_6111]) + _6111 + 196] = mem[floor32(mem[_6111]) + _6111 + -(mem[_6111] % 32) + 228 len mem[_6111] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6111], mem[_6111 + 196 len floor32(mem[_6111]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4665)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4632))
                        staticcall address(_4632).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4632) == address(_4665):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4632) == address(_4665):
                                if idx >= mem[96] - 2:
                                    _5658 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5658 + 36] = 0
                                    mem[_5658 + 68] = ext_call.return_data[0]
                                    mem[_5658 + 100] = this.address
                                    mem[_5658 + 132] = 128
                                    mem[_5658 + 164] = mem[_5658]
                                    s = 0
                                    while s < mem[_5658]:
                                        mem[_5658 + s + 196] = mem[_5658 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5658] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5658 + 164 len mem[_5658] + 32]
                                    else:
                                        mem[floor32(mem[_5658]) + _5658 + 196] = mem[floor32(mem[_5658]) + _5658 + -(mem[_5658] % 32) + 228 len mem[_5658] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5658], mem[_5658 + 196 len floor32(mem[_5658]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5474 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4665)
                                    mem[mem[64] + 36] = address(_5474)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4665), address(_5474)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6114 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6114 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6114 + 36] = 0
                                    mem[_6114 + 68] = ext_call.return_data[0]
                                    mem[_6114 + 100] = address(ext_call.return_data[0])
                                    mem[_6114 + 132] = 128
                                    mem[_6114 + 164] = mem[_6114]
                                    s = 0
                                    while s < mem[_6114]:
                                        mem[_6114 + s + 196] = mem[_6114 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6114] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6114 + 164 len mem[_6114] + 32]
                                    else:
                                        mem[floor32(mem[_6114]) + _6114 + 196] = mem[floor32(mem[_6114]) + _6114 + -(mem[_6114] % 32) + 228 len mem[_6114] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6114], mem[_6114 + 196 len floor32(mem[_6114]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5659 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5659 + 36] = ext_call.return_data[0]
                                    mem[_5659 + 68] = 0
                                    mem[_5659 + 100] = this.address
                                    mem[_5659 + 132] = 128
                                    mem[_5659 + 164] = mem[_5659]
                                    s = 0
                                    while s < mem[_5659]:
                                        mem[_5659 + s + 196] = mem[_5659 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5659] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5659 + 164 len mem[_5659] + 32]
                                    else:
                                        mem[floor32(mem[_5659]) + _5659 + 196] = mem[floor32(mem[_5659]) + _5659 + -(mem[_5659] % 32) + 228 len mem[_5659] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5659], mem[_5659 + 196 len floor32(mem[_5659]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5477 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4665)
                                    mem[mem[64] + 36] = address(_5477)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4665), address(_5477)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6117 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6117 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6117 + 36] = ext_call.return_data[0]
                                    mem[_6117 + 68] = 0
                                    mem[_6117 + 100] = address(ext_call.return_data[0])
                                    mem[_6117 + 132] = 128
                                    mem[_6117 + 164] = mem[_6117]
                                    s = 0
                                    while s < mem[_6117]:
                                        mem[_6117 + s + 196] = mem[_6117 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6117] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6117 + 164 len mem[_6117] + 32]
                                    else:
                                        mem[floor32(mem[_6117]) + _6117 + 196] = mem[floor32(mem[_6117]) + _6117 + -(mem[_6117] % 32) + 228 len mem[_6117] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6117], mem[_6117 + 196 len floor32(mem[_6117]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4632) == address(_4665):
                                if idx >= mem[96] - 2:
                                    _5660 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5660 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5660 + 36] = 0
                                    mem[_5660 + 68] = ext_call.return_data[0]
                                    mem[_5660 + 100] = this.address
                                    mem[_5660 + 132] = 128
                                    mem[_5660 + 164] = mem[_5660]
                                    s = 0
                                    while s < mem[_5660]:
                                        mem[_5660 + s + 196] = mem[_5660 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5660] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5660 + 164 len mem[_5660] + 32]
                                    else:
                                        mem[floor32(mem[_5660]) + _5660 + 196] = mem[floor32(mem[_5660]) + _5660 + -(mem[_5660] % 32) + 228 len mem[_5660] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5660], mem[_5660 + 196 len floor32(mem[_5660]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5480 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4665)
                                    mem[mem[64] + 36] = address(_5480)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4665), address(_5480)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6120 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6120 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6120 + 36] = 0
                                    mem[_6120 + 68] = ext_call.return_data[0]
                                    mem[_6120 + 100] = address(ext_call.return_data[0])
                                    mem[_6120 + 132] = 128
                                    mem[_6120 + 164] = mem[_6120]
                                    s = 0
                                    while s < mem[_6120]:
                                        mem[_6120 + s + 196] = mem[_6120 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6120] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6120 + 164 len mem[_6120] + 32]
                                    else:
                                        mem[floor32(mem[_6120]) + _6120 + 196] = mem[floor32(mem[_6120]) + _6120 + -(mem[_6120] % 32) + 228 len mem[_6120] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6120], mem[_6120 + 196 len floor32(mem[_6120]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5661 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5661 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5661 + 36] = ext_call.return_data[0]
                                    mem[_5661 + 68] = 0
                                    mem[_5661 + 100] = this.address
                                    mem[_5661 + 132] = 128
                                    mem[_5661 + 164] = mem[_5661]
                                    s = 0
                                    while s < mem[_5661]:
                                        mem[_5661 + s + 196] = mem[_5661 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5661] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5661 + 164 len mem[_5661] + 32]
                                    else:
                                        mem[floor32(mem[_5661]) + _5661 + 196] = mem[floor32(mem[_5661]) + _5661 + -(mem[_5661] % 32) + 228 len mem[_5661] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5661], mem[_5661 + 196 len floor32(mem[_5661]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5483 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4665)
                                    mem[mem[64] + 36] = address(_5483)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4665), address(_5483)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6123 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6123 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6123 + 36] = ext_call.return_data[0]
                                    mem[_6123 + 68] = 0
                                    mem[_6123 + 100] = address(ext_call.return_data[0])
                                    mem[_6123 + 132] = 128
                                    mem[_6123 + 164] = mem[_6123]
                                    s = 0
                                    while s < mem[_6123]:
                                        mem[_6123 + s + 196] = mem[_6123 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6123] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6123 + 164 len mem[_6123] + 32]
                                    else:
                                        mem[floor32(mem[_6123]) + _6123 + 196] = mem[floor32(mem[_6123]) + _6123 + -(mem[_6123] % 32) + 228 len mem[_6123] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6123], mem[_6123 + 196 len floor32(mem[_6123]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg1.length >= 32
                if not mem[128]:
                    revert with 0, 'T'
                require arg1.length - 1 < arg1.length
                _2395 = mem[(32 * arg1.length - 1) + 128]
                mem[(32 * arg1.length) + 232] = this.address
                require ext_code.size(address(_2395))
                staticcall address(_2395).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _4636 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _4669 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4669)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4636))
                        staticcall address(_4636).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4636) == address(_4636):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4636) == address(_4636):
                                if idx >= mem[96] - 2:
                                    _5662 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5662 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5662 + 36] = 0
                                    mem[_5662 + 68] = ext_call.return_data[0]
                                    mem[_5662 + 100] = this.address
                                    mem[_5662 + 132] = 128
                                    mem[_5662 + 164] = mem[_5662]
                                    s = 0
                                    while s < mem[_5662]:
                                        mem[_5662 + s + 196] = mem[_5662 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5662] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5662 + 164 len mem[_5662] + 32]
                                    else:
                                        mem[floor32(mem[_5662]) + _5662 + 196] = mem[floor32(mem[_5662]) + _5662 + -(mem[_5662] % 32) + 228 len mem[_5662] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5662], mem[_5662 + 196 len floor32(mem[_5662]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5486 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4669)
                                    mem[mem[64] + 36] = address(_5486)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4669), address(_5486)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6126 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6126 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6126 + 36] = 0
                                    mem[_6126 + 68] = ext_call.return_data[0]
                                    mem[_6126 + 100] = address(ext_call.return_data[0])
                                    mem[_6126 + 132] = 128
                                    mem[_6126 + 164] = mem[_6126]
                                    s = 0
                                    while s < mem[_6126]:
                                        mem[_6126 + s + 196] = mem[_6126 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6126] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6126 + 164 len mem[_6126] + 32]
                                    else:
                                        mem[floor32(mem[_6126]) + _6126 + 196] = mem[floor32(mem[_6126]) + _6126 + -(mem[_6126] % 32) + 228 len mem[_6126] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6126], mem[_6126 + 196 len floor32(mem[_6126]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5663 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5663 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5663 + 36] = ext_call.return_data[0]
                                    mem[_5663 + 68] = 0
                                    mem[_5663 + 100] = this.address
                                    mem[_5663 + 132] = 128
                                    mem[_5663 + 164] = mem[_5663]
                                    s = 0
                                    while s < mem[_5663]:
                                        mem[_5663 + s + 196] = mem[_5663 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5663] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5663 + 164 len mem[_5663] + 32]
                                    else:
                                        mem[floor32(mem[_5663]) + _5663 + 196] = mem[floor32(mem[_5663]) + _5663 + -(mem[_5663] % 32) + 228 len mem[_5663] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5663], mem[_5663 + 196 len floor32(mem[_5663]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5489 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4669)
                                    mem[mem[64] + 36] = address(_5489)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4669), address(_5489)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6129 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6129 + 36] = ext_call.return_data[0]
                                    mem[_6129 + 68] = 0
                                    mem[_6129 + 100] = address(ext_call.return_data[0])
                                    mem[_6129 + 132] = 128
                                    mem[_6129 + 164] = mem[_6129]
                                    s = 0
                                    while s < mem[_6129]:
                                        mem[_6129 + s + 196] = mem[_6129 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6129] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6129 + 164 len mem[_6129] + 32]
                                    else:
                                        mem[floor32(mem[_6129]) + _6129 + 196] = mem[floor32(mem[_6129]) + _6129 + -(mem[_6129] % 32) + 228 len mem[_6129] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6129], mem[_6129 + 196 len floor32(mem[_6129]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4636) == address(_4636):
                                if idx >= mem[96] - 2:
                                    _5664 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5664 + 36] = 0
                                    mem[_5664 + 68] = ext_call.return_data[0]
                                    mem[_5664 + 100] = this.address
                                    mem[_5664 + 132] = 128
                                    mem[_5664 + 164] = mem[_5664]
                                    s = 0
                                    while s < mem[_5664]:
                                        mem[_5664 + s + 196] = mem[_5664 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5664] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5664 + 164 len mem[_5664] + 32]
                                    else:
                                        mem[floor32(mem[_5664]) + _5664 + 196] = mem[floor32(mem[_5664]) + _5664 + -(mem[_5664] % 32) + 228 len mem[_5664] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5664], mem[_5664 + 196 len floor32(mem[_5664]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5492 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4669)
                                    mem[mem[64] + 36] = address(_5492)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4669), address(_5492)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6132 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6132 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6132 + 36] = 0
                                    mem[_6132 + 68] = ext_call.return_data[0]
                                    mem[_6132 + 100] = address(ext_call.return_data[0])
                                    mem[_6132 + 132] = 128
                                    mem[_6132 + 164] = mem[_6132]
                                    s = 0
                                    while s < mem[_6132]:
                                        mem[_6132 + s + 196] = mem[_6132 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6132] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6132 + 164 len mem[_6132] + 32]
                                    else:
                                        mem[floor32(mem[_6132]) + _6132 + 196] = mem[floor32(mem[_6132]) + _6132 + -(mem[_6132] % 32) + 228 len mem[_6132] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6132], mem[_6132 + 196 len floor32(mem[_6132]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5665 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5665 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5665 + 36] = ext_call.return_data[0]
                                    mem[_5665 + 68] = 0
                                    mem[_5665 + 100] = this.address
                                    mem[_5665 + 132] = 128
                                    mem[_5665 + 164] = mem[_5665]
                                    s = 0
                                    while s < mem[_5665]:
                                        mem[_5665 + s + 196] = mem[_5665 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5665] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5665 + 164 len mem[_5665] + 32]
                                    else:
                                        mem[floor32(mem[_5665]) + _5665 + 196] = mem[floor32(mem[_5665]) + _5665 + -(mem[_5665] % 32) + 228 len mem[_5665] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5665], mem[_5665 + 196 len floor32(mem[_5665]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5495 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4669)
                                    mem[mem[64] + 36] = address(_5495)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4669), address(_5495)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6135 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6135 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6135 + 36] = ext_call.return_data[0]
                                    mem[_6135 + 68] = 0
                                    mem[_6135 + 100] = address(ext_call.return_data[0])
                                    mem[_6135 + 132] = 128
                                    mem[_6135 + 164] = mem[_6135]
                                    s = 0
                                    while s < mem[_6135]:
                                        mem[_6135 + s + 196] = mem[_6135 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6135] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6135 + 164 len mem[_6135] + 32]
                                    else:
                                        mem[floor32(mem[_6135]) + _6135 + 196] = mem[floor32(mem[_6135]) + _6135 + -(mem[_6135] % 32) + 228 len mem[_6135] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6135], mem[_6135 + 196 len floor32(mem[_6135]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4669)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4636))
                        staticcall address(_4636).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4636) == address(_4669):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4636) == address(_4669):
                                if idx >= mem[96] - 2:
                                    _5666 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5666 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5666 + 36] = 0
                                    mem[_5666 + 68] = ext_call.return_data[0]
                                    mem[_5666 + 100] = this.address
                                    mem[_5666 + 132] = 128
                                    mem[_5666 + 164] = mem[_5666]
                                    s = 0
                                    while s < mem[_5666]:
                                        mem[_5666 + s + 196] = mem[_5666 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5666] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5666 + 164 len mem[_5666] + 32]
                                    else:
                                        mem[floor32(mem[_5666]) + _5666 + 196] = mem[floor32(mem[_5666]) + _5666 + -(mem[_5666] % 32) + 228 len mem[_5666] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5666], mem[_5666 + 196 len floor32(mem[_5666]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5498 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4669)
                                    mem[mem[64] + 36] = address(_5498)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4669), address(_5498)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6138 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6138 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6138 + 36] = 0
                                    mem[_6138 + 68] = ext_call.return_data[0]
                                    mem[_6138 + 100] = address(ext_call.return_data[0])
                                    mem[_6138 + 132] = 128
                                    mem[_6138 + 164] = mem[_6138]
                                    s = 0
                                    while s < mem[_6138]:
                                        mem[_6138 + s + 196] = mem[_6138 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6138] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6138 + 164 len mem[_6138] + 32]
                                    else:
                                        mem[floor32(mem[_6138]) + _6138 + 196] = mem[floor32(mem[_6138]) + _6138 + -(mem[_6138] % 32) + 228 len mem[_6138] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6138], mem[_6138 + 196 len floor32(mem[_6138]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5667 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5667 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5667 + 36] = ext_call.return_data[0]
                                    mem[_5667 + 68] = 0
                                    mem[_5667 + 100] = this.address
                                    mem[_5667 + 132] = 128
                                    mem[_5667 + 164] = mem[_5667]
                                    s = 0
                                    while s < mem[_5667]:
                                        mem[_5667 + s + 196] = mem[_5667 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5667] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5667 + 164 len mem[_5667] + 32]
                                    else:
                                        mem[floor32(mem[_5667]) + _5667 + 196] = mem[floor32(mem[_5667]) + _5667 + -(mem[_5667] % 32) + 228 len mem[_5667] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5667], mem[_5667 + 196 len floor32(mem[_5667]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5501 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4669)
                                    mem[mem[64] + 36] = address(_5501)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4669), address(_5501)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6141 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6141 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6141 + 36] = ext_call.return_data[0]
                                    mem[_6141 + 68] = 0
                                    mem[_6141 + 100] = address(ext_call.return_data[0])
                                    mem[_6141 + 132] = 128
                                    mem[_6141 + 164] = mem[_6141]
                                    s = 0
                                    while s < mem[_6141]:
                                        mem[_6141 + s + 196] = mem[_6141 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6141] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6141 + 164 len mem[_6141] + 32]
                                    else:
                                        mem[floor32(mem[_6141]) + _6141 + 196] = mem[floor32(mem[_6141]) + _6141 + -(mem[_6141] % 32) + 228 len mem[_6141] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6141], mem[_6141 + 196 len floor32(mem[_6141]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4636) == address(_4669):
                                if idx >= mem[96] - 2:
                                    _5668 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5668 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5668 + 36] = 0
                                    mem[_5668 + 68] = ext_call.return_data[0]
                                    mem[_5668 + 100] = this.address
                                    mem[_5668 + 132] = 128
                                    mem[_5668 + 164] = mem[_5668]
                                    s = 0
                                    while s < mem[_5668]:
                                        mem[_5668 + s + 196] = mem[_5668 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5668] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5668 + 164 len mem[_5668] + 32]
                                    else:
                                        mem[floor32(mem[_5668]) + _5668 + 196] = mem[floor32(mem[_5668]) + _5668 + -(mem[_5668] % 32) + 228 len mem[_5668] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5668], mem[_5668 + 196 len floor32(mem[_5668]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5504 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4669)
                                    mem[mem[64] + 36] = address(_5504)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4669), address(_5504)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6144 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6144 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6144 + 36] = 0
                                    mem[_6144 + 68] = ext_call.return_data[0]
                                    mem[_6144 + 100] = address(ext_call.return_data[0])
                                    mem[_6144 + 132] = 128
                                    mem[_6144 + 164] = mem[_6144]
                                    s = 0
                                    while s < mem[_6144]:
                                        mem[_6144 + s + 196] = mem[_6144 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6144] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6144 + 164 len mem[_6144] + 32]
                                    else:
                                        mem[floor32(mem[_6144]) + _6144 + 196] = mem[floor32(mem[_6144]) + _6144 + -(mem[_6144] % 32) + 228 len mem[_6144] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6144], mem[_6144 + 196 len floor32(mem[_6144]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5669 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5669 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5669 + 36] = ext_call.return_data[0]
                                    mem[_5669 + 68] = 0
                                    mem[_5669 + 100] = this.address
                                    mem[_5669 + 132] = 128
                                    mem[_5669 + 164] = mem[_5669]
                                    s = 0
                                    while s < mem[_5669]:
                                        mem[_5669 + s + 196] = mem[_5669 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5669] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5669 + 164 len mem[_5669] + 32]
                                    else:
                                        mem[floor32(mem[_5669]) + _5669 + 196] = mem[floor32(mem[_5669]) + _5669 + -(mem[_5669] % 32) + 228 len mem[_5669] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5669], mem[_5669 + 196 len floor32(mem[_5669]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5507 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4669)
                                    mem[mem[64] + 36] = address(_5507)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4669), address(_5507)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6147 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6147 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6147 + 36] = ext_call.return_data[0]
                                    mem[_6147 + 68] = 0
                                    mem[_6147 + 100] = address(ext_call.return_data[0])
                                    mem[_6147 + 132] = 128
                                    mem[_6147 + 164] = mem[_6147]
                                    s = 0
                                    while s < mem[_6147]:
                                        mem[_6147 + s + 196] = mem[_6147 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6147] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6147 + 164 len mem[_6147] + 32]
                                    else:
                                        mem[floor32(mem[_6147]) + _6147 + 196] = mem[floor32(mem[_6147]) + _6147 + -(mem[_6147] % 32) + 228 len mem[_6147] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6147], mem[_6147 + 196 len floor32(mem[_6147]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 229
            mem[(32 * arg1.length) + 228] = return_data.size
            mem[(32 * arg1.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'T'
            if not return_data.size:
                require arg1.length - 1 < arg1.length
                _2369 = mem[(32 * arg1.length - 1) + 128]
                mem[(32 * arg1.length) + ceil32(return_data.size) + 233] = this.address
                require ext_code.size(address(_2369))
                staticcall address(_2369).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _4640 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _4673 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4673)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4640))
                        staticcall address(_4640).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4640) == address(_4640):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4640) == address(_4640):
                                if idx >= mem[96] - 2:
                                    _5670 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5670 + 36] = 0
                                    mem[_5670 + 68] = ext_call.return_data[0]
                                    mem[_5670 + 100] = this.address
                                    mem[_5670 + 132] = 128
                                    mem[_5670 + 164] = mem[_5670]
                                    s = 0
                                    while s < mem[_5670]:
                                        mem[_5670 + s + 196] = mem[_5670 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5670] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5670 + 164 len mem[_5670] + 32]
                                    else:
                                        mem[floor32(mem[_5670]) + _5670 + 196] = mem[floor32(mem[_5670]) + _5670 + -(mem[_5670] % 32) + 228 len mem[_5670] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5670], mem[_5670 + 196 len floor32(mem[_5670]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5510 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4673)
                                    mem[mem[64] + 36] = address(_5510)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4673), address(_5510)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6150 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6150 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6150 + 36] = 0
                                    mem[_6150 + 68] = ext_call.return_data[0]
                                    mem[_6150 + 100] = address(ext_call.return_data[0])
                                    mem[_6150 + 132] = 128
                                    mem[_6150 + 164] = mem[_6150]
                                    s = 0
                                    while s < mem[_6150]:
                                        mem[_6150 + s + 196] = mem[_6150 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6150] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6150 + 164 len mem[_6150] + 32]
                                    else:
                                        mem[floor32(mem[_6150]) + _6150 + 196] = mem[floor32(mem[_6150]) + _6150 + -(mem[_6150] % 32) + 228 len mem[_6150] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6150], mem[_6150 + 196 len floor32(mem[_6150]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5671 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5671 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5671 + 36] = ext_call.return_data[0]
                                    mem[_5671 + 68] = 0
                                    mem[_5671 + 100] = this.address
                                    mem[_5671 + 132] = 128
                                    mem[_5671 + 164] = mem[_5671]
                                    s = 0
                                    while s < mem[_5671]:
                                        mem[_5671 + s + 196] = mem[_5671 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5671] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5671 + 164 len mem[_5671] + 32]
                                    else:
                                        mem[floor32(mem[_5671]) + _5671 + 196] = mem[floor32(mem[_5671]) + _5671 + -(mem[_5671] % 32) + 228 len mem[_5671] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5671], mem[_5671 + 196 len floor32(mem[_5671]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5513 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4673)
                                    mem[mem[64] + 36] = address(_5513)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4673), address(_5513)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6153 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6153 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6153 + 36] = ext_call.return_data[0]
                                    mem[_6153 + 68] = 0
                                    mem[_6153 + 100] = address(ext_call.return_data[0])
                                    mem[_6153 + 132] = 128
                                    mem[_6153 + 164] = mem[_6153]
                                    s = 0
                                    while s < mem[_6153]:
                                        mem[_6153 + s + 196] = mem[_6153 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6153] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6153 + 164 len mem[_6153] + 32]
                                    else:
                                        mem[floor32(mem[_6153]) + _6153 + 196] = mem[floor32(mem[_6153]) + _6153 + -(mem[_6153] % 32) + 228 len mem[_6153] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6153], mem[_6153 + 196 len floor32(mem[_6153]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4640) == address(_4640):
                                if idx >= mem[96] - 2:
                                    _5672 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5672 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5672 + 36] = 0
                                    mem[_5672 + 68] = ext_call.return_data[0]
                                    mem[_5672 + 100] = this.address
                                    mem[_5672 + 132] = 128
                                    mem[_5672 + 164] = mem[_5672]
                                    s = 0
                                    while s < mem[_5672]:
                                        mem[_5672 + s + 196] = mem[_5672 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5672] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5672 + 164 len mem[_5672] + 32]
                                    else:
                                        mem[floor32(mem[_5672]) + _5672 + 196] = mem[floor32(mem[_5672]) + _5672 + -(mem[_5672] % 32) + 228 len mem[_5672] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5672], mem[_5672 + 196 len floor32(mem[_5672]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5516 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4673)
                                    mem[mem[64] + 36] = address(_5516)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4673), address(_5516)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6156 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6156 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6156 + 36] = 0
                                    mem[_6156 + 68] = ext_call.return_data[0]
                                    mem[_6156 + 100] = address(ext_call.return_data[0])
                                    mem[_6156 + 132] = 128
                                    mem[_6156 + 164] = mem[_6156]
                                    s = 0
                                    while s < mem[_6156]:
                                        mem[_6156 + s + 196] = mem[_6156 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6156] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6156 + 164 len mem[_6156] + 32]
                                    else:
                                        mem[floor32(mem[_6156]) + _6156 + 196] = mem[floor32(mem[_6156]) + _6156 + -(mem[_6156] % 32) + 228 len mem[_6156] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6156], mem[_6156 + 196 len floor32(mem[_6156]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5673 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5673 + 36] = ext_call.return_data[0]
                                    mem[_5673 + 68] = 0
                                    mem[_5673 + 100] = this.address
                                    mem[_5673 + 132] = 128
                                    mem[_5673 + 164] = mem[_5673]
                                    s = 0
                                    while s < mem[_5673]:
                                        mem[_5673 + s + 196] = mem[_5673 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5673] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5673 + 164 len mem[_5673] + 32]
                                    else:
                                        mem[floor32(mem[_5673]) + _5673 + 196] = mem[floor32(mem[_5673]) + _5673 + -(mem[_5673] % 32) + 228 len mem[_5673] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5673], mem[_5673 + 196 len floor32(mem[_5673]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5519 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4673)
                                    mem[mem[64] + 36] = address(_5519)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4673), address(_5519)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6159 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6159 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6159 + 36] = ext_call.return_data[0]
                                    mem[_6159 + 68] = 0
                                    mem[_6159 + 100] = address(ext_call.return_data[0])
                                    mem[_6159 + 132] = 128
                                    mem[_6159 + 164] = mem[_6159]
                                    s = 0
                                    while s < mem[_6159]:
                                        mem[_6159 + s + 196] = mem[_6159 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6159] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6159 + 164 len mem[_6159] + 32]
                                    else:
                                        mem[floor32(mem[_6159]) + _6159 + 196] = mem[floor32(mem[_6159]) + _6159 + -(mem[_6159] % 32) + 228 len mem[_6159] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6159], mem[_6159 + 196 len floor32(mem[_6159]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4673)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4640))
                        staticcall address(_4640).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4640) == address(_4673):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4640) == address(_4673):
                                if idx >= mem[96] - 2:
                                    _5674 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5674 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5674 + 36] = 0
                                    mem[_5674 + 68] = ext_call.return_data[0]
                                    mem[_5674 + 100] = this.address
                                    mem[_5674 + 132] = 128
                                    mem[_5674 + 164] = mem[_5674]
                                    s = 0
                                    while s < mem[_5674]:
                                        mem[_5674 + s + 196] = mem[_5674 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5674] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5674 + 164 len mem[_5674] + 32]
                                    else:
                                        mem[floor32(mem[_5674]) + _5674 + 196] = mem[floor32(mem[_5674]) + _5674 + -(mem[_5674] % 32) + 228 len mem[_5674] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5674], mem[_5674 + 196 len floor32(mem[_5674]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5522 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4673)
                                    mem[mem[64] + 36] = address(_5522)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4673), address(_5522)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6162 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6162 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6162 + 36] = 0
                                    mem[_6162 + 68] = ext_call.return_data[0]
                                    mem[_6162 + 100] = address(ext_call.return_data[0])
                                    mem[_6162 + 132] = 128
                                    mem[_6162 + 164] = mem[_6162]
                                    s = 0
                                    while s < mem[_6162]:
                                        mem[_6162 + s + 196] = mem[_6162 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6162] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6162 + 164 len mem[_6162] + 32]
                                    else:
                                        mem[floor32(mem[_6162]) + _6162 + 196] = mem[floor32(mem[_6162]) + _6162 + -(mem[_6162] % 32) + 228 len mem[_6162] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6162], mem[_6162 + 196 len floor32(mem[_6162]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5675 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5675 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5675 + 36] = ext_call.return_data[0]
                                    mem[_5675 + 68] = 0
                                    mem[_5675 + 100] = this.address
                                    mem[_5675 + 132] = 128
                                    mem[_5675 + 164] = mem[_5675]
                                    s = 0
                                    while s < mem[_5675]:
                                        mem[_5675 + s + 196] = mem[_5675 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5675] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5675 + 164 len mem[_5675] + 32]
                                    else:
                                        mem[floor32(mem[_5675]) + _5675 + 196] = mem[floor32(mem[_5675]) + _5675 + -(mem[_5675] % 32) + 228 len mem[_5675] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5675], mem[_5675 + 196 len floor32(mem[_5675]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5525 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4673)
                                    mem[mem[64] + 36] = address(_5525)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4673), address(_5525)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6165 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6165 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6165 + 36] = ext_call.return_data[0]
                                    mem[_6165 + 68] = 0
                                    mem[_6165 + 100] = address(ext_call.return_data[0])
                                    mem[_6165 + 132] = 128
                                    mem[_6165 + 164] = mem[_6165]
                                    s = 0
                                    while s < mem[_6165]:
                                        mem[_6165 + s + 196] = mem[_6165 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6165] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6165 + 164 len mem[_6165] + 32]
                                    else:
                                        mem[floor32(mem[_6165]) + _6165 + 196] = mem[floor32(mem[_6165]) + _6165 + -(mem[_6165] % 32) + 228 len mem[_6165] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6165], mem[_6165 + 196 len floor32(mem[_6165]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4640) == address(_4673):
                                if idx >= mem[96] - 2:
                                    _5676 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5676 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5676 + 36] = 0
                                    mem[_5676 + 68] = ext_call.return_data[0]
                                    mem[_5676 + 100] = this.address
                                    mem[_5676 + 132] = 128
                                    mem[_5676 + 164] = mem[_5676]
                                    s = 0
                                    while s < mem[_5676]:
                                        mem[_5676 + s + 196] = mem[_5676 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5676] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5676 + 164 len mem[_5676] + 32]
                                    else:
                                        mem[floor32(mem[_5676]) + _5676 + 196] = mem[floor32(mem[_5676]) + _5676 + -(mem[_5676] % 32) + 228 len mem[_5676] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5676], mem[_5676 + 196 len floor32(mem[_5676]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5528 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4673)
                                    mem[mem[64] + 36] = address(_5528)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4673), address(_5528)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6168 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6168 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6168 + 36] = 0
                                    mem[_6168 + 68] = ext_call.return_data[0]
                                    mem[_6168 + 100] = address(ext_call.return_data[0])
                                    mem[_6168 + 132] = 128
                                    mem[_6168 + 164] = mem[_6168]
                                    s = 0
                                    while s < mem[_6168]:
                                        mem[_6168 + s + 196] = mem[_6168 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6168] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6168 + 164 len mem[_6168] + 32]
                                    else:
                                        mem[floor32(mem[_6168]) + _6168 + 196] = mem[floor32(mem[_6168]) + _6168 + -(mem[_6168] % 32) + 228 len mem[_6168] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6168], mem[_6168 + 196 len floor32(mem[_6168]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5677 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5677 + 36] = ext_call.return_data[0]
                                    mem[_5677 + 68] = 0
                                    mem[_5677 + 100] = this.address
                                    mem[_5677 + 132] = 128
                                    mem[_5677 + 164] = mem[_5677]
                                    s = 0
                                    while s < mem[_5677]:
                                        mem[_5677 + s + 196] = mem[_5677 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5677] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5677 + 164 len mem[_5677] + 32]
                                    else:
                                        mem[floor32(mem[_5677]) + _5677 + 196] = mem[floor32(mem[_5677]) + _5677 + -(mem[_5677] % 32) + 228 len mem[_5677] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5677], mem[_5677 + 196 len floor32(mem[_5677]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5531 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4673)
                                    mem[mem[64] + 36] = address(_5531)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4673), address(_5531)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6171 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6171 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6171 + 36] = ext_call.return_data[0]
                                    mem[_6171 + 68] = 0
                                    mem[_6171 + 100] = address(ext_call.return_data[0])
                                    mem[_6171 + 132] = 128
                                    mem[_6171 + 164] = mem[_6171]
                                    s = 0
                                    while s < mem[_6171]:
                                        mem[_6171 + s + 196] = mem[_6171 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6171] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6171 + 164 len mem[_6171] + 32]
                                    else:
                                        mem[floor32(mem[_6171]) + _6171 + 196] = mem[floor32(mem[_6171]) + _6171 + -(mem[_6171] % 32) + 228 len mem[_6171] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6171], mem[_6171 + 196 len floor32(mem[_6171]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(32 * arg1.length) + 260]:
                    revert with 0, 'T'
                require arg1.length - 1 < arg1.length
                _2399 = mem[(32 * arg1.length - 1) + 128]
                mem[(32 * arg1.length) + ceil32(return_data.size) + 233] = this.address
                require ext_code.size(address(_2399))
                staticcall address(_2399).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _4644 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _4677 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4677)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4644))
                        staticcall address(_4644).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4644) == address(_4644):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4644) == address(_4644):
                                if idx >= mem[96] - 2:
                                    _5678 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5678 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5678 + 36] = 0
                                    mem[_5678 + 68] = ext_call.return_data[0]
                                    mem[_5678 + 100] = this.address
                                    mem[_5678 + 132] = 128
                                    mem[_5678 + 164] = mem[_5678]
                                    s = 0
                                    while s < mem[_5678]:
                                        mem[_5678 + s + 196] = mem[_5678 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5678] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5678 + 164 len mem[_5678] + 32]
                                    else:
                                        mem[floor32(mem[_5678]) + _5678 + 196] = mem[floor32(mem[_5678]) + _5678 + -(mem[_5678] % 32) + 228 len mem[_5678] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5678], mem[_5678 + 196 len floor32(mem[_5678]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5534 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4677)
                                    mem[mem[64] + 36] = address(_5534)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4677), address(_5534)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6174 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6174 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6174 + 36] = 0
                                    mem[_6174 + 68] = ext_call.return_data[0]
                                    mem[_6174 + 100] = address(ext_call.return_data[0])
                                    mem[_6174 + 132] = 128
                                    mem[_6174 + 164] = mem[_6174]
                                    s = 0
                                    while s < mem[_6174]:
                                        mem[_6174 + s + 196] = mem[_6174 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6174] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6174 + 164 len mem[_6174] + 32]
                                    else:
                                        mem[floor32(mem[_6174]) + _6174 + 196] = mem[floor32(mem[_6174]) + _6174 + -(mem[_6174] % 32) + 228 len mem[_6174] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6174], mem[_6174 + 196 len floor32(mem[_6174]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5679 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5679 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5679 + 36] = ext_call.return_data[0]
                                    mem[_5679 + 68] = 0
                                    mem[_5679 + 100] = this.address
                                    mem[_5679 + 132] = 128
                                    mem[_5679 + 164] = mem[_5679]
                                    s = 0
                                    while s < mem[_5679]:
                                        mem[_5679 + s + 196] = mem[_5679 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5679] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5679 + 164 len mem[_5679] + 32]
                                    else:
                                        mem[floor32(mem[_5679]) + _5679 + 196] = mem[floor32(mem[_5679]) + _5679 + -(mem[_5679] % 32) + 228 len mem[_5679] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5679], mem[_5679 + 196 len floor32(mem[_5679]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5537 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4677)
                                    mem[mem[64] + 36] = address(_5537)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4677), address(_5537)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6177 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6177 + 36] = ext_call.return_data[0]
                                    mem[_6177 + 68] = 0
                                    mem[_6177 + 100] = address(ext_call.return_data[0])
                                    mem[_6177 + 132] = 128
                                    mem[_6177 + 164] = mem[_6177]
                                    s = 0
                                    while s < mem[_6177]:
                                        mem[_6177 + s + 196] = mem[_6177 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6177] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6177 + 164 len mem[_6177] + 32]
                                    else:
                                        mem[floor32(mem[_6177]) + _6177 + 196] = mem[floor32(mem[_6177]) + _6177 + -(mem[_6177] % 32) + 228 len mem[_6177] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6177], mem[_6177 + 196 len floor32(mem[_6177]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4644) == address(_4644):
                                if idx >= mem[96] - 2:
                                    _5680 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5680 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5680 + 36] = 0
                                    mem[_5680 + 68] = ext_call.return_data[0]
                                    mem[_5680 + 100] = this.address
                                    mem[_5680 + 132] = 128
                                    mem[_5680 + 164] = mem[_5680]
                                    s = 0
                                    while s < mem[_5680]:
                                        mem[_5680 + s + 196] = mem[_5680 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5680] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5680 + 164 len mem[_5680] + 32]
                                    else:
                                        mem[floor32(mem[_5680]) + _5680 + 196] = mem[floor32(mem[_5680]) + _5680 + -(mem[_5680] % 32) + 228 len mem[_5680] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5680], mem[_5680 + 196 len floor32(mem[_5680]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5540 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4677)
                                    mem[mem[64] + 36] = address(_5540)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4677), address(_5540)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6180 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6180 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6180 + 36] = 0
                                    mem[_6180 + 68] = ext_call.return_data[0]
                                    mem[_6180 + 100] = address(ext_call.return_data[0])
                                    mem[_6180 + 132] = 128
                                    mem[_6180 + 164] = mem[_6180]
                                    s = 0
                                    while s < mem[_6180]:
                                        mem[_6180 + s + 196] = mem[_6180 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6180] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6180 + 164 len mem[_6180] + 32]
                                    else:
                                        mem[floor32(mem[_6180]) + _6180 + 196] = mem[floor32(mem[_6180]) + _6180 + -(mem[_6180] % 32) + 228 len mem[_6180] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6180], mem[_6180 + 196 len floor32(mem[_6180]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5681 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5681 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5681 + 36] = ext_call.return_data[0]
                                    mem[_5681 + 68] = 0
                                    mem[_5681 + 100] = this.address
                                    mem[_5681 + 132] = 128
                                    mem[_5681 + 164] = mem[_5681]
                                    s = 0
                                    while s < mem[_5681]:
                                        mem[_5681 + s + 196] = mem[_5681 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5681] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5681 + 164 len mem[_5681] + 32]
                                    else:
                                        mem[floor32(mem[_5681]) + _5681 + 196] = mem[floor32(mem[_5681]) + _5681 + -(mem[_5681] % 32) + 228 len mem[_5681] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5681], mem[_5681 + 196 len floor32(mem[_5681]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5543 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4677)
                                    mem[mem[64] + 36] = address(_5543)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4677), address(_5543)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6183 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6183 + 36] = ext_call.return_data[0]
                                    mem[_6183 + 68] = 0
                                    mem[_6183 + 100] = address(ext_call.return_data[0])
                                    mem[_6183 + 132] = 128
                                    mem[_6183 + 164] = mem[_6183]
                                    s = 0
                                    while s < mem[_6183]:
                                        mem[_6183 + s + 196] = mem[_6183 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6183] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6183 + 164 len mem[_6183] + 32]
                                    else:
                                        mem[floor32(mem[_6183]) + _6183 + 196] = mem[floor32(mem[_6183]) + _6183 + -(mem[_6183] % 32) + 228 len mem[_6183] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6183], mem[_6183 + 196 len floor32(mem[_6183]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4677)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4644))
                        staticcall address(_4644).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4644) == address(_4677):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4644) == address(_4677):
                                if idx >= mem[96] - 2:
                                    _5682 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5682 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5682 + 36] = 0
                                    mem[_5682 + 68] = ext_call.return_data[0]
                                    mem[_5682 + 100] = this.address
                                    mem[_5682 + 132] = 128
                                    mem[_5682 + 164] = mem[_5682]
                                    s = 0
                                    while s < mem[_5682]:
                                        mem[_5682 + s + 196] = mem[_5682 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5682] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5682 + 164 len mem[_5682] + 32]
                                    else:
                                        mem[floor32(mem[_5682]) + _5682 + 196] = mem[floor32(mem[_5682]) + _5682 + -(mem[_5682] % 32) + 228 len mem[_5682] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5682], mem[_5682 + 196 len floor32(mem[_5682]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5546 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4677)
                                    mem[mem[64] + 36] = address(_5546)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4677), address(_5546)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6186 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6186 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6186 + 36] = 0
                                    mem[_6186 + 68] = ext_call.return_data[0]
                                    mem[_6186 + 100] = address(ext_call.return_data[0])
                                    mem[_6186 + 132] = 128
                                    mem[_6186 + 164] = mem[_6186]
                                    s = 0
                                    while s < mem[_6186]:
                                        mem[_6186 + s + 196] = mem[_6186 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6186] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6186 + 164 len mem[_6186] + 32]
                                    else:
                                        mem[floor32(mem[_6186]) + _6186 + 196] = mem[floor32(mem[_6186]) + _6186 + -(mem[_6186] % 32) + 228 len mem[_6186] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6186], mem[_6186 + 196 len floor32(mem[_6186]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5683 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5683 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5683 + 36] = ext_call.return_data[0]
                                    mem[_5683 + 68] = 0
                                    mem[_5683 + 100] = this.address
                                    mem[_5683 + 132] = 128
                                    mem[_5683 + 164] = mem[_5683]
                                    s = 0
                                    while s < mem[_5683]:
                                        mem[_5683 + s + 196] = mem[_5683 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5683] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5683 + 164 len mem[_5683] + 32]
                                    else:
                                        mem[floor32(mem[_5683]) + _5683 + 196] = mem[floor32(mem[_5683]) + _5683 + -(mem[_5683] % 32) + 228 len mem[_5683] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5683], mem[_5683 + 196 len floor32(mem[_5683]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5549 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4677)
                                    mem[mem[64] + 36] = address(_5549)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4677), address(_5549)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6189 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6189 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6189 + 36] = ext_call.return_data[0]
                                    mem[_6189 + 68] = 0
                                    mem[_6189 + 100] = address(ext_call.return_data[0])
                                    mem[_6189 + 132] = 128
                                    mem[_6189 + 164] = mem[_6189]
                                    s = 0
                                    while s < mem[_6189]:
                                        mem[_6189 + s + 196] = mem[_6189 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6189] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6189 + 164 len mem[_6189] + 32]
                                    else:
                                        mem[floor32(mem[_6189]) + _6189 + 196] = mem[floor32(mem[_6189]) + _6189 + -(mem[_6189] % 32) + 228 len mem[_6189] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6189], mem[_6189 + 196 len floor32(mem[_6189]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4644) == address(_4677):
                                if idx >= mem[96] - 2:
                                    _5684 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5684 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5684 + 36] = 0
                                    mem[_5684 + 68] = ext_call.return_data[0]
                                    mem[_5684 + 100] = this.address
                                    mem[_5684 + 132] = 128
                                    mem[_5684 + 164] = mem[_5684]
                                    s = 0
                                    while s < mem[_5684]:
                                        mem[_5684 + s + 196] = mem[_5684 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5684] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5684 + 164 len mem[_5684] + 32]
                                    else:
                                        mem[floor32(mem[_5684]) + _5684 + 196] = mem[floor32(mem[_5684]) + _5684 + -(mem[_5684] % 32) + 228 len mem[_5684] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5684], mem[_5684 + 196 len floor32(mem[_5684]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5552 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4677)
                                    mem[mem[64] + 36] = address(_5552)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4677), address(_5552)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6192 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6192 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6192 + 36] = 0
                                    mem[_6192 + 68] = ext_call.return_data[0]
                                    mem[_6192 + 100] = address(ext_call.return_data[0])
                                    mem[_6192 + 132] = 128
                                    mem[_6192 + 164] = mem[_6192]
                                    s = 0
                                    while s < mem[_6192]:
                                        mem[_6192 + s + 196] = mem[_6192 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6192] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6192 + 164 len mem[_6192] + 32]
                                    else:
                                        mem[floor32(mem[_6192]) + _6192 + 196] = mem[floor32(mem[_6192]) + _6192 + -(mem[_6192] % 32) + 228 len mem[_6192] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6192], mem[_6192 + 196 len floor32(mem[_6192]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5685 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5685 + 36] = ext_call.return_data[0]
                                    mem[_5685 + 68] = 0
                                    mem[_5685 + 100] = this.address
                                    mem[_5685 + 132] = 128
                                    mem[_5685 + 164] = mem[_5685]
                                    s = 0
                                    while s < mem[_5685]:
                                        mem[_5685 + s + 196] = mem[_5685 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5685] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5685 + 164 len mem[_5685] + 32]
                                    else:
                                        mem[floor32(mem[_5685]) + _5685 + 196] = mem[floor32(mem[_5685]) + _5685 + -(mem[_5685] % 32) + 228 len mem[_5685] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5685], mem[_5685 + 196 len floor32(mem[_5685]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5555 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4677)
                                    mem[mem[64] + 36] = address(_5555)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4677), address(_5555)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6195 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6195 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6195 + 36] = ext_call.return_data[0]
                                    mem[_6195 + 68] = 0
                                    mem[_6195 + 100] = address(ext_call.return_data[0])
                                    mem[_6195 + 132] = 128
                                    mem[_6195 + 164] = mem[_6195]
                                    s = 0
                                    while s < mem[_6195]:
                                        mem[_6195 + s + 196] = mem[_6195 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6195] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6195 + 164 len mem[_6195] + 32]
                                    else:
                                        mem[floor32(mem[_6195]) + _6195 + 196] = mem[floor32(mem[_6195]) + _6195 + -(mem[_6195] % 32) + 228 len mem[_6195] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6195], mem[_6195 + 196 len floor32(mem[_6195]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        stor2 = arg2
        require ext_code.size(stor2)
        staticcall stor2.factory() with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
        require 0 < arg1.length
        _22 = mem[128]
        require 0 < arg1.length
        require 1 < arg1.length
        require ext_code.size(address(stor3))
        staticcall address(stor3).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(mem[128]), mem[172 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 164] = ext_call.return_data[12 len 20]
        mem[(32 * arg1.length) + 196] = arg4
        mem[(32 * arg1.length) + 128] = 68
        mem[64] = (32 * arg1.length) + 228
        mem[(32 * arg1.length) + 160 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * arg1.length) + 228 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg4) >> 32
        mem[(32 * arg1.length) + 320 len 4] = uint32(arg4)
        call address(_22).mem[(32 * arg1.length) + 192 len 4] with:
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 224, mem[(32 * arg1.length) + 292 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'T'
            if not arg1.length:
                require arg1.length - 1 < arg1.length
                _2372 = mem[(32 * arg1.length - 1) + 128]
                mem[(32 * arg1.length) + 232] = this.address
                require ext_code.size(address(_2372))
                staticcall address(_2372).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _4648 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _4681 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4681)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4648))
                        staticcall address(_4648).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4648) == address(_4648):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4648) == address(_4648):
                                if idx >= mem[96] - 2:
                                    _5686 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5686 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5686 + 36] = 0
                                    mem[_5686 + 68] = ext_call.return_data[0]
                                    mem[_5686 + 100] = this.address
                                    mem[_5686 + 132] = 128
                                    mem[_5686 + 164] = mem[_5686]
                                    s = 0
                                    while s < mem[_5686]:
                                        mem[_5686 + s + 196] = mem[_5686 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5686] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5686 + 164 len mem[_5686] + 32]
                                    else:
                                        mem[floor32(mem[_5686]) + _5686 + 196] = mem[floor32(mem[_5686]) + _5686 + -(mem[_5686] % 32) + 228 len mem[_5686] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5686], mem[_5686 + 196 len floor32(mem[_5686]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5558 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4681)
                                    mem[mem[64] + 36] = address(_5558)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4681), address(_5558)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6198 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6198 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6198 + 36] = 0
                                    mem[_6198 + 68] = ext_call.return_data[0]
                                    mem[_6198 + 100] = address(ext_call.return_data[0])
                                    mem[_6198 + 132] = 128
                                    mem[_6198 + 164] = mem[_6198]
                                    s = 0
                                    while s < mem[_6198]:
                                        mem[_6198 + s + 196] = mem[_6198 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6198] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6198 + 164 len mem[_6198] + 32]
                                    else:
                                        mem[floor32(mem[_6198]) + _6198 + 196] = mem[floor32(mem[_6198]) + _6198 + -(mem[_6198] % 32) + 228 len mem[_6198] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6198], mem[_6198 + 196 len floor32(mem[_6198]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5687 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5687 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5687 + 36] = ext_call.return_data[0]
                                    mem[_5687 + 68] = 0
                                    mem[_5687 + 100] = this.address
                                    mem[_5687 + 132] = 128
                                    mem[_5687 + 164] = mem[_5687]
                                    s = 0
                                    while s < mem[_5687]:
                                        mem[_5687 + s + 196] = mem[_5687 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5687] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5687 + 164 len mem[_5687] + 32]
                                    else:
                                        mem[floor32(mem[_5687]) + _5687 + 196] = mem[floor32(mem[_5687]) + _5687 + -(mem[_5687] % 32) + 228 len mem[_5687] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5687], mem[_5687 + 196 len floor32(mem[_5687]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5561 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4681)
                                    mem[mem[64] + 36] = address(_5561)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4681), address(_5561)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6201 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6201 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6201 + 36] = ext_call.return_data[0]
                                    mem[_6201 + 68] = 0
                                    mem[_6201 + 100] = address(ext_call.return_data[0])
                                    mem[_6201 + 132] = 128
                                    mem[_6201 + 164] = mem[_6201]
                                    s = 0
                                    while s < mem[_6201]:
                                        mem[_6201 + s + 196] = mem[_6201 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6201] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6201 + 164 len mem[_6201] + 32]
                                    else:
                                        mem[floor32(mem[_6201]) + _6201 + 196] = mem[floor32(mem[_6201]) + _6201 + -(mem[_6201] % 32) + 228 len mem[_6201] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6201], mem[_6201 + 196 len floor32(mem[_6201]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4648) == address(_4648):
                                if idx >= mem[96] - 2:
                                    _5688 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5688 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5688 + 36] = 0
                                    mem[_5688 + 68] = ext_call.return_data[0]
                                    mem[_5688 + 100] = this.address
                                    mem[_5688 + 132] = 128
                                    mem[_5688 + 164] = mem[_5688]
                                    s = 0
                                    while s < mem[_5688]:
                                        mem[_5688 + s + 196] = mem[_5688 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5688] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5688 + 164 len mem[_5688] + 32]
                                    else:
                                        mem[floor32(mem[_5688]) + _5688 + 196] = mem[floor32(mem[_5688]) + _5688 + -(mem[_5688] % 32) + 228 len mem[_5688] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5688], mem[_5688 + 196 len floor32(mem[_5688]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5564 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4681)
                                    mem[mem[64] + 36] = address(_5564)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4681), address(_5564)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6204 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6204 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6204 + 36] = 0
                                    mem[_6204 + 68] = ext_call.return_data[0]
                                    mem[_6204 + 100] = address(ext_call.return_data[0])
                                    mem[_6204 + 132] = 128
                                    mem[_6204 + 164] = mem[_6204]
                                    s = 0
                                    while s < mem[_6204]:
                                        mem[_6204 + s + 196] = mem[_6204 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6204] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6204 + 164 len mem[_6204] + 32]
                                    else:
                                        mem[floor32(mem[_6204]) + _6204 + 196] = mem[floor32(mem[_6204]) + _6204 + -(mem[_6204] % 32) + 228 len mem[_6204] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6204], mem[_6204 + 196 len floor32(mem[_6204]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5689 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5689 + 36] = ext_call.return_data[0]
                                    mem[_5689 + 68] = 0
                                    mem[_5689 + 100] = this.address
                                    mem[_5689 + 132] = 128
                                    mem[_5689 + 164] = mem[_5689]
                                    s = 0
                                    while s < mem[_5689]:
                                        mem[_5689 + s + 196] = mem[_5689 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5689] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5689 + 164 len mem[_5689] + 32]
                                    else:
                                        mem[floor32(mem[_5689]) + _5689 + 196] = mem[floor32(mem[_5689]) + _5689 + -(mem[_5689] % 32) + 228 len mem[_5689] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5689], mem[_5689 + 196 len floor32(mem[_5689]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5567 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4681)
                                    mem[mem[64] + 36] = address(_5567)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4681), address(_5567)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6207 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6207 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6207 + 36] = ext_call.return_data[0]
                                    mem[_6207 + 68] = 0
                                    mem[_6207 + 100] = address(ext_call.return_data[0])
                                    mem[_6207 + 132] = 128
                                    mem[_6207 + 164] = mem[_6207]
                                    s = 0
                                    while s < mem[_6207]:
                                        mem[_6207 + s + 196] = mem[_6207 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6207] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6207 + 164 len mem[_6207] + 32]
                                    else:
                                        mem[floor32(mem[_6207]) + _6207 + 196] = mem[floor32(mem[_6207]) + _6207 + -(mem[_6207] % 32) + 228 len mem[_6207] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6207], mem[_6207 + 196 len floor32(mem[_6207]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4681)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4648))
                        staticcall address(_4648).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4648) == address(_4681):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4648) == address(_4681):
                                if idx >= mem[96] - 2:
                                    _5690 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5690 + 36] = 0
                                    mem[_5690 + 68] = ext_call.return_data[0]
                                    mem[_5690 + 100] = this.address
                                    mem[_5690 + 132] = 128
                                    mem[_5690 + 164] = mem[_5690]
                                    s = 0
                                    while s < mem[_5690]:
                                        mem[_5690 + s + 196] = mem[_5690 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5690] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5690 + 164 len mem[_5690] + 32]
                                    else:
                                        mem[floor32(mem[_5690]) + _5690 + 196] = mem[floor32(mem[_5690]) + _5690 + -(mem[_5690] % 32) + 228 len mem[_5690] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5690], mem[_5690 + 196 len floor32(mem[_5690]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5570 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4681)
                                    mem[mem[64] + 36] = address(_5570)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4681), address(_5570)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6210 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6210 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6210 + 36] = 0
                                    mem[_6210 + 68] = ext_call.return_data[0]
                                    mem[_6210 + 100] = address(ext_call.return_data[0])
                                    mem[_6210 + 132] = 128
                                    mem[_6210 + 164] = mem[_6210]
                                    s = 0
                                    while s < mem[_6210]:
                                        mem[_6210 + s + 196] = mem[_6210 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6210] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6210 + 164 len mem[_6210] + 32]
                                    else:
                                        mem[floor32(mem[_6210]) + _6210 + 196] = mem[floor32(mem[_6210]) + _6210 + -(mem[_6210] % 32) + 228 len mem[_6210] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6210], mem[_6210 + 196 len floor32(mem[_6210]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5691 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5691 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5691 + 36] = ext_call.return_data[0]
                                    mem[_5691 + 68] = 0
                                    mem[_5691 + 100] = this.address
                                    mem[_5691 + 132] = 128
                                    mem[_5691 + 164] = mem[_5691]
                                    s = 0
                                    while s < mem[_5691]:
                                        mem[_5691 + s + 196] = mem[_5691 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5691] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5691 + 164 len mem[_5691] + 32]
                                    else:
                                        mem[floor32(mem[_5691]) + _5691 + 196] = mem[floor32(mem[_5691]) + _5691 + -(mem[_5691] % 32) + 228 len mem[_5691] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5691], mem[_5691 + 196 len floor32(mem[_5691]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5573 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4681)
                                    mem[mem[64] + 36] = address(_5573)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4681), address(_5573)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6213 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6213 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6213 + 36] = ext_call.return_data[0]
                                    mem[_6213 + 68] = 0
                                    mem[_6213 + 100] = address(ext_call.return_data[0])
                                    mem[_6213 + 132] = 128
                                    mem[_6213 + 164] = mem[_6213]
                                    s = 0
                                    while s < mem[_6213]:
                                        mem[_6213 + s + 196] = mem[_6213 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6213] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6213 + 164 len mem[_6213] + 32]
                                    else:
                                        mem[floor32(mem[_6213]) + _6213 + 196] = mem[floor32(mem[_6213]) + _6213 + -(mem[_6213] % 32) + 228 len mem[_6213] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6213], mem[_6213 + 196 len floor32(mem[_6213]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4648) == address(_4681):
                                if idx >= mem[96] - 2:
                                    _5692 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5692 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5692 + 36] = 0
                                    mem[_5692 + 68] = ext_call.return_data[0]
                                    mem[_5692 + 100] = this.address
                                    mem[_5692 + 132] = 128
                                    mem[_5692 + 164] = mem[_5692]
                                    s = 0
                                    while s < mem[_5692]:
                                        mem[_5692 + s + 196] = mem[_5692 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5692] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5692 + 164 len mem[_5692] + 32]
                                    else:
                                        mem[floor32(mem[_5692]) + _5692 + 196] = mem[floor32(mem[_5692]) + _5692 + -(mem[_5692] % 32) + 228 len mem[_5692] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5692], mem[_5692 + 196 len floor32(mem[_5692]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5576 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4681)
                                    mem[mem[64] + 36] = address(_5576)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4681), address(_5576)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6216 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6216 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6216 + 36] = 0
                                    mem[_6216 + 68] = ext_call.return_data[0]
                                    mem[_6216 + 100] = address(ext_call.return_data[0])
                                    mem[_6216 + 132] = 128
                                    mem[_6216 + 164] = mem[_6216]
                                    s = 0
                                    while s < mem[_6216]:
                                        mem[_6216 + s + 196] = mem[_6216 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6216] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6216 + 164 len mem[_6216] + 32]
                                    else:
                                        mem[floor32(mem[_6216]) + _6216 + 196] = mem[floor32(mem[_6216]) + _6216 + -(mem[_6216] % 32) + 228 len mem[_6216] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6216], mem[_6216 + 196 len floor32(mem[_6216]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5693 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5693 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5693 + 36] = ext_call.return_data[0]
                                    mem[_5693 + 68] = 0
                                    mem[_5693 + 100] = this.address
                                    mem[_5693 + 132] = 128
                                    mem[_5693 + 164] = mem[_5693]
                                    s = 0
                                    while s < mem[_5693]:
                                        mem[_5693 + s + 196] = mem[_5693 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5693] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5693 + 164 len mem[_5693] + 32]
                                    else:
                                        mem[floor32(mem[_5693]) + _5693 + 196] = mem[floor32(mem[_5693]) + _5693 + -(mem[_5693] % 32) + 228 len mem[_5693] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5693], mem[_5693 + 196 len floor32(mem[_5693]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5579 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4681)
                                    mem[mem[64] + 36] = address(_5579)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4681), address(_5579)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6219 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6219 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6219 + 36] = ext_call.return_data[0]
                                    mem[_6219 + 68] = 0
                                    mem[_6219 + 100] = address(ext_call.return_data[0])
                                    mem[_6219 + 132] = 128
                                    mem[_6219 + 164] = mem[_6219]
                                    s = 0
                                    while s < mem[_6219]:
                                        mem[_6219 + s + 196] = mem[_6219 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6219] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6219 + 164 len mem[_6219] + 32]
                                    else:
                                        mem[floor32(mem[_6219]) + _6219 + 196] = mem[floor32(mem[_6219]) + _6219 + -(mem[_6219] % 32) + 228 len mem[_6219] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6219], mem[_6219 + 196 len floor32(mem[_6219]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg1.length >= 32
                if not mem[128]:
                    revert with 0, 'T'
                require arg1.length - 1 < arg1.length
                _2403 = mem[(32 * arg1.length - 1) + 128]
                mem[(32 * arg1.length) + 232] = this.address
                require ext_code.size(address(_2403))
                staticcall address(_2403).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _4652 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _4685 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4685)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4652))
                        staticcall address(_4652).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4652) == address(_4652):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4652) == address(_4652):
                                if idx >= mem[96] - 2:
                                    _5694 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5694 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5694 + 36] = 0
                                    mem[_5694 + 68] = ext_call.return_data[0]
                                    mem[_5694 + 100] = this.address
                                    mem[_5694 + 132] = 128
                                    mem[_5694 + 164] = mem[_5694]
                                    s = 0
                                    while s < mem[_5694]:
                                        mem[_5694 + s + 196] = mem[_5694 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5694] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5694 + 164 len mem[_5694] + 32]
                                    else:
                                        mem[floor32(mem[_5694]) + _5694 + 196] = mem[floor32(mem[_5694]) + _5694 + -(mem[_5694] % 32) + 228 len mem[_5694] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5694], mem[_5694 + 196 len floor32(mem[_5694]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5582 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4685)
                                    mem[mem[64] + 36] = address(_5582)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4685), address(_5582)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6222 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6222 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6222 + 36] = 0
                                    mem[_6222 + 68] = ext_call.return_data[0]
                                    mem[_6222 + 100] = address(ext_call.return_data[0])
                                    mem[_6222 + 132] = 128
                                    mem[_6222 + 164] = mem[_6222]
                                    s = 0
                                    while s < mem[_6222]:
                                        mem[_6222 + s + 196] = mem[_6222 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6222] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6222 + 164 len mem[_6222] + 32]
                                    else:
                                        mem[floor32(mem[_6222]) + _6222 + 196] = mem[floor32(mem[_6222]) + _6222 + -(mem[_6222] % 32) + 228 len mem[_6222] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6222], mem[_6222 + 196 len floor32(mem[_6222]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5695 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5695 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5695 + 36] = ext_call.return_data[0]
                                    mem[_5695 + 68] = 0
                                    mem[_5695 + 100] = this.address
                                    mem[_5695 + 132] = 128
                                    mem[_5695 + 164] = mem[_5695]
                                    s = 0
                                    while s < mem[_5695]:
                                        mem[_5695 + s + 196] = mem[_5695 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5695] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5695 + 164 len mem[_5695] + 32]
                                    else:
                                        mem[floor32(mem[_5695]) + _5695 + 196] = mem[floor32(mem[_5695]) + _5695 + -(mem[_5695] % 32) + 228 len mem[_5695] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5695], mem[_5695 + 196 len floor32(mem[_5695]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5585 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4685)
                                    mem[mem[64] + 36] = address(_5585)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4685), address(_5585)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6225 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6225 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6225 + 36] = ext_call.return_data[0]
                                    mem[_6225 + 68] = 0
                                    mem[_6225 + 100] = address(ext_call.return_data[0])
                                    mem[_6225 + 132] = 128
                                    mem[_6225 + 164] = mem[_6225]
                                    s = 0
                                    while s < mem[_6225]:
                                        mem[_6225 + s + 196] = mem[_6225 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6225] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6225 + 164 len mem[_6225] + 32]
                                    else:
                                        mem[floor32(mem[_6225]) + _6225 + 196] = mem[floor32(mem[_6225]) + _6225 + -(mem[_6225] % 32) + 228 len mem[_6225] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6225], mem[_6225 + 196 len floor32(mem[_6225]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4652) == address(_4652):
                                if idx >= mem[96] - 2:
                                    _5696 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5696 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5696 + 36] = 0
                                    mem[_5696 + 68] = ext_call.return_data[0]
                                    mem[_5696 + 100] = this.address
                                    mem[_5696 + 132] = 128
                                    mem[_5696 + 164] = mem[_5696]
                                    s = 0
                                    while s < mem[_5696]:
                                        mem[_5696 + s + 196] = mem[_5696 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5696] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5696 + 164 len mem[_5696] + 32]
                                    else:
                                        mem[floor32(mem[_5696]) + _5696 + 196] = mem[floor32(mem[_5696]) + _5696 + -(mem[_5696] % 32) + 228 len mem[_5696] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5696], mem[_5696 + 196 len floor32(mem[_5696]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5588 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4685)
                                    mem[mem[64] + 36] = address(_5588)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4685), address(_5588)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6228 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6228 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6228 + 36] = 0
                                    mem[_6228 + 68] = ext_call.return_data[0]
                                    mem[_6228 + 100] = address(ext_call.return_data[0])
                                    mem[_6228 + 132] = 128
                                    mem[_6228 + 164] = mem[_6228]
                                    s = 0
                                    while s < mem[_6228]:
                                        mem[_6228 + s + 196] = mem[_6228 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6228] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6228 + 164 len mem[_6228] + 32]
                                    else:
                                        mem[floor32(mem[_6228]) + _6228 + 196] = mem[floor32(mem[_6228]) + _6228 + -(mem[_6228] % 32) + 228 len mem[_6228] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6228], mem[_6228 + 196 len floor32(mem[_6228]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5697 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5697 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5697 + 36] = ext_call.return_data[0]
                                    mem[_5697 + 68] = 0
                                    mem[_5697 + 100] = this.address
                                    mem[_5697 + 132] = 128
                                    mem[_5697 + 164] = mem[_5697]
                                    s = 0
                                    while s < mem[_5697]:
                                        mem[_5697 + s + 196] = mem[_5697 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5697] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5697 + 164 len mem[_5697] + 32]
                                    else:
                                        mem[floor32(mem[_5697]) + _5697 + 196] = mem[floor32(mem[_5697]) + _5697 + -(mem[_5697] % 32) + 228 len mem[_5697] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5697], mem[_5697 + 196 len floor32(mem[_5697]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5591 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4685)
                                    mem[mem[64] + 36] = address(_5591)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4685), address(_5591)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6231 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6231 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6231 + 36] = ext_call.return_data[0]
                                    mem[_6231 + 68] = 0
                                    mem[_6231 + 100] = address(ext_call.return_data[0])
                                    mem[_6231 + 132] = 128
                                    mem[_6231 + 164] = mem[_6231]
                                    s = 0
                                    while s < mem[_6231]:
                                        mem[_6231 + s + 196] = mem[_6231 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6231] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6231 + 164 len mem[_6231] + 32]
                                    else:
                                        mem[floor32(mem[_6231]) + _6231 + 196] = mem[floor32(mem[_6231]) + _6231 + -(mem[_6231] % 32) + 228 len mem[_6231] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6231], mem[_6231 + 196 len floor32(mem[_6231]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4685)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4652))
                        staticcall address(_4652).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4652) == address(_4685):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4652) == address(_4685):
                                if idx >= mem[96] - 2:
                                    _5698 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5698 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5698 + 36] = 0
                                    mem[_5698 + 68] = ext_call.return_data[0]
                                    mem[_5698 + 100] = this.address
                                    mem[_5698 + 132] = 128
                                    mem[_5698 + 164] = mem[_5698]
                                    s = 0
                                    while s < mem[_5698]:
                                        mem[_5698 + s + 196] = mem[_5698 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5698] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5698 + 164 len mem[_5698] + 32]
                                    else:
                                        mem[floor32(mem[_5698]) + _5698 + 196] = mem[floor32(mem[_5698]) + _5698 + -(mem[_5698] % 32) + 228 len mem[_5698] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5698], mem[_5698 + 196 len floor32(mem[_5698]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5594 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4685)
                                    mem[mem[64] + 36] = address(_5594)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4685), address(_5594)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6234 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6234 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6234 + 36] = 0
                                    mem[_6234 + 68] = ext_call.return_data[0]
                                    mem[_6234 + 100] = address(ext_call.return_data[0])
                                    mem[_6234 + 132] = 128
                                    mem[_6234 + 164] = mem[_6234]
                                    s = 0
                                    while s < mem[_6234]:
                                        mem[_6234 + s + 196] = mem[_6234 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6234] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6234 + 164 len mem[_6234] + 32]
                                    else:
                                        mem[floor32(mem[_6234]) + _6234 + 196] = mem[floor32(mem[_6234]) + _6234 + -(mem[_6234] % 32) + 228 len mem[_6234] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6234], mem[_6234 + 196 len floor32(mem[_6234]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5699 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5699 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5699 + 36] = ext_call.return_data[0]
                                    mem[_5699 + 68] = 0
                                    mem[_5699 + 100] = this.address
                                    mem[_5699 + 132] = 128
                                    mem[_5699 + 164] = mem[_5699]
                                    s = 0
                                    while s < mem[_5699]:
                                        mem[_5699 + s + 196] = mem[_5699 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5699] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5699 + 164 len mem[_5699] + 32]
                                    else:
                                        mem[floor32(mem[_5699]) + _5699 + 196] = mem[floor32(mem[_5699]) + _5699 + -(mem[_5699] % 32) + 228 len mem[_5699] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5699], mem[_5699 + 196 len floor32(mem[_5699]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5597 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4685)
                                    mem[mem[64] + 36] = address(_5597)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4685), address(_5597)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6237 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6237 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6237 + 36] = ext_call.return_data[0]
                                    mem[_6237 + 68] = 0
                                    mem[_6237 + 100] = address(ext_call.return_data[0])
                                    mem[_6237 + 132] = 128
                                    mem[_6237 + 164] = mem[_6237]
                                    s = 0
                                    while s < mem[_6237]:
                                        mem[_6237 + s + 196] = mem[_6237 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6237] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6237 + 164 len mem[_6237] + 32]
                                    else:
                                        mem[floor32(mem[_6237]) + _6237 + 196] = mem[floor32(mem[_6237]) + _6237 + -(mem[_6237] % 32) + 228 len mem[_6237] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6237], mem[_6237 + 196 len floor32(mem[_6237]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4652) == address(_4685):
                                if idx >= mem[96] - 2:
                                    _5700 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5700 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5700 + 36] = 0
                                    mem[_5700 + 68] = ext_call.return_data[0]
                                    mem[_5700 + 100] = this.address
                                    mem[_5700 + 132] = 128
                                    mem[_5700 + 164] = mem[_5700]
                                    s = 0
                                    while s < mem[_5700]:
                                        mem[_5700 + s + 196] = mem[_5700 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5700] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5700 + 164 len mem[_5700] + 32]
                                    else:
                                        mem[floor32(mem[_5700]) + _5700 + 196] = mem[floor32(mem[_5700]) + _5700 + -(mem[_5700] % 32) + 228 len mem[_5700] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5700], mem[_5700 + 196 len floor32(mem[_5700]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5600 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4685)
                                    mem[mem[64] + 36] = address(_5600)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4685), address(_5600)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6240 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6240 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6240 + 36] = 0
                                    mem[_6240 + 68] = ext_call.return_data[0]
                                    mem[_6240 + 100] = address(ext_call.return_data[0])
                                    mem[_6240 + 132] = 128
                                    mem[_6240 + 164] = mem[_6240]
                                    s = 0
                                    while s < mem[_6240]:
                                        mem[_6240 + s + 196] = mem[_6240 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6240] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6240 + 164 len mem[_6240] + 32]
                                    else:
                                        mem[floor32(mem[_6240]) + _6240 + 196] = mem[floor32(mem[_6240]) + _6240 + -(mem[_6240] % 32) + 228 len mem[_6240] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6240], mem[_6240 + 196 len floor32(mem[_6240]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5701 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5701 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5701 + 36] = ext_call.return_data[0]
                                    mem[_5701 + 68] = 0
                                    mem[_5701 + 100] = this.address
                                    mem[_5701 + 132] = 128
                                    mem[_5701 + 164] = mem[_5701]
                                    s = 0
                                    while s < mem[_5701]:
                                        mem[_5701 + s + 196] = mem[_5701 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5701] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5701 + 164 len mem[_5701] + 32]
                                    else:
                                        mem[floor32(mem[_5701]) + _5701 + 196] = mem[floor32(mem[_5701]) + _5701 + -(mem[_5701] % 32) + 228 len mem[_5701] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5701], mem[_5701 + 196 len floor32(mem[_5701]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5603 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4685)
                                    mem[mem[64] + 36] = address(_5603)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4685), address(_5603)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6243 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6243 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6243 + 36] = ext_call.return_data[0]
                                    mem[_6243 + 68] = 0
                                    mem[_6243 + 100] = address(ext_call.return_data[0])
                                    mem[_6243 + 132] = 128
                                    mem[_6243 + 164] = mem[_6243]
                                    s = 0
                                    while s < mem[_6243]:
                                        mem[_6243 + s + 196] = mem[_6243 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6243] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6243 + 164 len mem[_6243] + 32]
                                    else:
                                        mem[floor32(mem[_6243]) + _6243 + 196] = mem[floor32(mem[_6243]) + _6243 + -(mem[_6243] % 32) + 228 len mem[_6243] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6243], mem[_6243 + 196 len floor32(mem[_6243]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 229
            mem[(32 * arg1.length) + 228] = return_data.size
            mem[(32 * arg1.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'T'
            if not return_data.size:
                require arg1.length - 1 < arg1.length
                _2375 = mem[(32 * arg1.length - 1) + 128]
                mem[(32 * arg1.length) + ceil32(return_data.size) + 233] = this.address
                require ext_code.size(address(_2375))
                staticcall address(_2375).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _4656 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _4689 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4689)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4656))
                        staticcall address(_4656).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4656) == address(_4656):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4656) == address(_4656):
                                if idx >= mem[96] - 2:
                                    _5702 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5702 + 36] = 0
                                    mem[_5702 + 68] = ext_call.return_data[0]
                                    mem[_5702 + 100] = this.address
                                    mem[_5702 + 132] = 128
                                    mem[_5702 + 164] = mem[_5702]
                                    s = 0
                                    while s < mem[_5702]:
                                        mem[_5702 + s + 196] = mem[_5702 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5702] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5702 + 164 len mem[_5702] + 32]
                                    else:
                                        mem[floor32(mem[_5702]) + _5702 + 196] = mem[floor32(mem[_5702]) + _5702 + -(mem[_5702] % 32) + 228 len mem[_5702] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5702], mem[_5702 + 196 len floor32(mem[_5702]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5606 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4689)
                                    mem[mem[64] + 36] = address(_5606)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4689), address(_5606)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6246 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6246 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6246 + 36] = 0
                                    mem[_6246 + 68] = ext_call.return_data[0]
                                    mem[_6246 + 100] = address(ext_call.return_data[0])
                                    mem[_6246 + 132] = 128
                                    mem[_6246 + 164] = mem[_6246]
                                    s = 0
                                    while s < mem[_6246]:
                                        mem[_6246 + s + 196] = mem[_6246 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6246] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6246 + 164 len mem[_6246] + 32]
                                    else:
                                        mem[floor32(mem[_6246]) + _6246 + 196] = mem[floor32(mem[_6246]) + _6246 + -(mem[_6246] % 32) + 228 len mem[_6246] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6246], mem[_6246 + 196 len floor32(mem[_6246]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5703 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5703 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5703 + 36] = ext_call.return_data[0]
                                    mem[_5703 + 68] = 0
                                    mem[_5703 + 100] = this.address
                                    mem[_5703 + 132] = 128
                                    mem[_5703 + 164] = mem[_5703]
                                    s = 0
                                    while s < mem[_5703]:
                                        mem[_5703 + s + 196] = mem[_5703 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5703] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5703 + 164 len mem[_5703] + 32]
                                    else:
                                        mem[floor32(mem[_5703]) + _5703 + 196] = mem[floor32(mem[_5703]) + _5703 + -(mem[_5703] % 32) + 228 len mem[_5703] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5703], mem[_5703 + 196 len floor32(mem[_5703]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5609 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4689)
                                    mem[mem[64] + 36] = address(_5609)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4689), address(_5609)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6249 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6249 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6249 + 36] = ext_call.return_data[0]
                                    mem[_6249 + 68] = 0
                                    mem[_6249 + 100] = address(ext_call.return_data[0])
                                    mem[_6249 + 132] = 128
                                    mem[_6249 + 164] = mem[_6249]
                                    s = 0
                                    while s < mem[_6249]:
                                        mem[_6249 + s + 196] = mem[_6249 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6249] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6249 + 164 len mem[_6249] + 32]
                                    else:
                                        mem[floor32(mem[_6249]) + _6249 + 196] = mem[floor32(mem[_6249]) + _6249 + -(mem[_6249] % 32) + 228 len mem[_6249] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6249], mem[_6249 + 196 len floor32(mem[_6249]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4656) == address(_4656):
                                if idx >= mem[96] - 2:
                                    _5704 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5704 + 36] = 0
                                    mem[_5704 + 68] = ext_call.return_data[0]
                                    mem[_5704 + 100] = this.address
                                    mem[_5704 + 132] = 128
                                    mem[_5704 + 164] = mem[_5704]
                                    s = 0
                                    while s < mem[_5704]:
                                        mem[_5704 + s + 196] = mem[_5704 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5704] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5704 + 164 len mem[_5704] + 32]
                                    else:
                                        mem[floor32(mem[_5704]) + _5704 + 196] = mem[floor32(mem[_5704]) + _5704 + -(mem[_5704] % 32) + 228 len mem[_5704] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5704], mem[_5704 + 196 len floor32(mem[_5704]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5612 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4689)
                                    mem[mem[64] + 36] = address(_5612)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4689), address(_5612)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6252 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6252 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6252 + 36] = 0
                                    mem[_6252 + 68] = ext_call.return_data[0]
                                    mem[_6252 + 100] = address(ext_call.return_data[0])
                                    mem[_6252 + 132] = 128
                                    mem[_6252 + 164] = mem[_6252]
                                    s = 0
                                    while s < mem[_6252]:
                                        mem[_6252 + s + 196] = mem[_6252 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6252] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6252 + 164 len mem[_6252] + 32]
                                    else:
                                        mem[floor32(mem[_6252]) + _6252 + 196] = mem[floor32(mem[_6252]) + _6252 + -(mem[_6252] % 32) + 228 len mem[_6252] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6252], mem[_6252 + 196 len floor32(mem[_6252]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5705 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5705 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5705 + 36] = ext_call.return_data[0]
                                    mem[_5705 + 68] = 0
                                    mem[_5705 + 100] = this.address
                                    mem[_5705 + 132] = 128
                                    mem[_5705 + 164] = mem[_5705]
                                    s = 0
                                    while s < mem[_5705]:
                                        mem[_5705 + s + 196] = mem[_5705 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5705] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5705 + 164 len mem[_5705] + 32]
                                    else:
                                        mem[floor32(mem[_5705]) + _5705 + 196] = mem[floor32(mem[_5705]) + _5705 + -(mem[_5705] % 32) + 228 len mem[_5705] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5705], mem[_5705 + 196 len floor32(mem[_5705]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5615 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4689)
                                    mem[mem[64] + 36] = address(_5615)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4689), address(_5615)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6255 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6255 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6255 + 36] = ext_call.return_data[0]
                                    mem[_6255 + 68] = 0
                                    mem[_6255 + 100] = address(ext_call.return_data[0])
                                    mem[_6255 + 132] = 128
                                    mem[_6255 + 164] = mem[_6255]
                                    s = 0
                                    while s < mem[_6255]:
                                        mem[_6255 + s + 196] = mem[_6255 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6255] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6255 + 164 len mem[_6255] + 32]
                                    else:
                                        mem[floor32(mem[_6255]) + _6255 + 196] = mem[floor32(mem[_6255]) + _6255 + -(mem[_6255] % 32) + 228 len mem[_6255] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6255], mem[_6255 + 196 len floor32(mem[_6255]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4689)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4656))
                        staticcall address(_4656).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4656) == address(_4689):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4656) == address(_4689):
                                if idx >= mem[96] - 2:
                                    _5706 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5706 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5706 + 36] = 0
                                    mem[_5706 + 68] = ext_call.return_data[0]
                                    mem[_5706 + 100] = this.address
                                    mem[_5706 + 132] = 128
                                    mem[_5706 + 164] = mem[_5706]
                                    s = 0
                                    while s < mem[_5706]:
                                        mem[_5706 + s + 196] = mem[_5706 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5706] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5706 + 164 len mem[_5706] + 32]
                                    else:
                                        mem[floor32(mem[_5706]) + _5706 + 196] = mem[floor32(mem[_5706]) + _5706 + -(mem[_5706] % 32) + 228 len mem[_5706] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5706], mem[_5706 + 196 len floor32(mem[_5706]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5618 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4689)
                                    mem[mem[64] + 36] = address(_5618)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4689), address(_5618)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6258 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6258 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6258 + 36] = 0
                                    mem[_6258 + 68] = ext_call.return_data[0]
                                    mem[_6258 + 100] = address(ext_call.return_data[0])
                                    mem[_6258 + 132] = 128
                                    mem[_6258 + 164] = mem[_6258]
                                    s = 0
                                    while s < mem[_6258]:
                                        mem[_6258 + s + 196] = mem[_6258 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6258] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6258 + 164 len mem[_6258] + 32]
                                    else:
                                        mem[floor32(mem[_6258]) + _6258 + 196] = mem[floor32(mem[_6258]) + _6258 + -(mem[_6258] % 32) + 228 len mem[_6258] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6258], mem[_6258 + 196 len floor32(mem[_6258]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5707 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5707 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5707 + 36] = ext_call.return_data[0]
                                    mem[_5707 + 68] = 0
                                    mem[_5707 + 100] = this.address
                                    mem[_5707 + 132] = 128
                                    mem[_5707 + 164] = mem[_5707]
                                    s = 0
                                    while s < mem[_5707]:
                                        mem[_5707 + s + 196] = mem[_5707 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5707] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5707 + 164 len mem[_5707] + 32]
                                    else:
                                        mem[floor32(mem[_5707]) + _5707 + 196] = mem[floor32(mem[_5707]) + _5707 + -(mem[_5707] % 32) + 228 len mem[_5707] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5707], mem[_5707 + 196 len floor32(mem[_5707]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5621 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4689)
                                    mem[mem[64] + 36] = address(_5621)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4689), address(_5621)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6261 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6261 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6261 + 36] = ext_call.return_data[0]
                                    mem[_6261 + 68] = 0
                                    mem[_6261 + 100] = address(ext_call.return_data[0])
                                    mem[_6261 + 132] = 128
                                    mem[_6261 + 164] = mem[_6261]
                                    s = 0
                                    while s < mem[_6261]:
                                        mem[_6261 + s + 196] = mem[_6261 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6261] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6261 + 164 len mem[_6261] + 32]
                                    else:
                                        mem[floor32(mem[_6261]) + _6261 + 196] = mem[floor32(mem[_6261]) + _6261 + -(mem[_6261] % 32) + 228 len mem[_6261] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6261], mem[_6261 + 196 len floor32(mem[_6261]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4656) == address(_4689):
                                if idx >= mem[96] - 2:
                                    _5708 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5708 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5708 + 36] = 0
                                    mem[_5708 + 68] = ext_call.return_data[0]
                                    mem[_5708 + 100] = this.address
                                    mem[_5708 + 132] = 128
                                    mem[_5708 + 164] = mem[_5708]
                                    s = 0
                                    while s < mem[_5708]:
                                        mem[_5708 + s + 196] = mem[_5708 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5708] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5708 + 164 len mem[_5708] + 32]
                                    else:
                                        mem[floor32(mem[_5708]) + _5708 + 196] = mem[floor32(mem[_5708]) + _5708 + -(mem[_5708] % 32) + 228 len mem[_5708] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5708], mem[_5708 + 196 len floor32(mem[_5708]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5624 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4689)
                                    mem[mem[64] + 36] = address(_5624)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4689), address(_5624)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6264 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6264 + 36] = 0
                                    mem[_6264 + 68] = ext_call.return_data[0]
                                    mem[_6264 + 100] = address(ext_call.return_data[0])
                                    mem[_6264 + 132] = 128
                                    mem[_6264 + 164] = mem[_6264]
                                    s = 0
                                    while s < mem[_6264]:
                                        mem[_6264 + s + 196] = mem[_6264 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6264] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6264 + 164 len mem[_6264] + 32]
                                    else:
                                        mem[floor32(mem[_6264]) + _6264 + 196] = mem[floor32(mem[_6264]) + _6264 + -(mem[_6264] % 32) + 228 len mem[_6264] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6264], mem[_6264 + 196 len floor32(mem[_6264]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5709 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5709 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5709 + 36] = ext_call.return_data[0]
                                    mem[_5709 + 68] = 0
                                    mem[_5709 + 100] = this.address
                                    mem[_5709 + 132] = 128
                                    mem[_5709 + 164] = mem[_5709]
                                    s = 0
                                    while s < mem[_5709]:
                                        mem[_5709 + s + 196] = mem[_5709 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5709] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5709 + 164 len mem[_5709] + 32]
                                    else:
                                        mem[floor32(mem[_5709]) + _5709 + 196] = mem[floor32(mem[_5709]) + _5709 + -(mem[_5709] % 32) + 228 len mem[_5709] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5709], mem[_5709 + 196 len floor32(mem[_5709]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5627 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4689)
                                    mem[mem[64] + 36] = address(_5627)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4689), address(_5627)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6267 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6267 + 36] = ext_call.return_data[0]
                                    mem[_6267 + 68] = 0
                                    mem[_6267 + 100] = address(ext_call.return_data[0])
                                    mem[_6267 + 132] = 128
                                    mem[_6267 + 164] = mem[_6267]
                                    s = 0
                                    while s < mem[_6267]:
                                        mem[_6267 + s + 196] = mem[_6267 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6267] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6267 + 164 len mem[_6267] + 32]
                                    else:
                                        mem[floor32(mem[_6267]) + _6267 + 196] = mem[floor32(mem[_6267]) + _6267 + -(mem[_6267] % 32) + 228 len mem[_6267] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6267], mem[_6267 + 196 len floor32(mem[_6267]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(32 * arg1.length) + 260]:
                    revert with 0, 'T'
                require arg1.length - 1 < arg1.length
                _2407 = mem[(32 * arg1.length - 1) + 128]
                mem[(32 * arg1.length) + ceil32(return_data.size) + 233] = this.address
                require ext_code.size(address(_2407))
                staticcall address(_2407).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < arg1.length - 1:
                    require idx < mem[96]
                    _4660 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[96]
                    _4693 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4693)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4660))
                        staticcall address(_4660).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4660) == address(_4660):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4660) == address(_4660):
                                if idx >= mem[96] - 2:
                                    _5710 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5710 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5710 + 36] = 0
                                    mem[_5710 + 68] = ext_call.return_data[0]
                                    mem[_5710 + 100] = this.address
                                    mem[_5710 + 132] = 128
                                    mem[_5710 + 164] = mem[_5710]
                                    s = 0
                                    while s < mem[_5710]:
                                        mem[_5710 + s + 196] = mem[_5710 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5710] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5710 + 164 len mem[_5710] + 32]
                                    else:
                                        mem[floor32(mem[_5710]) + _5710 + 196] = mem[floor32(mem[_5710]) + _5710 + -(mem[_5710] % 32) + 228 len mem[_5710] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5710], mem[_5710 + 196 len floor32(mem[_5710]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5630 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4693)
                                    mem[mem[64] + 36] = address(_5630)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4693), address(_5630)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6270 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6270 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6270 + 36] = 0
                                    mem[_6270 + 68] = ext_call.return_data[0]
                                    mem[_6270 + 100] = address(ext_call.return_data[0])
                                    mem[_6270 + 132] = 128
                                    mem[_6270 + 164] = mem[_6270]
                                    s = 0
                                    while s < mem[_6270]:
                                        mem[_6270 + s + 196] = mem[_6270 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6270] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6270 + 164 len mem[_6270] + 32]
                                    else:
                                        mem[floor32(mem[_6270]) + _6270 + 196] = mem[floor32(mem[_6270]) + _6270 + -(mem[_6270] % 32) + 228 len mem[_6270] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6270], mem[_6270 + 196 len floor32(mem[_6270]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5711 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5711 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5711 + 36] = ext_call.return_data[0]
                                    mem[_5711 + 68] = 0
                                    mem[_5711 + 100] = this.address
                                    mem[_5711 + 132] = 128
                                    mem[_5711 + 164] = mem[_5711]
                                    s = 0
                                    while s < mem[_5711]:
                                        mem[_5711 + s + 196] = mem[_5711 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5711] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5711 + 164 len mem[_5711] + 32]
                                    else:
                                        mem[floor32(mem[_5711]) + _5711 + 196] = mem[floor32(mem[_5711]) + _5711 + -(mem[_5711] % 32) + 228 len mem[_5711] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5711], mem[_5711 + 196 len floor32(mem[_5711]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5633 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4693)
                                    mem[mem[64] + 36] = address(_5633)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4693), address(_5633)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6273 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6273 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6273 + 36] = ext_call.return_data[0]
                                    mem[_6273 + 68] = 0
                                    mem[_6273 + 100] = address(ext_call.return_data[0])
                                    mem[_6273 + 132] = 128
                                    mem[_6273 + 164] = mem[_6273]
                                    s = 0
                                    while s < mem[_6273]:
                                        mem[_6273 + s + 196] = mem[_6273 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6273] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6273 + 164 len mem[_6273] + 32]
                                    else:
                                        mem[floor32(mem[_6273]) + _6273 + 196] = mem[floor32(mem[_6273]) + _6273 + -(mem[_6273] % 32) + 228 len mem[_6273] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6273], mem[_6273 + 196 len floor32(mem[_6273]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4660) == address(_4660):
                                if idx >= mem[96] - 2:
                                    _5712 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5712 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5712 + 36] = 0
                                    mem[_5712 + 68] = ext_call.return_data[0]
                                    mem[_5712 + 100] = this.address
                                    mem[_5712 + 132] = 128
                                    mem[_5712 + 164] = mem[_5712]
                                    s = 0
                                    while s < mem[_5712]:
                                        mem[_5712 + s + 196] = mem[_5712 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5712] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5712 + 164 len mem[_5712] + 32]
                                    else:
                                        mem[floor32(mem[_5712]) + _5712 + 196] = mem[floor32(mem[_5712]) + _5712 + -(mem[_5712] % 32) + 228 len mem[_5712] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5712], mem[_5712 + 196 len floor32(mem[_5712]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5636 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4693)
                                    mem[mem[64] + 36] = address(_5636)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4693), address(_5636)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6276 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6276 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6276 + 36] = 0
                                    mem[_6276 + 68] = ext_call.return_data[0]
                                    mem[_6276 + 100] = address(ext_call.return_data[0])
                                    mem[_6276 + 132] = 128
                                    mem[_6276 + 164] = mem[_6276]
                                    s = 0
                                    while s < mem[_6276]:
                                        mem[_6276 + s + 196] = mem[_6276 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6276] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6276 + 164 len mem[_6276] + 32]
                                    else:
                                        mem[floor32(mem[_6276]) + _6276 + 196] = mem[floor32(mem[_6276]) + _6276 + -(mem[_6276] % 32) + 228 len mem[_6276] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6276], mem[_6276 + 196 len floor32(mem[_6276]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5713 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5713 + 36] = ext_call.return_data[0]
                                    mem[_5713 + 68] = 0
                                    mem[_5713 + 100] = this.address
                                    mem[_5713 + 132] = 128
                                    mem[_5713 + 164] = mem[_5713]
                                    s = 0
                                    while s < mem[_5713]:
                                        mem[_5713 + s + 196] = mem[_5713 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5713] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5713 + 164 len mem[_5713] + 32]
                                    else:
                                        mem[floor32(mem[_5713]) + _5713 + 196] = mem[floor32(mem[_5713]) + _5713 + -(mem[_5713] % 32) + 228 len mem[_5713] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5713], mem[_5713 + 196 len floor32(mem[_5713]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5639 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4693)
                                    mem[mem[64] + 36] = address(_5639)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4693), address(_5639)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6279 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6279 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6279 + 36] = ext_call.return_data[0]
                                    mem[_6279 + 68] = 0
                                    mem[_6279 + 100] = address(ext_call.return_data[0])
                                    mem[_6279 + 132] = 128
                                    mem[_6279 + 164] = mem[_6279]
                                    s = 0
                                    while s < mem[_6279]:
                                        mem[_6279 + s + 196] = mem[_6279 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6279] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6279 + 164 len mem[_6279] + 32]
                                    else:
                                        mem[floor32(mem[_6279]) + _6279 + 196] = mem[floor32(mem[_6279]) + _6279 + -(mem[_6279] % 32) + 228 len mem[_6279] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6279], mem[_6279 + 196 len floor32(mem[_6279]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'BotLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_4693)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_code.size(address(_4660))
                        staticcall address(_4660).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(_4660) == address(_4693):
                            if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = Mask(144, 112, ext_call.return_data[0])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4660) == address(_4693):
                                if idx >= mem[96] - 2:
                                    _5714 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5714 + 36] = 0
                                    mem[_5714 + 68] = ext_call.return_data[0]
                                    mem[_5714 + 100] = this.address
                                    mem[_5714 + 132] = 128
                                    mem[_5714 + 164] = mem[_5714]
                                    s = 0
                                    while s < mem[_5714]:
                                        mem[_5714 + s + 196] = mem[_5714 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5714] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5714 + 164 len mem[_5714] + 32]
                                    else:
                                        mem[floor32(mem[_5714]) + _5714 + 196] = mem[floor32(mem[_5714]) + _5714 + -(mem[_5714] % 32) + 228 len mem[_5714] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5714], mem[_5714 + 196 len floor32(mem[_5714]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5642 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4693)
                                    mem[mem[64] + 36] = address(_5642)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4693), address(_5642)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6282 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6282 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6282 + 36] = 0
                                    mem[_6282 + 68] = ext_call.return_data[0]
                                    mem[_6282 + 100] = address(ext_call.return_data[0])
                                    mem[_6282 + 132] = 128
                                    mem[_6282 + 164] = mem[_6282]
                                    s = 0
                                    while s < mem[_6282]:
                                        mem[_6282 + s + 196] = mem[_6282 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6282] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6282 + 164 len mem[_6282] + 32]
                                    else:
                                        mem[floor32(mem[_6282]) + _6282 + 196] = mem[floor32(mem[_6282]) + _6282 + -(mem[_6282] % 32) + 228 len mem[_6282] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6282], mem[_6282 + 196 len floor32(mem[_6282]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5715 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5715 + 36] = ext_call.return_data[0]
                                    mem[_5715 + 68] = 0
                                    mem[_5715 + 100] = this.address
                                    mem[_5715 + 132] = 128
                                    mem[_5715 + 164] = mem[_5715]
                                    s = 0
                                    while s < mem[_5715]:
                                        mem[_5715 + s + 196] = mem[_5715 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5715] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5715 + 164 len mem[_5715] + 32]
                                    else:
                                        mem[floor32(mem[_5715]) + _5715 + 196] = mem[floor32(mem[_5715]) + _5715 + -(mem[_5715] % 32) + 228 len mem[_5715] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5715], mem[_5715 + 196 len floor32(mem[_5715]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5645 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4693)
                                    mem[mem[64] + 36] = address(_5645)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4693), address(_5645)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6285 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6285 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6285 + 36] = ext_call.return_data[0]
                                    mem[_6285 + 68] = 0
                                    mem[_6285 + 100] = address(ext_call.return_data[0])
                                    mem[_6285 + 132] = 128
                                    mem[_6285 + 164] = mem[_6285]
                                    s = 0
                                    while s < mem[_6285]:
                                        mem[_6285 + s + 196] = mem[_6285 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6285] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6285 + 164 len mem[_6285] + 32]
                                    else:
                                        mem[floor32(mem[_6285]) + _6285 + 196] = mem[floor32(mem[_6285]) + _6285 + -(mem[_6285] % 32) + 228 len mem[_6285] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6285], mem[_6285 + 196 len floor32(mem[_6285]) + 32]
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            mem[mem[64] + 4] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 36] = Mask(112, 0, ext_call.return_data[32])
                            mem[mem[64] + 68] = Mask(112, 0, ext_call.return_data[0])
                            require ext_code.size(stor2)
                            staticcall stor2.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(_4660) == address(_4693):
                                if idx >= mem[96] - 2:
                                    _5716 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5716 + 36] = 0
                                    mem[_5716 + 68] = ext_call.return_data[0]
                                    mem[_5716 + 100] = this.address
                                    mem[_5716 + 132] = 128
                                    mem[_5716 + 164] = mem[_5716]
                                    s = 0
                                    while s < mem[_5716]:
                                        mem[_5716 + s + 196] = mem[_5716 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5716] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5716 + 164 len mem[_5716] + 32]
                                    else:
                                        mem[floor32(mem[_5716]) + _5716 + 196] = mem[floor32(mem[_5716]) + _5716 + -(mem[_5716] % 32) + 228 len mem[_5716] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, mem[_5716], mem[_5716 + 196 len floor32(mem[_5716]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5648 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4693)
                                    mem[mem[64] + 36] = address(_5648)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4693), address(_5648)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6288 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6288 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6288 + 36] = 0
                                    mem[_6288 + 68] = ext_call.return_data[0]
                                    mem[_6288 + 100] = address(ext_call.return_data[0])
                                    mem[_6288 + 132] = 128
                                    mem[_6288 + 164] = mem[_6288]
                                    s = 0
                                    while s < mem[_6288]:
                                        mem[_6288 + s + 196] = mem[_6288 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6288] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6288 + 164 len mem[_6288] + 32]
                                    else:
                                        mem[floor32(mem[_6288]) + _6288 + 196] = mem[floor32(mem[_6288]) + _6288 + -(mem[_6288] % 32) + 228 len mem[_6288] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(ext_call.return_data[0]), 128, mem[_6288], mem[_6288 + 196 len floor32(mem[_6288]) + 32]
                            else:
                                if idx >= mem[96] - 2:
                                    _5717 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5717 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_5717 + 36] = ext_call.return_data[0]
                                    mem[_5717 + 68] = 0
                                    mem[_5717 + 100] = this.address
                                    mem[_5717 + 132] = 128
                                    mem[_5717 + 164] = mem[_5717]
                                    s = 0
                                    while s < mem[_5717]:
                                        mem[_5717 + s + 196] = mem[_5717 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_5717] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5717 + 164 len mem[_5717] + 32]
                                    else:
                                        mem[floor32(mem[_5717]) + _5717 + 196] = mem[floor32(mem[_5717]) + _5717 + -(mem[_5717] % 32) + 228 len mem[_5717] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, mem[_5717], mem[_5717 + 196 len floor32(mem[_5717]) + 32]
                                else:
                                    require idx + 2 < mem[96]
                                    _5651 = mem[(32 * idx + 2) + 128]
                                    mem[mem[64] + 4] = address(_4693)
                                    mem[mem[64] + 36] = address(_5651)
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_4693), address(_5651)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _6291 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6291 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_6291 + 36] = ext_call.return_data[0]
                                    mem[_6291 + 68] = 0
                                    mem[_6291 + 100] = address(ext_call.return_data[0])
                                    mem[_6291 + 132] = 128
                                    mem[_6291 + 164] = mem[_6291]
                                    s = 0
                                    while s < mem[_6291]:
                                        mem[_6291 + s + 196] = mem[_6291 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_6291] % 32:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6291 + 164 len mem[_6291] + 32]
                                    else:
                                        mem[floor32(mem[_6291]) + _6291 + 196] = mem[floor32(mem[_6291]) + _6291 + -(mem[_6291] % 32) + 228 len mem[_6291] % 32]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(ext_call.return_data[0]), 128, mem[_6291], mem[_6291 + 196 len floor32(mem[_6291]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    require mem[96] - 1 < mem[96]
    require ext_code.size(mem[(32 * mem[96] - 1) + 140 len 20])
    staticcall mem[(32 * mem[96] - 1) + 140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    if 0 < arg5:
        revert with 0, 'slippage'
    stor4[address(_7)] = 1
    require ext_code.size(address(_7))
    staticcall address(_7).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor6[address(arg3)] = ext_call.return_data[0]
    emit Output(arg4);
}



}
