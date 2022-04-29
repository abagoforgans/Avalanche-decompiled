contract main {




// =====================  Runtime code  =====================


#
#  - simulateMint(address[] arg1)
#
function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        if not return_data.size:
            require ext_code.size(arg1)
            call arg1._mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg2
            if not ext_call.success:
                if not return_data.size:
                    require ext_code.size(arg1)
                    call arg1.mintTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg2
                    if not ext_call.success:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                else:
                    require ext_code.size(arg1)
                    call arg1.mintTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg2
                    if not ext_call.success:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
            else:
                require ext_code.size(arg1)
                call arg1.mintTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg2
                if not ext_call.success:
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        return ext_call.return_data[0]
        else:
            require ext_code.size(arg1)
            call arg1._mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg2
            if not ext_call.success:
                if not return_data.size:
                    require ext_code.size(arg1)
                    call arg1.mintTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg2
                    if not ext_call.success:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                else:
                    require ext_code.size(arg1)
                    call arg1.mintTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg2
                    if not ext_call.success:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
            else:
                require ext_code.size(arg1)
                call arg1.mintTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg2
                if not ext_call.success:
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        return ext_call.return_data[0]
    else:
        require ext_code.size(arg1)
        call arg1._mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg2
        if not ext_call.success:
            if not return_data.size:
                require ext_code.size(arg1)
                call arg1.mintTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg2
                if not ext_call.success:
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        return ext_call.return_data[0]
            else:
                require ext_code.size(arg1)
                call arg1.mintTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg2
                if not ext_call.success:
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        return ext_call.return_data[0]
        else:
            require ext_code.size(arg1)
            call arg1.mintTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg2
            if not ext_call.success:
                if not return_data.size:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        return ext_call.return_data[0]
            else:
                require ext_code.size(arg1)
                staticcall arg1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    return ext_call.return_data[0]
}

