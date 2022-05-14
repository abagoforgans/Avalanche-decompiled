contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
array of struct stor5;
array of struct stor6;

function _fallback() payable {
    revert
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = arg3
    mem[132] = 1
    mem[196] = this.address
    mem[228] = block.timestamp + 60
    mem[164] = 160
    mem[260] = stor5.length
    if not stor5.length:
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(arg3), 1, 160, address(this.address), block.timestamp + 60, stor5.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _9 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _12 = mem[_9 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_9 + 96])] = mem[_9 + 128 len floor32(mem[_9 + 96])]
        require ext_code.size(stor1)
        staticcall stor1.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor0, stor2, stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidate borrow fail'
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, ext_call.return_data[0]
        else:
            require ext_code.size(stor3)
            staticcall stor3.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).leave(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _12) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _12) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
        mem[(32 * _12) + ceil32(return_data.size) + 164] = 1
        mem[(32 * _12) + ceil32(return_data.size) + 228] = this.address
        mem[(32 * _12) + ceil32(return_data.size) + 260] = block.timestamp + 60
        mem[(32 * _12) + ceil32(return_data.size) + 196] = 160
        mem[(32 * _12) + ceil32(return_data.size) + 292] = stor6.length
        if not stor6.length:
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 60, stor6.length
        else:
            mem[0] = 6
            mem[(32 * _12) + ceil32(return_data.size) + 324] = address(stor6.field_0)
            idx = (32 * _12) + ceil32(return_data.size) + 324
            s = 0
            while (32 * _12) + ceil32(return_data.size) + (32 * stor6.length) + 324 > idx + 32:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1, Array(len=stor6.length, data=mem[(32 * _12) + ceil32(return_data.size) + 324 len 32 * stor6.length]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _12) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _12) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        require mem[(32 * _12) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _12) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * _12) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _12) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _12) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _12) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _12) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    else:
        mem[0] = 5
        mem[292] = address(stor5.field_0)
        idx = 292
        s = 0
        while (32 * stor5.length) + 292 > idx + 32:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(arg3), 1, 160, address(this.address), block.timestamp + 60, stor5.length, mem[292 len 32 * stor5.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _201 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _216 = mem[_201 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_201 + 96])] = mem[_201 + 128 len floor32(mem[_201 + 96])]
        require ext_code.size(stor1)
        staticcall stor1.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor0, stor2, stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidate borrow fail'
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, ext_call.return_data[0]
        else:
            require ext_code.size(stor3)
            staticcall stor3.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).leave(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _216) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _216) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
        mem[(32 * _216) + ceil32(return_data.size) + 164] = 1
        mem[(32 * _216) + ceil32(return_data.size) + 228] = this.address
        mem[(32 * _216) + ceil32(return_data.size) + 260] = block.timestamp + 60
        mem[(32 * _216) + ceil32(return_data.size) + 196] = 160
        mem[(32 * _216) + ceil32(return_data.size) + 292] = stor6.length
        if not stor6.length:
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 60, stor6.length
        else:
            mem[0] = 6
            mem[(32 * _216) + ceil32(return_data.size) + 324] = address(stor6.field_0)
            idx = (32 * _216) + ceil32(return_data.size) + 324
            s = 0
            while (32 * _216) + ceil32(return_data.size) + (32 * stor6.length) + 324 > idx + 32:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1, Array(len=stor6.length, data=mem[(32 * _216) + ceil32(return_data.size) + 324 len 32 * stor6.length]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _216) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _216) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        require mem[(32 * _216) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _216) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * _216) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _216) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _216) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _216) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _216) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sha3(0xfe45524333313536466c617368426f72726f776572496e746572666163652e6f6e466c6173684c6f61)
}