function sub_a53606a0(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = this.address
    mem[132] = arg4
    require ext_code.size(arg1)
    call arg1.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), arg4
    if ext_call.success:
        mem[100] = this.address
        mem[132] = arg4
        require ext_code.size(arg1)
        call arg1._mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg4
        if ext_call.success:
            mem[100] = this.address
            mem[132] = arg4
            require ext_code.size(arg1)
            call arg1.mintTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg4
            if ext_call.success:
                require ext_code.size(arg1)
                staticcall arg1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[160] = arg2
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = ext_call.return_data[0]
                mem[228] = 0
                mem[292] = msg.sender
                mem[324] = block.timestamp + 1
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(arg3)
                call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            else:
                if not return_data.size:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = arg2
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = msg.sender
                    mem[324] = block.timestamp + 1
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                else:
                    mem[96] = return_data.size
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 161] = arg2
                    mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 229] = 0
                    mem[ceil32(return_data.size) + 293] = msg.sender
                    mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                    mem[ceil32(return_data.size) + 261] = 160
                    mem[ceil32(return_data.size) + 357] = 2
                    mem[ceil32(return_data.size) + 389 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
        else:
            if not return_data.size:
                mem[100] = this.address
                mem[132] = arg4
                require ext_code.size(arg1)
                call arg1.mintTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg4
                if ext_call.success:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = arg2
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = msg.sender
                    mem[324] = block.timestamp + 1
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                else:
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[160] = arg2
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = msg.sender
                        mem[324] = block.timestamp + 1
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    else:
                        mem[96] = return_data.size
                        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 161] = arg2
                        mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 229] = 0
                        mem[ceil32(return_data.size) + 293] = msg.sender
                        mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                        mem[ceil32(return_data.size) + 261] = 160
                        mem[ceil32(return_data.size) + 357] = 2
                        mem[ceil32(return_data.size) + 389 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
            else:
                mem[96] = return_data.size
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 101] = this.address
                mem[ceil32(return_data.size) + 133] = arg4
                require ext_code.size(arg1)
                call arg1.mintTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg4
                if ext_call.success:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 161] = arg2
                    mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 229] = 0
                    mem[ceil32(return_data.size) + 293] = msg.sender
                    mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                    mem[ceil32(return_data.size) + 261] = 160
                    mem[ceil32(return_data.size) + 357] = 2
                    mem[ceil32(return_data.size) + 389 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
                else:
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 161] = arg2
                        mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 229] = 0
                        mem[ceil32(return_data.size) + 293] = msg.sender
                        mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                        mem[ceil32(return_data.size) + 261] = 160
                        mem[ceil32(return_data.size) + 357] = 2
                        mem[ceil32(return_data.size) + 389 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
                    else:
                        mem[ceil32(return_data.size) + 97] = return_data.size
                        mem[ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 162] = arg2
                        mem[(2 * ceil32(return_data.size)) + 194] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 198] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 230] = 0
                        mem[(2 * ceil32(return_data.size)) + 294] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 326] = block.timestamp + 1
                        mem[(2 * ceil32(return_data.size)) + 262] = 160
                        mem[(2 * ceil32(return_data.size)) + 358] = 2
                        mem[(2 * ceil32(return_data.size)) + 390 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[(2 * ceil32(return_data.size)) + 390 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 194 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 194
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194]) + 32 <= return_data.size
    else:
        if not return_data.size:
            mem[100] = this.address
            mem[132] = arg4
            require ext_code.size(arg1)
            call arg1._mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg4
            if ext_call.success:
                mem[100] = this.address
                mem[132] = arg4
                require ext_code.size(arg1)
                call arg1.mintTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg4
                if ext_call.success:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = arg2
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = msg.sender
                    mem[324] = block.timestamp + 1
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                else:
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[160] = arg2
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = msg.sender
                        mem[324] = block.timestamp + 1
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    else:
                        mem[96] = return_data.size
                        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 161] = arg2
                        mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 229] = 0
                        mem[ceil32(return_data.size) + 293] = msg.sender
                        mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                        mem[ceil32(return_data.size) + 261] = 160
                        mem[ceil32(return_data.size) + 357] = 2
                        mem[ceil32(return_data.size) + 389 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
            else:
                if not return_data.size:
                    mem[100] = this.address
                    mem[132] = arg4
                    require ext_code.size(arg1)
                    call arg1.mintTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg4
                    if ext_call.success:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[160] = arg2
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = msg.sender
                        mem[324] = block.timestamp + 1
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    else:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[160] = arg2
                            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[196] = ext_call.return_data[0]
                            mem[228] = 0
                            mem[292] = msg.sender
                            mem[324] = block.timestamp + 1
                            mem[260] = 160
                            mem[356] = 2
                            mem[388 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        else:
                            mem[96] = return_data.size
                            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 161] = arg2
                            mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 229] = 0
                            mem[ceil32(return_data.size) + 293] = msg.sender
                            mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                            mem[ceil32(return_data.size) + 261] = 160
                            mem[ceil32(return_data.size) + 357] = 2
                            mem[ceil32(return_data.size) + 389 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
                else:
                    mem[96] = return_data.size
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 101] = this.address
                    mem[ceil32(return_data.size) + 133] = arg4
                    require ext_code.size(arg1)
                    call arg1.mintTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg4
                    if ext_call.success:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 161] = arg2
                        mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 229] = 0
                        mem[ceil32(return_data.size) + 293] = msg.sender
                        mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                        mem[ceil32(return_data.size) + 261] = 160
                        mem[ceil32(return_data.size) + 357] = 2
                        mem[ceil32(return_data.size) + 389 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
                    else:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 161] = arg2
                            mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 229] = 0
                            mem[ceil32(return_data.size) + 293] = msg.sender
                            mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                            mem[ceil32(return_data.size) + 261] = 160
                            mem[ceil32(return_data.size) + 357] = 2
                            mem[ceil32(return_data.size) + 389 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
                        else:
                            mem[ceil32(return_data.size) + 97] = return_data.size
                            mem[ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 162] = arg2
                            mem[(2 * ceil32(return_data.size)) + 194] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 198] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 230] = 0
                            mem[(2 * ceil32(return_data.size)) + 294] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 326] = block.timestamp + 1
                            mem[(2 * ceil32(return_data.size)) + 262] = 160
                            mem[(2 * ceil32(return_data.size)) + 358] = 2
                            mem[(2 * ceil32(return_data.size)) + 390 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[(2 * ceil32(return_data.size)) + 390 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 194 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 194
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194]) + 32 <= return_data.size
        else:
            mem[96] = return_data.size
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 101] = this.address
            mem[ceil32(return_data.size) + 133] = arg4
            require ext_code.size(arg1)
            call arg1._mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg4
            if ext_call.success:
                mem[ceil32(return_data.size) + 101] = this.address
                mem[ceil32(return_data.size) + 133] = arg4
                require ext_code.size(arg1)
                call arg1.mintTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg4
                if ext_call.success:
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 161] = arg2
                    mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 229] = 0
                    mem[ceil32(return_data.size) + 293] = msg.sender
                    mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                    mem[ceil32(return_data.size) + 261] = 160
                    mem[ceil32(return_data.size) + 357] = 2
                    mem[ceil32(return_data.size) + 389 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
                else:
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 161] = arg2
                        mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 229] = 0
                        mem[ceil32(return_data.size) + 293] = msg.sender
                        mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                        mem[ceil32(return_data.size) + 261] = 160
                        mem[ceil32(return_data.size) + 357] = 2
                        mem[ceil32(return_data.size) + 389 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
                    else:
                        mem[ceil32(return_data.size) + 97] = return_data.size
                        mem[ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 162] = arg2
                        mem[(2 * ceil32(return_data.size)) + 194] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 198] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 230] = 0
                        mem[(2 * ceil32(return_data.size)) + 294] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 326] = block.timestamp + 1
                        mem[(2 * ceil32(return_data.size)) + 262] = 160
                        mem[(2 * ceil32(return_data.size)) + 358] = 2
                        mem[(2 * ceil32(return_data.size)) + 390 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[(2 * ceil32(return_data.size)) + 390 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 194 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 194
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194]) + 32 <= return_data.size
            else:
                if not return_data.size:
                    mem[ceil32(return_data.size) + 101] = this.address
                    mem[ceil32(return_data.size) + 133] = arg4
                    require ext_code.size(arg1)
                    call arg1.mintTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg4
                    if ext_call.success:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 161] = arg2
                        mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 229] = 0
                        mem[ceil32(return_data.size) + 293] = msg.sender
                        mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                        mem[ceil32(return_data.size) + 261] = 160
                        mem[ceil32(return_data.size) + 357] = 2
                        mem[ceil32(return_data.size) + 389 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
                    else:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 161] = arg2
                            mem[ceil32(return_data.size) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 197] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 229] = 0
                            mem[ceil32(return_data.size) + 293] = msg.sender
                            mem[ceil32(return_data.size) + 325] = block.timestamp + 1
                            mem[ceil32(return_data.size) + 261] = 160
                            mem[ceil32(return_data.size) + 357] = 2
                            mem[ceil32(return_data.size) + 389 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[ceil32(return_data.size) + 389 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193] <= 4294967296 and mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 193 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 193]) + 32 <= return_data.size
                        else:
                            mem[ceil32(return_data.size) + 97] = return_data.size
                            mem[ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 162] = arg2
                            mem[(2 * ceil32(return_data.size)) + 194] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 198] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 230] = 0
                            mem[(2 * ceil32(return_data.size)) + 294] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 326] = block.timestamp + 1
                            mem[(2 * ceil32(return_data.size)) + 262] = 160
                            mem[(2 * ceil32(return_data.size)) + 358] = 2
                            mem[(2 * ceil32(return_data.size)) + 390 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[(2 * ceil32(return_data.size)) + 390 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 194 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 194
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194]) + 32 <= return_data.size
                else:
                    mem[ceil32(return_data.size) + 97] = return_data.size
                    mem[ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 102] = this.address
                    mem[(2 * ceil32(return_data.size)) + 134] = arg4
                    require ext_code.size(arg1)
                    call arg1.mintTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg4
                    if ext_call.success:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 162] = arg2
                        mem[(2 * ceil32(return_data.size)) + 194] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 198] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 230] = 0
                        mem[(2 * ceil32(return_data.size)) + 294] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 326] = block.timestamp + 1
                        mem[(2 * ceil32(return_data.size)) + 262] = 160
                        mem[(2 * ceil32(return_data.size)) + 358] = 2
                        mem[(2 * ceil32(return_data.size)) + 390 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[(2 * ceil32(return_data.size)) + 390 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 194 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 194
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194]) + 32 <= return_data.size
                    else:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 162] = arg2
                            mem[(2 * ceil32(return_data.size)) + 194] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 198] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 230] = 0
                            mem[(2 * ceil32(return_data.size)) + 294] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 326] = block.timestamp + 1
                            mem[(2 * ceil32(return_data.size)) + 262] = 160
                            mem[(2 * ceil32(return_data.size)) + 358] = 2
                            mem[(2 * ceil32(return_data.size)) + 390 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[(2 * ceil32(return_data.size)) + 390 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 194 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 194
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 194 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 194]) + 32 <= return_data.size
                        else:
                            mem[(2 * ceil32(return_data.size)) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 163] = arg2
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 195] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 199] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 231] = 0
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 327] = block.timestamp + 1
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263] = 160
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 359] = 2
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 391 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 1, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 391 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 195 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 195
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 195 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 195 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 195 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 195] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 195 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 195 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 195]) + 32 <= return_data.size
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