function sub_cddd6ab5(?) payable {
    require calldata.size - 4 >= 256
    require cd[196] <= 4294967296
    require cd[196] + 36 <= calldata.size
    require ('cd', 196).length <= 4294967296 and cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    require cd[228] <= 4294967296
    require cd[228] + 36 <= calldata.size
    require ('cd', 228).length <= 4294967296 and cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    mem[196] = 32
    mem[228] = 5
    mem[260] = 'start' % 1099511627776
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args 0, 'start'
    stor0 = address(cd[4])
    stor1 = address(cd[36])
    stor2 = cd[68]
    stor3 = address(cd[100])
    stor4 = address(cd[164])
    stor5.length = ('cd', 196).length
    if not ('cd', 196).length:
        idx = 0
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
        stor6.length = ('cd', 228).length
        if not ('cd', 228).length:
            idx = 0
            while stor6.length > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[292] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[296] = cd[68]
            mem[328] = 64
            mem[360] = stor5.length
            if not stor5.length:
                require ext_code.size(stor4)
                staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], 64, stor5.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 292
                require return_data.size >= 32
                _698 = mem[292 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                require mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]
                _709 = mem[_698 + 292]
                mem[ceil32(return_data.size) + 324 len floor32(mem[_698 + 292])] = mem[_698 + 324 len floor32(mem[_698 + 292])]
                require 0 < mem[ceil32(return_data.size) + 292]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), mem[ceil32(return_data.size) + 324], 128, 0, mem[(32 * _709) + ceil32(return_data.size) + 488]
            else:
                mem[0] = 5
                mem[392] = address(stor5.field_0)
                idx = 392
                s = 0
                while (32 * stor5.length) + 392 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], Array(len=stor5.length, data=mem[392 len 32 * stor5.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 292
                require return_data.size >= 32
                _1129 = mem[292 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                require mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]
                _1156 = mem[_1129 + 292]
                mem[ceil32(return_data.size) + 324 len floor32(mem[_1129 + 292])] = mem[_1129 + 324 len floor32(mem[_1129 + 292])]
                require 0 < mem[ceil32(return_data.size) + 292]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), mem[ceil32(return_data.size) + 324], 128, 0, mem[(32 * _1156) + ceil32(return_data.size) + 488]
        else:
            s = 0
            idx = cd[228] + 36
            while cd[228] + (32 * ('cd', 228).length) + 36 > idx:
                stor6[s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 228).length) + 31) >> 5
            while stor6.length > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[292] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[296] = cd[68]
            mem[328] = 64
            mem[360] = stor5.length
            if not stor5.length:
                require ext_code.size(stor4)
                staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], 64, stor5.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 292
                require return_data.size >= 32
                _950 = mem[292 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                require mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]
                _974 = mem[_950 + 292]
                mem[ceil32(return_data.size) + 324 len floor32(mem[_950 + 292])] = mem[_950 + 324 len floor32(mem[_950 + 292])]
                require 0 < mem[ceil32(return_data.size) + 292]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), mem[ceil32(return_data.size) + 324], 128, 0, mem[(32 * _974) + ceil32(return_data.size) + 488]
            else:
                mem[0] = 5
                mem[392] = address(stor5.field_0)
                idx = 392
                s = 0
                while (32 * stor5.length) + 392 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], Array(len=stor5.length, data=mem[392 len 32 * stor5.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 292
                require return_data.size >= 32
                _1315 = mem[292 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                require mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]
                _1341 = mem[_1315 + 292]
                mem[ceil32(return_data.size) + 324 len floor32(mem[_1315 + 292])] = mem[_1315 + 324 len floor32(mem[_1315 + 292])]
                require 0 < mem[ceil32(return_data.size) + 292]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), mem[ceil32(return_data.size) + 324], 128, 0, mem[(32 * _1341) + ceil32(return_data.size) + 488]
    else:
        s = 0
        idx = cd[196] + 36
        while cd[196] + (32 * ('cd', 196).length) + 36 > idx:
            stor5[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 196).length) + 31) >> 5
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
        stor6.length = ('cd', 228).length
        if not ('cd', 228).length:
            idx = 0
            while stor6.length > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[292] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[296] = cd[68]
            mem[328] = 64
            mem[360] = stor5.length
            if not stor5.length:
                require ext_code.size(stor4)
                staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], 64, stor5.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 292
                require return_data.size >= 32
                _952 = mem[292 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                require mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]
                _975 = mem[_952 + 292]
                mem[ceil32(return_data.size) + 324 len floor32(mem[_952 + 292])] = mem[_952 + 324 len floor32(mem[_952 + 292])]
                require 0 < mem[ceil32(return_data.size) + 292]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), mem[ceil32(return_data.size) + 324], 128, 0, mem[(32 * _975) + ceil32(return_data.size) + 488]
            else:
                mem[0] = 5
                mem[392] = address(stor5.field_0)
                idx = 392
                s = 0
                while (32 * stor5.length) + 392 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], Array(len=stor5.length, data=mem[392 len 32 * stor5.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 292
                require return_data.size >= 32
                _1317 = mem[292 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                require mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]
                _1342 = mem[_1317 + 292]
                mem[ceil32(return_data.size) + 324 len floor32(mem[_1317 + 292])] = mem[_1317 + 324 len floor32(mem[_1317 + 292])]
                require 0 < mem[ceil32(return_data.size) + 292]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), mem[ceil32(return_data.size) + 324], 128, 0, mem[(32 * _1342) + ceil32(return_data.size) + 488]
        else:
            s = 0
            idx = cd[228] + 36
            while cd[228] + (32 * ('cd', 228).length) + 36 > idx:
                stor6[s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 228).length) + 31) >> 5
            while stor6.length > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[292] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[296] = cd[68]
            mem[328] = 64
            mem[360] = stor5.length
            if not stor5.length:
                require ext_code.size(stor4)
                staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], 64, stor5.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 292
                require return_data.size >= 32
                _1181 = mem[292 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                require mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]
                _1210 = mem[_1181 + 292]
                mem[ceil32(return_data.size) + 324 len floor32(mem[_1181 + 292])] = mem[_1181 + 324 len floor32(mem[_1181 + 292])]
                require 0 < mem[ceil32(return_data.size) + 292]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), mem[ceil32(return_data.size) + 324], 128, 0, mem[(32 * _1210) + ceil32(return_data.size) + 488]
            else:
                mem[0] = 5
                mem[392] = address(stor5.field_0)
                idx = 392
                s = 0
                while (32 * stor5.length) + 392 > idx + 32:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[68], Array(len=stor5.length, data=mem[392 len 32 * stor5.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 292
                require return_data.size >= 32
                _1485 = mem[292 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                require mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                require mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[68]) >> 32 + 292]
                _1506 = mem[_1485 + 292]
                mem[ceil32(return_data.size) + 324 len floor32(mem[_1485 + 292])] = mem[_1485 + 324 len floor32(mem[_1485 + 292])]
                require 0 < mem[ceil32(return_data.size) + 292]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(this.address), mem[ceil32(return_data.size) + 324], 128, 0, mem[(32 * _1506) + ceil32(return_data.size) + 488]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
