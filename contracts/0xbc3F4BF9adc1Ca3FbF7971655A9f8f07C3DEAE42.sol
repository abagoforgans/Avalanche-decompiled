contract main {




// =====================  Runtime code  =====================


#
#  - sell(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#  - deposit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#  - withdraw(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256[] arg7)
#
const name = 'Pangolin-v1'


function _fallback() payable {
    revert
}

function buy(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if not arg5:
        mem[96] = 2
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg3:
                    if not arg4:
                        require 10^(-ext_call.return_data[0] + 18)
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'No-exchange-address'
                        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[196] = arg3
                        mem[228] = 64
                        mem[260] = 2
                        mem[292 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _14243 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _14336 = mem[_14243 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_14243 + 192])] = mem[_14243 + 224 len floor32(mem[_14243 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _27520 = mem[ceil32(return_data.size) + 224]
                        if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                            revert with 0, 'Too much slippage'
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                           value mem[ceil32(return_data.size) + 224] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                        if ext_call.success:
                            mem[(32 * _14336) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _14336) + ceil32(return_data.size) + 228] = arg3
                            mem[(32 * _14336) + ceil32(return_data.size) + 260] = _27520
                            mem[(32 * _14336) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _14336) + ceil32(return_data.size) + 356] = block.timestamp + 1
                            mem[(32 * _14336) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _14336) + ceil32(return_data.size) + 388] = 2
                            mem[(32 * _14336) + ceil32(return_data.size) + 420 len 0] = None
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _27520, Array(len=2, data=mem[(32 * _14336) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _14336) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _14336) + (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _40843 = mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * _14336) + ceil32(return_data.size) + mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14336) + ceil32(return_data.size) + mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14336) + ceil32(return_data.size) + mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _41124 = mem[(32 * _14336) + ceil32(return_data.size) + _40843 + 224]
                            mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14336) + ceil32(return_data.size) + _40843 + 224])] = mem[(32 * _14336) + ceil32(return_data.size) + _40843 + 256 len floor32(mem[(32 * _14336) + ceil32(return_data.size) + _40843 + 224])]
                            require 0 < mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 224]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            if not ext_call.success:
                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg6:
                                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args arg6, mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return 64, 
                                   160,
                                   55,
                                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                                   mem[(32 * _41124) + (32 * _14336) + (2 * ceil32(return_data.size)) + 343 len 9],
                                   Mask(184, -256, mem[(32 * _41124) + (32 * _14336) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                                   192,
                                   address(arg1),
                                   address(arg2),
                                   arg3,
                                   mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 256],
                                   arg5,
                                   arg6
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14336) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14336) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _14336) + ceil32(return_data.size) + 260] = _27520
                        mem[(32 * _14336) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14336) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14336) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14336) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14336) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _27520, Array(len=2, data=mem[(32 * _14336) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14336) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14336) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40841 = mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _14336) + ceil32(return_data.size) + mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14336) + ceil32(return_data.size) + mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14336) + ceil32(return_data.size) + mem[(32 * _14336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _41123 = mem[(32 * _14336) + ceil32(return_data.size) + _40841 + 224]
                        mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14336) + ceil32(return_data.size) + _40841 + 224])] = mem[(32 * _14336) + ceil32(return_data.size) + _40841 + 256 len floor32(mem[(32 * _14336) + ceil32(return_data.size) + _40841 + 224])]
                        require 0 < mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        if not ext_call.success:
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41123) + (32 * _14336) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41123) + (32 * _14336) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               arg3,
                               mem[(32 * _14336) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    if 0 / arg4:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    require 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'No-exchange-address'
                    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _14241 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _14335 = mem[_14241 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_14241 + 192])] = mem[_14241 + 224 len floor32(mem[_14241 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _27519 = mem[ceil32(return_data.size) + 224]
                    if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                        revert with 0, 'Too much slippage'
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value mem[ceil32(return_data.size) + 224] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if ext_call.success:
                        mem[(32 * _14335) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14335) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _14335) + ceil32(return_data.size) + 260] = _27519
                        mem[(32 * _14335) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14335) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14335) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14335) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14335) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _27519, Array(len=2, data=mem[(32 * _14335) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14335) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14335) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40839 = mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _14335) + ceil32(return_data.size) + mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14335) + ceil32(return_data.size) + mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14335) + ceil32(return_data.size) + mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _41122 = mem[(32 * _14335) + ceil32(return_data.size) + _40839 + 224]
                        mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14335) + ceil32(return_data.size) + _40839 + 224])] = mem[(32 * _14335) + ceil32(return_data.size) + _40839 + 256 len floor32(mem[(32 * _14335) + ceil32(return_data.size) + _40839 + 224])]
                        require 0 < mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        if not ext_call.success:
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41122) + (32 * _14335) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41122) + (32 * _14335) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               arg3,
                               mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14335) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14335) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14335) + ceil32(return_data.size) + 260] = _27519
                    mem[(32 * _14335) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14335) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14335) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14335) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14335) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27519, Array(len=2, data=mem[(32 * _14335) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14335) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14335) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40837 = mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14335) + ceil32(return_data.size) + mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14335) + ceil32(return_data.size) + mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14335) + ceil32(return_data.size) + mem[(32 * _14335) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41121 = mem[(32 * _14335) + ceil32(return_data.size) + _40837 + 224]
                    mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14335) + ceil32(return_data.size) + _40837 + 224])] = mem[(32 * _14335) + ceil32(return_data.size) + _40837 + 256 len floor32(mem[(32 * _14335) + ceil32(return_data.size) + _40837 + 224])]
                    require 0 < mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41121) + (32 * _14335) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41121) + (32 * _14335) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14335) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                if 10^(-ext_call.return_data[0] + 18) * arg3 / arg3 != 10^(-ext_call.return_data[0] + 18):
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if not arg4:
                    require 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'No-exchange-address'
                    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _14239 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _14334 = mem[_14239 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_14239 + 192])] = mem[_14239 + 224 len floor32(mem[_14239 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _27518 = mem[ceil32(return_data.size) + 224]
                    if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                        revert with 0, 'Too much slippage'
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value mem[ceil32(return_data.size) + 224] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if ext_call.success:
                        mem[(32 * _14334) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14334) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _14334) + ceil32(return_data.size) + 260] = _27518
                        mem[(32 * _14334) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14334) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14334) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14334) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14334) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _27518, Array(len=2, data=mem[(32 * _14334) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14334) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14334) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40835 = mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _14334) + ceil32(return_data.size) + mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14334) + ceil32(return_data.size) + mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14334) + ceil32(return_data.size) + mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _41120 = mem[(32 * _14334) + ceil32(return_data.size) + _40835 + 224]
                        mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14334) + ceil32(return_data.size) + _40835 + 224])] = mem[(32 * _14334) + ceil32(return_data.size) + _40835 + 256 len floor32(mem[(32 * _14334) + ceil32(return_data.size) + _40835 + 224])]
                        require 0 < mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        if not ext_call.success:
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41120) + (32 * _14334) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41120) + (32 * _14334) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               arg3,
                               mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14334) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14334) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14334) + ceil32(return_data.size) + 260] = _27518
                    mem[(32 * _14334) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14334) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14334) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14334) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14334) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27518, Array(len=2, data=mem[(32 * _14334) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14334) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14334) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40833 = mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14334) + ceil32(return_data.size) + mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14334) + ceil32(return_data.size) + mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14334) + ceil32(return_data.size) + mem[(32 * _14334) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41119 = mem[(32 * _14334) + ceil32(return_data.size) + _40833 + 224]
                    mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14334) + ceil32(return_data.size) + _40833 + 224])] = mem[(32 * _14334) + ceil32(return_data.size) + _40833 + 256 len floor32(mem[(32 * _14334) + ceil32(return_data.size) + _40833 + 224])]
                    require 0 < mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41119) + (32 * _14334) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41119) + (32 * _14334) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14334) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                if 10^(-ext_call.return_data[0] + 18) * arg3 * arg4 / arg4 != 10^(-ext_call.return_data[0] + 18) * arg3:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if (10^(-ext_call.return_data[0] + 18) * arg3 * arg4) + 5 * 10^17 < 10^(-ext_call.return_data[0] + 18) * arg3 * arg4:
                    revert with 0, 'SafeMath: addition overflow'
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14237 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _14333 = mem[_14237 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14237 + 192])] = mem[_14237 + 224 len floor32(mem[_14237 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27517 = mem[ceil32(return_data.size) + 224]
                if (10^(-ext_call.return_data[0] + 18) * arg3 * arg4) + 5 * 10^17 / 10^18 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14333) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14333) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14333) + ceil32(return_data.size) + 260] = _27517
                    mem[(32 * _14333) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14333) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14333) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14333) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14333) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27517, Array(len=2, data=mem[(32 * _14333) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14333) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14333) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40831 = mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14333) + ceil32(return_data.size) + mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14333) + ceil32(return_data.size) + mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14333) + ceil32(return_data.size) + mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41118 = mem[(32 * _14333) + ceil32(return_data.size) + _40831 + 224]
                    mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14333) + ceil32(return_data.size) + _40831 + 224])] = mem[(32 * _14333) + ceil32(return_data.size) + _40831 + 256 len floor32(mem[(32 * _14333) + ceil32(return_data.size) + _40831 + 224])]
                    require 0 < mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41118) + (32 * _14333) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41118) + (32 * _14333) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14333) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14333) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14333) + ceil32(return_data.size) + 260] = _27517
                mem[(32 * _14333) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14333) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14333) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14333) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14333) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27517, Array(len=2, data=mem[(32 * _14333) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14333) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14333) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40829 = mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14333) + ceil32(return_data.size) + mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14333) + ceil32(return_data.size) + mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14333) + ceil32(return_data.size) + mem[(32 * _14333) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41117 = mem[(32 * _14333) + ceil32(return_data.size) + _40829 + 224]
                mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14333) + ceil32(return_data.size) + _40829 + 224])] = mem[(32 * _14333) + ceil32(return_data.size) + _40829 + 256 len floor32(mem[(32 * _14333) + ceil32(return_data.size) + _40829 + 224])]
                require 0 < mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41117) + (32 * _14333) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41117) + (32 * _14333) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14333) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            mem[128] = arg2
            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            require ext_code.size(arg2)
            staticcall arg2.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                if not arg4:
                    require 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg2), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'No-exchange-address'
                    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _14251 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _14340 = mem[_14251 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_14251 + 192])] = mem[_14251 + 224 len floor32(mem[_14251 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _27524 = mem[ceil32(return_data.size) + 224]
                    if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                        revert with 0, 'Too much slippage'
                    require ext_code.size(arg2)
                    if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                        if ext_call.success:
                            mem[(32 * _14340) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _14340) + ceil32(return_data.size) + 228] = arg3
                            mem[(32 * _14340) + ceil32(return_data.size) + 260] = _27524
                            mem[(32 * _14340) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _14340) + ceil32(return_data.size) + 356] = block.timestamp + 1
                            mem[(32 * _14340) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _14340) + ceil32(return_data.size) + 388] = 2
                            mem[(32 * _14340) + ceil32(return_data.size) + 420 len 0] = None
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _27524, Array(len=2, data=mem[(32 * _14340) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _14340) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _14340) + (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _40871 = mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                            mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                            _41138 = mem[(32 * _14340) + ceil32(return_data.size) + _40871 + 224]
                            mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14340) + ceil32(return_data.size) + _40871 + 224])] = mem[(32 * _14340) + ceil32(return_data.size) + _40871 + 256 len floor32(mem[(32 * _14340) + ceil32(return_data.size) + _40871 + 224])]
                            require 0 < mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 224]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            if not ext_call.success:
                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg6:
                                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args arg6, mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return 64, 
                                   160,
                                   55,
                                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                                   mem[(32 * _41138) + (32 * _14340) + (2 * ceil32(return_data.size)) + 343 len 9],
                                   Mask(184, -256, mem[(32 * _41138) + (32 * _14340) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                                   192,
                                   address(arg1),
                                   address(arg2),
                                   arg3,
                                   mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256],
                                   arg5,
                                   arg6
                        require ext_code.size(arg2)
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14340) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14340) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _14340) + ceil32(return_data.size) + 260] = _27524
                        mem[(32 * _14340) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14340) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14340) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14340) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14340) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _27524, Array(len=2, data=mem[(32 * _14340) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14340) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14340) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40869 = mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _41137 = mem[(32 * _14340) + ceil32(return_data.size) + _40869 + 224]
                        mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14340) + ceil32(return_data.size) + _40869 + 224])] = mem[(32 * _14340) + ceil32(return_data.size) + _40869 + 256 len floor32(mem[(32 * _14340) + ceil32(return_data.size) + _40869 + 224])]
                        require 0 < mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        if not ext_call.success:
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41137) + (32 * _14340) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41137) + (32 * _14340) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               arg3,
                               mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    call arg2.0xd0e30db0 with:
                       value mem[ceil32(return_data.size) + 224] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if ext_call.success:
                        mem[(32 * _14340) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14340) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _14340) + ceil32(return_data.size) + 260] = _27524
                        mem[(32 * _14340) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14340) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14340) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14340) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14340) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _27524, Array(len=2, data=mem[(32 * _14340) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14340) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14340) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40875 = mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _41140 = mem[(32 * _14340) + ceil32(return_data.size) + _40875 + 224]
                        mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14340) + ceil32(return_data.size) + _40875 + 224])] = mem[(32 * _14340) + ceil32(return_data.size) + _40875 + 256 len floor32(mem[(32 * _14340) + ceil32(return_data.size) + _40875 + 224])]
                        require 0 < mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        if not ext_call.success:
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41140) + (32 * _14340) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41140) + (32 * _14340) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               arg3,
                               mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14340) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14340) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14340) + ceil32(return_data.size) + 260] = _27524
                    mem[(32 * _14340) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14340) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14340) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14340) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14340) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27524, Array(len=2, data=mem[(32 * _14340) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14340) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14340) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40873 = mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14340) + ceil32(return_data.size) + mem[(32 * _14340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41139 = mem[(32 * _14340) + ceil32(return_data.size) + _40873 + 224]
                    mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14340) + ceil32(return_data.size) + _40873 + 224])] = mem[(32 * _14340) + ceil32(return_data.size) + _40873 + 256 len floor32(mem[(32 * _14340) + ceil32(return_data.size) + _40873 + 224])]
                    require 0 < mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41139) + (32 * _14340) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41139) + (32 * _14340) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14340) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                if 0 / arg4:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14249 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _14339 = mem[_14249 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14249 + 192])] = mem[_14249 + 224 len floor32(mem[_14249 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27523 = mem[ceil32(return_data.size) + 224]
                if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(arg2)
                if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if ext_call.success:
                        mem[(32 * _14339) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14339) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _14339) + ceil32(return_data.size) + 260] = _27523
                        mem[(32 * _14339) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14339) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14339) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14339) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14339) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _27523, Array(len=2, data=mem[(32 * _14339) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14339) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14339) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40863 = mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _41134 = mem[(32 * _14339) + ceil32(return_data.size) + _40863 + 224]
                        mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14339) + ceil32(return_data.size) + _40863 + 224])] = mem[(32 * _14339) + ceil32(return_data.size) + _40863 + 256 len floor32(mem[(32 * _14339) + ceil32(return_data.size) + _40863 + 224])]
                        require 0 < mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        if not ext_call.success:
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41134) + (32 * _14339) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41134) + (32 * _14339) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               arg3,
                               mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14339) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14339) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14339) + ceil32(return_data.size) + 260] = _27523
                    mem[(32 * _14339) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14339) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14339) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14339) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14339) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27523, Array(len=2, data=mem[(32 * _14339) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14339) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14339) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40861 = mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41133 = mem[(32 * _14339) + ceil32(return_data.size) + _40861 + 224]
                    mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14339) + ceil32(return_data.size) + _40861 + 224])] = mem[(32 * _14339) + ceil32(return_data.size) + _40861 + 256 len floor32(mem[(32 * _14339) + ceil32(return_data.size) + _40861 + 224])]
                    require 0 < mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41133) + (32 * _14339) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41133) + (32 * _14339) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                call arg2.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14339) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14339) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14339) + ceil32(return_data.size) + 260] = _27523
                    mem[(32 * _14339) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14339) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14339) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14339) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14339) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27523, Array(len=2, data=mem[(32 * _14339) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14339) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14339) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40867 = mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41136 = mem[(32 * _14339) + ceil32(return_data.size) + _40867 + 224]
                    mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14339) + ceil32(return_data.size) + _40867 + 224])] = mem[(32 * _14339) + ceil32(return_data.size) + _40867 + 256 len floor32(mem[(32 * _14339) + ceil32(return_data.size) + _40867 + 224])]
                    require 0 < mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41136) + (32 * _14339) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41136) + (32 * _14339) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14339) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14339) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14339) + ceil32(return_data.size) + 260] = _27523
                mem[(32 * _14339) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14339) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14339) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14339) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14339) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27523, Array(len=2, data=mem[(32 * _14339) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14339) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14339) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40865 = mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14339) + ceil32(return_data.size) + mem[(32 * _14339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41135 = mem[(32 * _14339) + ceil32(return_data.size) + _40865 + 224]
                mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14339) + ceil32(return_data.size) + _40865 + 224])] = mem[(32 * _14339) + ceil32(return_data.size) + _40865 + 256 len floor32(mem[(32 * _14339) + ceil32(return_data.size) + _40865 + 224])]
                require 0 < mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41135) + (32 * _14339) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41135) + (32 * _14339) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14339) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            if 10^(-ext_call.return_data[0] + 18) * arg3 / arg3 != 10^(-ext_call.return_data[0] + 18):
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if not arg4:
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14247 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _14338 = mem[_14247 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14247 + 192])] = mem[_14247 + 224 len floor32(mem[_14247 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27522 = mem[ceil32(return_data.size) + 224]
                if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(arg2)
                if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if ext_call.success:
                        mem[(32 * _14338) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14338) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _14338) + ceil32(return_data.size) + 260] = _27522
                        mem[(32 * _14338) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14338) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14338) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14338) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14338) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _27522, Array(len=2, data=mem[(32 * _14338) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14338) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14338) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40855 = mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _41130 = mem[(32 * _14338) + ceil32(return_data.size) + _40855 + 224]
                        mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14338) + ceil32(return_data.size) + _40855 + 224])] = mem[(32 * _14338) + ceil32(return_data.size) + _40855 + 256 len floor32(mem[(32 * _14338) + ceil32(return_data.size) + _40855 + 224])]
                        require 0 < mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        if not ext_call.success:
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41130) + (32 * _14338) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41130) + (32 * _14338) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               arg3,
                               mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14338) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14338) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14338) + ceil32(return_data.size) + 260] = _27522
                    mem[(32 * _14338) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14338) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14338) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14338) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14338) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27522, Array(len=2, data=mem[(32 * _14338) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14338) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14338) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40853 = mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41129 = mem[(32 * _14338) + ceil32(return_data.size) + _40853 + 224]
                    mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14338) + ceil32(return_data.size) + _40853 + 224])] = mem[(32 * _14338) + ceil32(return_data.size) + _40853 + 256 len floor32(mem[(32 * _14338) + ceil32(return_data.size) + _40853 + 224])]
                    require 0 < mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41129) + (32 * _14338) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41129) + (32 * _14338) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                call arg2.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14338) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14338) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14338) + ceil32(return_data.size) + 260] = _27522
                    mem[(32 * _14338) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14338) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14338) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14338) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14338) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27522, Array(len=2, data=mem[(32 * _14338) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14338) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14338) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40859 = mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41132 = mem[(32 * _14338) + ceil32(return_data.size) + _40859 + 224]
                    mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14338) + ceil32(return_data.size) + _40859 + 224])] = mem[(32 * _14338) + ceil32(return_data.size) + _40859 + 256 len floor32(mem[(32 * _14338) + ceil32(return_data.size) + _40859 + 224])]
                    require 0 < mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41132) + (32 * _14338) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41132) + (32 * _14338) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14338) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14338) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14338) + ceil32(return_data.size) + 260] = _27522
                mem[(32 * _14338) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14338) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14338) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14338) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14338) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27522, Array(len=2, data=mem[(32 * _14338) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14338) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14338) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40857 = mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14338) + ceil32(return_data.size) + mem[(32 * _14338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41131 = mem[(32 * _14338) + ceil32(return_data.size) + _40857 + 224]
                mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14338) + ceil32(return_data.size) + _40857 + 224])] = mem[(32 * _14338) + ceil32(return_data.size) + _40857 + 256 len floor32(mem[(32 * _14338) + ceil32(return_data.size) + _40857 + 224])]
                require 0 < mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41131) + (32 * _14338) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41131) + (32 * _14338) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14338) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            if 10^(-ext_call.return_data[0] + 18) * arg3 * arg4 / arg4 != 10^(-ext_call.return_data[0] + 18) * arg3:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if (10^(-ext_call.return_data[0] + 18) * arg3 * arg4) + 5 * 10^17 < 10^(-ext_call.return_data[0] + 18) * arg3 * arg4:
                revert with 0, 'SafeMath: addition overflow'
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14245 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _14337 = mem[_14245 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14245 + 192])] = mem[_14245 + 224 len floor32(mem[_14245 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27521 = mem[ceil32(return_data.size) + 224]
            if (10^(-ext_call.return_data[0] + 18) * arg3 * arg4) + 5 * 10^17 / 10^18 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(arg2)
            if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14337) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14337) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14337) + ceil32(return_data.size) + 260] = _27521
                    mem[(32 * _14337) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14337) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14337) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14337) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14337) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27521, Array(len=2, data=mem[(32 * _14337) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14337) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14337) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40847 = mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41126 = mem[(32 * _14337) + ceil32(return_data.size) + _40847 + 224]
                    mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14337) + ceil32(return_data.size) + _40847 + 224])] = mem[(32 * _14337) + ceil32(return_data.size) + _40847 + 256 len floor32(mem[(32 * _14337) + ceil32(return_data.size) + _40847 + 224])]
                    require 0 < mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41126) + (32 * _14337) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41126) + (32 * _14337) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14337) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14337) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14337) + ceil32(return_data.size) + 260] = _27521
                mem[(32 * _14337) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14337) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14337) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14337) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14337) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27521, Array(len=2, data=mem[(32 * _14337) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14337) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14337) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40845 = mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41125 = mem[(32 * _14337) + ceil32(return_data.size) + _40845 + 224]
                mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14337) + ceil32(return_data.size) + _40845 + 224])] = mem[(32 * _14337) + ceil32(return_data.size) + _40845 + 256 len floor32(mem[(32 * _14337) + ceil32(return_data.size) + _40845 + 224])]
                require 0 < mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41125) + (32 * _14337) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41125) + (32 * _14337) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            call arg2.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14337) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14337) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14337) + ceil32(return_data.size) + 260] = _27521
                mem[(32 * _14337) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14337) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14337) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14337) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14337) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27521, Array(len=2, data=mem[(32 * _14337) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14337) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14337) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40851 = mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41128 = mem[(32 * _14337) + ceil32(return_data.size) + _40851 + 224]
                mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14337) + ceil32(return_data.size) + _40851 + 224])] = mem[(32 * _14337) + ceil32(return_data.size) + _40851 + 256 len floor32(mem[(32 * _14337) + ceil32(return_data.size) + _40851 + 224])]
                require 0 < mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41128) + (32 * _14337) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41128) + (32 * _14337) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14337) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14337) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _14337) + ceil32(return_data.size) + 260] = _27521
            mem[(32 * _14337) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14337) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14337) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14337) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14337) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, _27521, Array(len=2, data=mem[(32 * _14337) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14337) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14337) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40849 = mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14337) + ceil32(return_data.size) + mem[(32 * _14337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _41127 = mem[(32 * _14337) + ceil32(return_data.size) + _40849 + 224]
            mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14337) + ceil32(return_data.size) + _40849 + 224])] = mem[(32 * _14337) + ceil32(return_data.size) + _40849 + 256 len floor32(mem[(32 * _14337) + ceil32(return_data.size) + _40849 + 224])]
            require 0 < mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 224]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if not ext_call.success:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41127) + (32 * _14337) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41127) + (32 * _14337) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   arg3,
                   mem[(32 * _14337) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
            mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[160] = arg1
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                if not arg4:
                    require 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'No-exchange-address'
                    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _14259 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _14344 = mem[_14259 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_14259 + 192])] = mem[_14259 + 224 len floor32(mem[_14259 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _27528 = mem[ceil32(return_data.size) + 224]
                    if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                        revert with 0, 'Too much slippage'
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value mem[ceil32(return_data.size) + 224] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if ext_call.success:
                        mem[(32 * _14344) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14344) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _14344) + ceil32(return_data.size) + 260] = _27528
                        mem[(32 * _14344) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14344) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14344) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14344) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14344) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _27528, Array(len=2, data=mem[(32 * _14344) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14344) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14344) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40891 = mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _14344) + ceil32(return_data.size) + mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14344) + ceil32(return_data.size) + mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14344) + ceil32(return_data.size) + mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _41148 = mem[(32 * _14344) + ceil32(return_data.size) + _40891 + 224]
                        mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14344) + ceil32(return_data.size) + _40891 + 224])] = mem[(32 * _14344) + ceil32(return_data.size) + _40891 + 256 len floor32(mem[(32 * _14344) + ceil32(return_data.size) + _40891 + 224])]
                        require 0 < mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 224]
                        if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            require ext_code.size(arg1)
                            if not ext_call.success:
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call arg1.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41148) + (32 * _14344) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41148) + (32 * _14344) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               arg3,
                               mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14344) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14344) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14344) + ceil32(return_data.size) + 260] = _27528
                    mem[(32 * _14344) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14344) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14344) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14344) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14344) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27528, Array(len=2, data=mem[(32 * _14344) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14344) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14344) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40889 = mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14344) + ceil32(return_data.size) + mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14344) + ceil32(return_data.size) + mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14344) + ceil32(return_data.size) + mem[(32 * _14344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41147 = mem[(32 * _14344) + ceil32(return_data.size) + _40889 + 224]
                    mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14344) + ceil32(return_data.size) + _40889 + 224])] = mem[(32 * _14344) + ceil32(return_data.size) + _40889 + 256 len floor32(mem[(32 * _14344) + ceil32(return_data.size) + _40889 + 224])]
                    require 0 < mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 224]
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        require ext_code.size(arg1)
                        if not ext_call.success:
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call arg1.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41147) + (32 * _14344) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41147) + (32 * _14344) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14344) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                if 0 / arg4:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14257 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _14343 = mem[_14257 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14257 + 192])] = mem[_14257 + 224 len floor32(mem[_14257 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27527 = mem[ceil32(return_data.size) + 224]
                if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14343) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14343) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14343) + ceil32(return_data.size) + 260] = _27527
                    mem[(32 * _14343) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14343) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14343) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14343) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14343) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27527, Array(len=2, data=mem[(32 * _14343) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14343) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14343) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40887 = mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14343) + ceil32(return_data.size) + mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14343) + ceil32(return_data.size) + mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14343) + ceil32(return_data.size) + mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41146 = mem[(32 * _14343) + ceil32(return_data.size) + _40887 + 224]
                    mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14343) + ceil32(return_data.size) + _40887 + 224])] = mem[(32 * _14343) + ceil32(return_data.size) + _40887 + 256 len floor32(mem[(32 * _14343) + ceil32(return_data.size) + _40887 + 224])]
                    require 0 < mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 224]
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        require ext_code.size(arg1)
                        if not ext_call.success:
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call arg1.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41146) + (32 * _14343) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41146) + (32 * _14343) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14343) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14343) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14343) + ceil32(return_data.size) + 260] = _27527
                mem[(32 * _14343) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14343) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14343) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14343) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14343) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27527, Array(len=2, data=mem[(32 * _14343) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14343) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14343) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40885 = mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14343) + ceil32(return_data.size) + mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14343) + ceil32(return_data.size) + mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14343) + ceil32(return_data.size) + mem[(32 * _14343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41145 = mem[(32 * _14343) + ceil32(return_data.size) + _40885 + 224]
                mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14343) + ceil32(return_data.size) + _40885 + 224])] = mem[(32 * _14343) + ceil32(return_data.size) + _40885 + 256 len floor32(mem[(32 * _14343) + ceil32(return_data.size) + _40885 + 224])]
                require 0 < mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41145) + (32 * _14343) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41145) + (32 * _14343) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14343) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            if 10^(-ext_call.return_data[0] + 18) * arg3 / arg3 != 10^(-ext_call.return_data[0] + 18):
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if not arg4:
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14255 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _14342 = mem[_14255 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14255 + 192])] = mem[_14255 + 224 len floor32(mem[_14255 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27526 = mem[ceil32(return_data.size) + 224]
                if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14342) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14342) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14342) + ceil32(return_data.size) + 260] = _27526
                    mem[(32 * _14342) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14342) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14342) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14342) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14342) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27526, Array(len=2, data=mem[(32 * _14342) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14342) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14342) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40883 = mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14342) + ceil32(return_data.size) + mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14342) + ceil32(return_data.size) + mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14342) + ceil32(return_data.size) + mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41144 = mem[(32 * _14342) + ceil32(return_data.size) + _40883 + 224]
                    mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14342) + ceil32(return_data.size) + _40883 + 224])] = mem[(32 * _14342) + ceil32(return_data.size) + _40883 + 256 len floor32(mem[(32 * _14342) + ceil32(return_data.size) + _40883 + 224])]
                    require 0 < mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 224]
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        require ext_code.size(arg1)
                        if not ext_call.success:
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call arg1.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41144) + (32 * _14342) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41144) + (32 * _14342) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14342) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14342) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14342) + ceil32(return_data.size) + 260] = _27526
                mem[(32 * _14342) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14342) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14342) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14342) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14342) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27526, Array(len=2, data=mem[(32 * _14342) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14342) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14342) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40881 = mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14342) + ceil32(return_data.size) + mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14342) + ceil32(return_data.size) + mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14342) + ceil32(return_data.size) + mem[(32 * _14342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41143 = mem[(32 * _14342) + ceil32(return_data.size) + _40881 + 224]
                mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14342) + ceil32(return_data.size) + _40881 + 224])] = mem[(32 * _14342) + ceil32(return_data.size) + _40881 + 256 len floor32(mem[(32 * _14342) + ceil32(return_data.size) + _40881 + 224])]
                require 0 < mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41143) + (32 * _14342) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41143) + (32 * _14342) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14342) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            if 10^(-ext_call.return_data[0] + 18) * arg3 * arg4 / arg4 != 10^(-ext_call.return_data[0] + 18) * arg3:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if (10^(-ext_call.return_data[0] + 18) * arg3 * arg4) + 5 * 10^17 < 10^(-ext_call.return_data[0] + 18) * arg3 * arg4:
                revert with 0, 'SafeMath: addition overflow'
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14253 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _14341 = mem[_14253 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14253 + 192])] = mem[_14253 + 224 len floor32(mem[_14253 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27525 = mem[ceil32(return_data.size) + 224]
            if (10^(-ext_call.return_data[0] + 18) * arg3 * arg4) + 5 * 10^17 / 10^18 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14341) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14341) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14341) + ceil32(return_data.size) + 260] = _27525
                mem[(32 * _14341) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14341) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14341) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14341) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14341) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27525, Array(len=2, data=mem[(32 * _14341) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14341) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14341) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40879 = mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14341) + ceil32(return_data.size) + mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14341) + ceil32(return_data.size) + mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14341) + ceil32(return_data.size) + mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41142 = mem[(32 * _14341) + ceil32(return_data.size) + _40879 + 224]
                mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14341) + ceil32(return_data.size) + _40879 + 224])] = mem[(32 * _14341) + ceil32(return_data.size) + _40879 + 256 len floor32(mem[(32 * _14341) + ceil32(return_data.size) + _40879 + 224])]
                require 0 < mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41142) + (32 * _14341) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41142) + (32 * _14341) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14341) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14341) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _14341) + ceil32(return_data.size) + 260] = _27525
            mem[(32 * _14341) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14341) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14341) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14341) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14341) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, _27525, Array(len=2, data=mem[(32 * _14341) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14341) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14341) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40877 = mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _14341) + ceil32(return_data.size) + mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14341) + ceil32(return_data.size) + mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14341) + ceil32(return_data.size) + mem[(32 * _14341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _41141 = mem[(32 * _14341) + ceil32(return_data.size) + _40877 + 224]
            mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14341) + ceil32(return_data.size) + _40877 + 224])] = mem[(32 * _14341) + ceil32(return_data.size) + _40877 + 256 len floor32(mem[(32 * _14341) + ceil32(return_data.size) + _40877 + 224])]
            require 0 < mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41141) + (32 * _14341) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41141) + (32 * _14341) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   arg3,
                   mem[(32 * _14341) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        mem[128] = arg2
        mem[160] = arg1
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if not arg4:
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14267 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                _14348 = mem[_14267 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14267 + 192])] = mem[_14267 + 224 len floor32(mem[_14267 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27532 = mem[ceil32(return_data.size) + 224]
                if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(arg2)
                if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if ext_call.success:
                        mem[(32 * _14348) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14348) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _14348) + ceil32(return_data.size) + 260] = _27532
                        mem[(32 * _14348) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14348) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14348) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14348) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14348) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _27532, Array(len=2, data=mem[(32 * _14348) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14348) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14348) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40919 = mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _41162 = mem[(32 * _14348) + ceil32(return_data.size) + _40919 + 224]
                        mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14348) + ceil32(return_data.size) + _40919 + 224])] = mem[(32 * _14348) + ceil32(return_data.size) + _40919 + 256 len floor32(mem[(32 * _14348) + ceil32(return_data.size) + _40919 + 224])]
                        require 0 < mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 224]
                        if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            require ext_code.size(arg1)
                            if not ext_call.success:
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call arg1.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41162) + (32 * _14348) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41162) + (32 * _14348) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               arg3,
                               mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14348) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14348) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14348) + ceil32(return_data.size) + 260] = _27532
                    mem[(32 * _14348) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14348) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14348) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14348) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14348) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27532, Array(len=2, data=mem[(32 * _14348) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14348) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14348) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40917 = mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41161 = mem[(32 * _14348) + ceil32(return_data.size) + _40917 + 224]
                    mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14348) + ceil32(return_data.size) + _40917 + 224])] = mem[(32 * _14348) + ceil32(return_data.size) + _40917 + 256 len floor32(mem[(32 * _14348) + ceil32(return_data.size) + _40917 + 224])]
                    require 0 < mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 224]
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        require ext_code.size(arg1)
                        if not ext_call.success:
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call arg1.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41161) + (32 * _14348) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41161) + (32 * _14348) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                call arg2.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14348) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14348) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14348) + ceil32(return_data.size) + 260] = _27532
                    mem[(32 * _14348) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14348) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14348) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14348) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14348) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27532, Array(len=2, data=mem[(32 * _14348) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14348) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14348) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40923 = mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41164 = mem[(32 * _14348) + ceil32(return_data.size) + _40923 + 224]
                    mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14348) + ceil32(return_data.size) + _40923 + 224])] = mem[(32 * _14348) + ceil32(return_data.size) + _40923 + 256 len floor32(mem[(32 * _14348) + ceil32(return_data.size) + _40923 + 224])]
                    require 0 < mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 224]
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        require ext_code.size(arg1)
                        if not ext_call.success:
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call arg1.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41164) + (32 * _14348) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41164) + (32 * _14348) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14348) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14348) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14348) + ceil32(return_data.size) + 260] = _27532
                mem[(32 * _14348) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14348) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14348) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14348) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14348) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27532, Array(len=2, data=mem[(32 * _14348) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14348) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14348) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40921 = mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14348) + ceil32(return_data.size) + mem[(32 * _14348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41163 = mem[(32 * _14348) + ceil32(return_data.size) + _40921 + 224]
                mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14348) + ceil32(return_data.size) + _40921 + 224])] = mem[(32 * _14348) + ceil32(return_data.size) + _40921 + 256 len floor32(mem[(32 * _14348) + ceil32(return_data.size) + _40921 + 224])]
                require 0 < mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41163) + (32 * _14348) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41163) + (32 * _14348) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14348) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            if 0 / arg4:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14265 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _14347 = mem[_14265 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14265 + 192])] = mem[_14265 + 224 len floor32(mem[_14265 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27531 = mem[ceil32(return_data.size) + 224]
            if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(arg2)
            if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14347) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14347) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14347) + ceil32(return_data.size) + 260] = _27531
                    mem[(32 * _14347) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14347) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14347) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14347) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14347) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27531, Array(len=2, data=mem[(32 * _14347) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14347) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14347) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40911 = mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41158 = mem[(32 * _14347) + ceil32(return_data.size) + _40911 + 224]
                    mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14347) + ceil32(return_data.size) + _40911 + 224])] = mem[(32 * _14347) + ceil32(return_data.size) + _40911 + 256 len floor32(mem[(32 * _14347) + ceil32(return_data.size) + _40911 + 224])]
                    require 0 < mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 224]
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        require ext_code.size(arg1)
                        if not ext_call.success:
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call arg1.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41158) + (32 * _14347) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41158) + (32 * _14347) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14347) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14347) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14347) + ceil32(return_data.size) + 260] = _27531
                mem[(32 * _14347) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14347) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14347) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14347) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14347) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27531, Array(len=2, data=mem[(32 * _14347) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14347) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14347) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40909 = mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41157 = mem[(32 * _14347) + ceil32(return_data.size) + _40909 + 224]
                mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14347) + ceil32(return_data.size) + _40909 + 224])] = mem[(32 * _14347) + ceil32(return_data.size) + _40909 + 256 len floor32(mem[(32 * _14347) + ceil32(return_data.size) + _40909 + 224])]
                require 0 < mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41157) + (32 * _14347) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41157) + (32 * _14347) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            call arg2.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14347) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14347) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14347) + ceil32(return_data.size) + 260] = _27531
                mem[(32 * _14347) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14347) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14347) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14347) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14347) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27531, Array(len=2, data=mem[(32 * _14347) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14347) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14347) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40915 = mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41160 = mem[(32 * _14347) + ceil32(return_data.size) + _40915 + 224]
                mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14347) + ceil32(return_data.size) + _40915 + 224])] = mem[(32 * _14347) + ceil32(return_data.size) + _40915 + 256 len floor32(mem[(32 * _14347) + ceil32(return_data.size) + _40915 + 224])]
                require 0 < mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41160) + (32 * _14347) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41160) + (32 * _14347) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14347) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14347) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _14347) + ceil32(return_data.size) + 260] = _27531
            mem[(32 * _14347) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14347) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14347) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14347) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14347) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, _27531, Array(len=2, data=mem[(32 * _14347) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14347) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14347) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40913 = mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14347) + ceil32(return_data.size) + mem[(32 * _14347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _41159 = mem[(32 * _14347) + ceil32(return_data.size) + _40913 + 224]
            mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14347) + ceil32(return_data.size) + _40913 + 224])] = mem[(32 * _14347) + ceil32(return_data.size) + _40913 + 256 len floor32(mem[(32 * _14347) + ceil32(return_data.size) + _40913 + 224])]
            require 0 < mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41159) + (32 * _14347) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41159) + (32 * _14347) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   arg3,
                   mem[(32 * _14347) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        if 10^(-ext_call.return_data[0] + 18) * arg3 / arg3 != 10^(-ext_call.return_data[0] + 18):
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not arg4:
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14263 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _14346 = mem[_14263 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14263 + 192])] = mem[_14263 + 224 len floor32(mem[_14263 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27530 = mem[ceil32(return_data.size) + 224]
            if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(arg2)
            if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14346) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14346) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _14346) + ceil32(return_data.size) + 260] = _27530
                    mem[(32 * _14346) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14346) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14346) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14346) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14346) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _27530, Array(len=2, data=mem[(32 * _14346) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14346) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14346) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40903 = mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _41154 = mem[(32 * _14346) + ceil32(return_data.size) + _40903 + 224]
                    mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14346) + ceil32(return_data.size) + _40903 + 224])] = mem[(32 * _14346) + ceil32(return_data.size) + _40903 + 256 len floor32(mem[(32 * _14346) + ceil32(return_data.size) + _40903 + 224])]
                    require 0 < mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 224]
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        require ext_code.size(arg1)
                        if not ext_call.success:
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call arg1.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41154) + (32 * _14346) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41154) + (32 * _14346) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           arg3,
                           mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14346) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14346) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14346) + ceil32(return_data.size) + 260] = _27530
                mem[(32 * _14346) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14346) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14346) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14346) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14346) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27530, Array(len=2, data=mem[(32 * _14346) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14346) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14346) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40901 = mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41153 = mem[(32 * _14346) + ceil32(return_data.size) + _40901 + 224]
                mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14346) + ceil32(return_data.size) + _40901 + 224])] = mem[(32 * _14346) + ceil32(return_data.size) + _40901 + 256 len floor32(mem[(32 * _14346) + ceil32(return_data.size) + _40901 + 224])]
                require 0 < mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41153) + (32 * _14346) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41153) + (32 * _14346) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            call arg2.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14346) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14346) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14346) + ceil32(return_data.size) + 260] = _27530
                mem[(32 * _14346) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14346) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14346) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14346) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14346) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27530, Array(len=2, data=mem[(32 * _14346) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14346) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14346) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40907 = mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41156 = mem[(32 * _14346) + ceil32(return_data.size) + _40907 + 224]
                mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14346) + ceil32(return_data.size) + _40907 + 224])] = mem[(32 * _14346) + ceil32(return_data.size) + _40907 + 256 len floor32(mem[(32 * _14346) + ceil32(return_data.size) + _40907 + 224])]
                require 0 < mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41156) + (32 * _14346) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41156) + (32 * _14346) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14346) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14346) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _14346) + ceil32(return_data.size) + 260] = _27530
            mem[(32 * _14346) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14346) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14346) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14346) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14346) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, _27530, Array(len=2, data=mem[(32 * _14346) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14346) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14346) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40905 = mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14346) + ceil32(return_data.size) + mem[(32 * _14346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _41155 = mem[(32 * _14346) + ceil32(return_data.size) + _40905 + 224]
            mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14346) + ceil32(return_data.size) + _40905 + 224])] = mem[(32 * _14346) + ceil32(return_data.size) + _40905 + 256 len floor32(mem[(32 * _14346) + ceil32(return_data.size) + _40905 + 224])]
            require 0 < mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41155) + (32 * _14346) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41155) + (32 * _14346) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   arg3,
                   mem[(32 * _14346) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        if 10^(-ext_call.return_data[0] + 18) * arg3 * arg4 / arg4 != 10^(-ext_call.return_data[0] + 18) * arg3:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if (10^(-ext_call.return_data[0] + 18) * arg3 * arg4) + 5 * 10^17 < 10^(-ext_call.return_data[0] + 18) * arg3 * arg4:
            revert with 0, 'SafeMath: addition overflow'
        require 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'No-exchange-address'
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _14261 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _14345 = mem[_14261 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_14261 + 192])] = mem[_14261 + 224 len floor32(mem[_14261 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _27529 = mem[ceil32(return_data.size) + 224]
        if (10^(-ext_call.return_data[0] + 18) * arg3 * arg4) + 5 * 10^17 / 10^18 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
            revert with 0, 'Too much slippage'
        require ext_code.size(arg2)
        if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14345) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14345) + ceil32(return_data.size) + 228] = arg3
                mem[(32 * _14345) + ceil32(return_data.size) + 260] = _27529
                mem[(32 * _14345) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14345) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14345) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14345) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14345) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, _27529, Array(len=2, data=mem[(32 * _14345) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14345) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14345) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40895 = mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                _41150 = mem[(32 * _14345) + ceil32(return_data.size) + _40895 + 224]
                mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14345) + ceil32(return_data.size) + _40895 + 224])] = mem[(32 * _14345) + ceil32(return_data.size) + _40895 + 256 len floor32(mem[(32 * _14345) + ceil32(return_data.size) + _40895 + 224])]
                require 0 < mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41150) + (32 * _14345) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41150) + (32 * _14345) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       arg3,
                       mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14345) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14345) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _14345) + ceil32(return_data.size) + 260] = _27529
            mem[(32 * _14345) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14345) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14345) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14345) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14345) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, _27529, Array(len=2, data=mem[(32 * _14345) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14345) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14345) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40893 = mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _41149 = mem[(32 * _14345) + ceil32(return_data.size) + _40893 + 224]
            mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14345) + ceil32(return_data.size) + _40893 + 224])] = mem[(32 * _14345) + ceil32(return_data.size) + _40893 + 256 len floor32(mem[(32 * _14345) + ceil32(return_data.size) + _40893 + 224])]
            require 0 < mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41149) + (32 * _14345) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41149) + (32 * _14345) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   arg3,
                   mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        call arg2.0xd0e30db0 with:
           value mem[ceil32(return_data.size) + 224] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if ext_call.success:
            mem[(32 * _14345) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14345) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _14345) + ceil32(return_data.size) + 260] = _27529
            mem[(32 * _14345) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14345) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14345) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14345) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14345) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, _27529, Array(len=2, data=mem[(32 * _14345) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14345) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14345) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40899 = mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _41152 = mem[(32 * _14345) + ceil32(return_data.size) + _40899 + 224]
            mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14345) + ceil32(return_data.size) + _40899 + 224])] = mem[(32 * _14345) + ceil32(return_data.size) + _40899 + 256 len floor32(mem[(32 * _14345) + ceil32(return_data.size) + _40899 + 224])]
            require 0 < mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41152) + (32 * _14345) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41152) + (32 * _14345) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   arg3,
                   mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14345) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * _14345) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _14345) + ceil32(return_data.size) + 260] = _27529
        mem[(32 * _14345) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _14345) + ceil32(return_data.size) + 356] = block.timestamp + 1
        mem[(32 * _14345) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _14345) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _14345) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _27529, Array(len=2, data=mem[(32 * _14345) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14345) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _14345) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _40897 = mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14345) + ceil32(return_data.size) + mem[(32 * _14345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _41151 = mem[(32 * _14345) + ceil32(return_data.size) + _40897 + 224]
        mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14345) + ceil32(return_data.size) + _40897 + 224])] = mem[(32 * _14345) + ceil32(return_data.size) + _40897 + 256 len floor32(mem[(32 * _14345) + ceil32(return_data.size) + _40897 + 224])]
        require 0 < mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 224]
        if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg3
            require ext_code.size(arg1)
            if not ext_call.success:
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call arg1.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg6, mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               55,
               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               mem[(32 * _41151) + (32 * _14345) + (2 * ceil32(return_data.size)) + 343 len 9],
               Mask(184, -256, mem[(32 * _41151) + (32 * _14345) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
               192,
               address(arg1),
               address(arg2),
               arg3,
               mem[(32 * _14345) + (2 * ceil32(return_data.size)) + 256],
               arg5,
               arg6
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.getUint(uint256 arg1) with:
         gas gas_remaining wei
        args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
            mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not arg4:
                    require 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'No-exchange-address'
                    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 64
                    mem[260] = 2
                    mem[292 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _14275 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _14352 = mem[_14275 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_14275 + 192])] = mem[_14275 + 224 len floor32(mem[_14275 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _27536 = mem[ceil32(return_data.size) + 224]
                    if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                        revert with 0, 'Too much slippage'
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                       value mem[ceil32(return_data.size) + 224] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if ext_call.success:
                        mem[(32 * _14352) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14352) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                        mem[(32 * _14352) + ceil32(return_data.size) + 260] = _27536
                        mem[(32 * _14352) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14352) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14352) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14352) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14352) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _27536, Array(len=2, data=mem[(32 * _14352) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14352) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14352) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40939 = mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _14352) + ceil32(return_data.size) + mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14352) + ceil32(return_data.size) + mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                        mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14352) + ceil32(return_data.size) + mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        _41172 = mem[(32 * _14352) + ceil32(return_data.size) + _40939 + 224]
                        mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14352) + ceil32(return_data.size) + _40939 + 224])] = mem[(32 * _14352) + ceil32(return_data.size) + _40939 + 256 len floor32(mem[(32 * _14352) + ceil32(return_data.size) + _40939 + 224])]
                        require 0 < mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        if not ext_call.success:
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41172) + (32 * _14352) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41172) + (32 * _14352) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               ext_call.return_data[0],
                               mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14352) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14352) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[(32 * _14352) + ceil32(return_data.size) + 260] = _27536
                    mem[(32 * _14352) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14352) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14352) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14352) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14352) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _27536, Array(len=2, data=mem[(32 * _14352) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14352) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14352) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40937 = mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _14352) + ceil32(return_data.size) + mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14352) + ceil32(return_data.size) + mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14352) + ceil32(return_data.size) + mem[(32 * _14352) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _41171 = mem[(32 * _14352) + ceil32(return_data.size) + _40937 + 224]
                    mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14352) + ceil32(return_data.size) + _40937 + 224])] = mem[(32 * _14352) + ceil32(return_data.size) + _40937 + 256 len floor32(mem[(32 * _14352) + ceil32(return_data.size) + _40937 + 224])]
                    require 0 < mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41171) + (32 * _14352) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41171) + (32 * _14352) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           ext_call.return_data[0],
                           mem[(32 * _14352) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                if 0 / arg4:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = ext_call.return_data[0]
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14273 = mem[192 len 4], ext_call.return_data[0 len 28]
                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                _14351 = mem[_14273 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14273 + 192])] = mem[_14273 + 224 len floor32(mem[_14273 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27535 = mem[ceil32(return_data.size) + 224]
                if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14351) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14351) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[(32 * _14351) + ceil32(return_data.size) + 260] = _27535
                    mem[(32 * _14351) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14351) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14351) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14351) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14351) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _27535, Array(len=2, data=mem[(32 * _14351) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14351) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14351) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40935 = mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _14351) + ceil32(return_data.size) + mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14351) + ceil32(return_data.size) + mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14351) + ceil32(return_data.size) + mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _41170 = mem[(32 * _14351) + ceil32(return_data.size) + _40935 + 224]
                    mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14351) + ceil32(return_data.size) + _40935 + 224])] = mem[(32 * _14351) + ceil32(return_data.size) + _40935 + 256 len floor32(mem[(32 * _14351) + ceil32(return_data.size) + _40935 + 224])]
                    require 0 < mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41170) + (32 * _14351) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41170) + (32 * _14351) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           ext_call.return_data[0],
                           mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14351) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14351) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14351) + ceil32(return_data.size) + 260] = _27535
                mem[(32 * _14351) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14351) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14351) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14351) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14351) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27535, Array(len=2, data=mem[(32 * _14351) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14351) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14351) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40933 = mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14351) + ceil32(return_data.size) + mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14351) + ceil32(return_data.size) + mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14351) + ceil32(return_data.size) + mem[(32 * _14351) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41169 = mem[(32 * _14351) + ceil32(return_data.size) + _40933 + 224]
                mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14351) + ceil32(return_data.size) + _40933 + 224])] = mem[(32 * _14351) + ceil32(return_data.size) + _40933 + 256 len floor32(mem[(32 * _14351) + ceil32(return_data.size) + _40933 + 224])]
                require 0 < mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41169) + (32 * _14351) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41169) + (32 * _14351) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14351) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-ext_call.return_data[0] + 18):
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if not arg4:
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = ext_call.return_data[0]
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14271 = mem[192 len 4], ext_call.return_data[0 len 28]
                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                _14350 = mem[_14271 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14271 + 192])] = mem[_14271 + 224 len floor32(mem[_14271 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27534 = mem[ceil32(return_data.size) + 224]
                if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14350) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14350) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[(32 * _14350) + ceil32(return_data.size) + 260] = _27534
                    mem[(32 * _14350) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14350) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14350) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14350) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14350) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _27534, Array(len=2, data=mem[(32 * _14350) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14350) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14350) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40931 = mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _14350) + ceil32(return_data.size) + mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14350) + ceil32(return_data.size) + mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14350) + ceil32(return_data.size) + mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _41168 = mem[(32 * _14350) + ceil32(return_data.size) + _40931 + 224]
                    mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14350) + ceil32(return_data.size) + _40931 + 224])] = mem[(32 * _14350) + ceil32(return_data.size) + _40931 + 256 len floor32(mem[(32 * _14350) + ceil32(return_data.size) + _40931 + 224])]
                    require 0 < mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41168) + (32 * _14350) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41168) + (32 * _14350) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           ext_call.return_data[0],
                           mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14350) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14350) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14350) + ceil32(return_data.size) + 260] = _27534
                mem[(32 * _14350) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14350) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14350) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14350) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14350) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27534, Array(len=2, data=mem[(32 * _14350) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14350) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14350) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40929 = mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14350) + ceil32(return_data.size) + mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14350) + ceil32(return_data.size) + mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14350) + ceil32(return_data.size) + mem[(32 * _14350) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41167 = mem[(32 * _14350) + ceil32(return_data.size) + _40929 + 224]
                mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14350) + ceil32(return_data.size) + _40929 + 224])] = mem[(32 * _14350) + ceil32(return_data.size) + _40929 + 256 len floor32(mem[(32 * _14350) + ceil32(return_data.size) + _40929 + 224])]
                require 0 < mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41167) + (32 * _14350) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41167) + (32 * _14350) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14350) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4 / arg4 != 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0]:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if (10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4) + 5 * 10^17 < 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4:
                revert with 0, 'SafeMath: addition overflow'
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14269 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _14349 = mem[_14269 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14269 + 192])] = mem[_14269 + 224 len floor32(mem[_14269 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27533 = mem[ceil32(return_data.size) + 224]
            if (10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4) + 5 * 10^17 / 10^18 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14349) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14349) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14349) + ceil32(return_data.size) + 260] = _27533
                mem[(32 * _14349) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14349) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14349) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14349) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14349) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27533, Array(len=2, data=mem[(32 * _14349) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14349) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14349) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40927 = mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14349) + ceil32(return_data.size) + mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14349) + ceil32(return_data.size) + mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14349) + ceil32(return_data.size) + mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41166 = mem[(32 * _14349) + ceil32(return_data.size) + _40927 + 224]
                mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14349) + ceil32(return_data.size) + _40927 + 224])] = mem[(32 * _14349) + ceil32(return_data.size) + _40927 + 256 len floor32(mem[(32 * _14349) + ceil32(return_data.size) + _40927 + 224])]
                require 0 < mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41166) + (32 * _14349) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41166) + (32 * _14349) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14349) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14349) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14349) + ceil32(return_data.size) + 260] = _27533
            mem[(32 * _14349) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14349) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14349) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14349) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14349) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27533, Array(len=2, data=mem[(32 * _14349) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14349) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14349) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40925 = mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14349) + ceil32(return_data.size) + mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14349) + ceil32(return_data.size) + mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14349) + ceil32(return_data.size) + mem[(32 * _14349) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41165 = mem[(32 * _14349) + ceil32(return_data.size) + _40925 + 224]
            mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14349) + ceil32(return_data.size) + _40925 + 224])] = mem[(32 * _14349) + ceil32(return_data.size) + _40925 + 256 len floor32(mem[(32 * _14349) + ceil32(return_data.size) + _40925 + 224])]
            require 0 < mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 224]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if not ext_call.success:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41165) + (32 * _14349) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41165) + (32 * _14349) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14349) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        mem[128] = arg2
        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not arg4:
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = ext_call.return_data[0]
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14283 = mem[192 len 4], ext_call.return_data[0 len 28]
                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                _14356 = mem[_14283 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14283 + 192])] = mem[_14283 + 224 len floor32(mem[_14283 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27540 = mem[ceil32(return_data.size) + 224]
                if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(arg2)
                if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if ext_call.success:
                        mem[(32 * _14356) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _14356) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                        mem[(32 * _14356) + ceil32(return_data.size) + 260] = _27540
                        mem[(32 * _14356) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _14356) + ceil32(return_data.size) + 356] = block.timestamp + 1
                        mem[(32 * _14356) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _14356) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _14356) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _27540, Array(len=2, data=mem[(32 * _14356) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _14356) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _14356) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _40967 = mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                        mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        _41186 = mem[(32 * _14356) + ceil32(return_data.size) + _40967 + 224]
                        mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14356) + ceil32(return_data.size) + _40967 + 224])] = mem[(32 * _14356) + ceil32(return_data.size) + _40967 + 256 len floor32(mem[(32 * _14356) + ceil32(return_data.size) + _40967 + 224])]
                        require 0 < mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        if not ext_call.success:
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg6:
                            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args arg6, mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return 64, 
                               160,
                               55,
                               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                               mem[(32 * _41186) + (32 * _14356) + (2 * ceil32(return_data.size)) + 343 len 9],
                               Mask(184, -256, mem[(32 * _41186) + (32 * _14356) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                               192,
                               address(arg1),
                               address(arg2),
                               ext_call.return_data[0],
                               mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256],
                               arg5,
                               arg6
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14356) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14356) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[(32 * _14356) + ceil32(return_data.size) + 260] = _27540
                    mem[(32 * _14356) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14356) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14356) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14356) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14356) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _27540, Array(len=2, data=mem[(32 * _14356) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14356) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14356) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40965 = mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _41185 = mem[(32 * _14356) + ceil32(return_data.size) + _40965 + 224]
                    mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14356) + ceil32(return_data.size) + _40965 + 224])] = mem[(32 * _14356) + ceil32(return_data.size) + _40965 + 256 len floor32(mem[(32 * _14356) + ceil32(return_data.size) + _40965 + 224])]
                    require 0 < mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41185) + (32 * _14356) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41185) + (32 * _14356) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           ext_call.return_data[0],
                           mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                call arg2.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14356) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14356) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[(32 * _14356) + ceil32(return_data.size) + 260] = _27540
                    mem[(32 * _14356) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14356) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14356) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14356) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14356) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _27540, Array(len=2, data=mem[(32 * _14356) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14356) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14356) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40971 = mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _41188 = mem[(32 * _14356) + ceil32(return_data.size) + _40971 + 224]
                    mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14356) + ceil32(return_data.size) + _40971 + 224])] = mem[(32 * _14356) + ceil32(return_data.size) + _40971 + 256 len floor32(mem[(32 * _14356) + ceil32(return_data.size) + _40971 + 224])]
                    require 0 < mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41188) + (32 * _14356) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41188) + (32 * _14356) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           ext_call.return_data[0],
                           mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14356) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14356) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14356) + ceil32(return_data.size) + 260] = _27540
                mem[(32 * _14356) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14356) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14356) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14356) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14356) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27540, Array(len=2, data=mem[(32 * _14356) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14356) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14356) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40969 = mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14356) + ceil32(return_data.size) + mem[(32 * _14356) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41187 = mem[(32 * _14356) + ceil32(return_data.size) + _40969 + 224]
                mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14356) + ceil32(return_data.size) + _40969 + 224])] = mem[(32 * _14356) + ceil32(return_data.size) + _40969 + 256 len floor32(mem[(32 * _14356) + ceil32(return_data.size) + _40969 + 224])]
                require 0 < mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41187) + (32 * _14356) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41187) + (32 * _14356) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14356) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            if 0 / arg4:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14281 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _14355 = mem[_14281 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14281 + 192])] = mem[_14281 + 224 len floor32(mem[_14281 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27539 = mem[ceil32(return_data.size) + 224]
            if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(arg2)
            if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14355) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14355) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[(32 * _14355) + ceil32(return_data.size) + 260] = _27539
                    mem[(32 * _14355) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14355) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14355) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14355) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14355) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _27539, Array(len=2, data=mem[(32 * _14355) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14355) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14355) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40959 = mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _41182 = mem[(32 * _14355) + ceil32(return_data.size) + _40959 + 224]
                    mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14355) + ceil32(return_data.size) + _40959 + 224])] = mem[(32 * _14355) + ceil32(return_data.size) + _40959 + 256 len floor32(mem[(32 * _14355) + ceil32(return_data.size) + _40959 + 224])]
                    require 0 < mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41182) + (32 * _14355) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41182) + (32 * _14355) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           ext_call.return_data[0],
                           mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14355) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14355) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14355) + ceil32(return_data.size) + 260] = _27539
                mem[(32 * _14355) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14355) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14355) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14355) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14355) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27539, Array(len=2, data=mem[(32 * _14355) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14355) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14355) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40957 = mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41181 = mem[(32 * _14355) + ceil32(return_data.size) + _40957 + 224]
                mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14355) + ceil32(return_data.size) + _40957 + 224])] = mem[(32 * _14355) + ceil32(return_data.size) + _40957 + 256 len floor32(mem[(32 * _14355) + ceil32(return_data.size) + _40957 + 224])]
                require 0 < mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41181) + (32 * _14355) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41181) + (32 * _14355) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            call arg2.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14355) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14355) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14355) + ceil32(return_data.size) + 260] = _27539
                mem[(32 * _14355) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14355) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14355) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14355) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14355) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27539, Array(len=2, data=mem[(32 * _14355) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14355) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14355) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40963 = mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41184 = mem[(32 * _14355) + ceil32(return_data.size) + _40963 + 224]
                mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14355) + ceil32(return_data.size) + _40963 + 224])] = mem[(32 * _14355) + ceil32(return_data.size) + _40963 + 256 len floor32(mem[(32 * _14355) + ceil32(return_data.size) + _40963 + 224])]
                require 0 < mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41184) + (32 * _14355) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41184) + (32 * _14355) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14355) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14355) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14355) + ceil32(return_data.size) + 260] = _27539
            mem[(32 * _14355) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14355) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14355) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14355) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14355) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27539, Array(len=2, data=mem[(32 * _14355) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14355) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14355) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40961 = mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14355) + ceil32(return_data.size) + mem[(32 * _14355) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41183 = mem[(32 * _14355) + ceil32(return_data.size) + _40961 + 224]
            mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14355) + ceil32(return_data.size) + _40961 + 224])] = mem[(32 * _14355) + ceil32(return_data.size) + _40961 + 256 len floor32(mem[(32 * _14355) + ceil32(return_data.size) + _40961 + 224])]
            require 0 < mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 224]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if not ext_call.success:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41183) + (32 * _14355) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41183) + (32 * _14355) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14355) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-ext_call.return_data[0] + 18):
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not arg4:
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14279 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _14354 = mem[_14279 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14279 + 192])] = mem[_14279 + 224 len floor32(mem[_14279 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27538 = mem[ceil32(return_data.size) + 224]
            if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(arg2)
            if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14354) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14354) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[(32 * _14354) + ceil32(return_data.size) + 260] = _27538
                    mem[(32 * _14354) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14354) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14354) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14354) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14354) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _27538, Array(len=2, data=mem[(32 * _14354) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14354) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14354) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40951 = mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _41178 = mem[(32 * _14354) + ceil32(return_data.size) + _40951 + 224]
                    mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14354) + ceil32(return_data.size) + _40951 + 224])] = mem[(32 * _14354) + ceil32(return_data.size) + _40951 + 256 len floor32(mem[(32 * _14354) + ceil32(return_data.size) + _40951 + 224])]
                    require 0 < mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    if not ext_call.success:
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41178) + (32 * _14354) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41178) + (32 * _14354) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           ext_call.return_data[0],
                           mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14354) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14354) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14354) + ceil32(return_data.size) + 260] = _27538
                mem[(32 * _14354) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14354) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14354) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14354) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14354) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27538, Array(len=2, data=mem[(32 * _14354) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14354) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14354) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40949 = mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41177 = mem[(32 * _14354) + ceil32(return_data.size) + _40949 + 224]
                mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14354) + ceil32(return_data.size) + _40949 + 224])] = mem[(32 * _14354) + ceil32(return_data.size) + _40949 + 256 len floor32(mem[(32 * _14354) + ceil32(return_data.size) + _40949 + 224])]
                require 0 < mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41177) + (32 * _14354) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41177) + (32 * _14354) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            call arg2.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14354) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14354) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14354) + ceil32(return_data.size) + 260] = _27538
                mem[(32 * _14354) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14354) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14354) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14354) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14354) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27538, Array(len=2, data=mem[(32 * _14354) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14354) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14354) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40955 = mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41180 = mem[(32 * _14354) + ceil32(return_data.size) + _40955 + 224]
                mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14354) + ceil32(return_data.size) + _40955 + 224])] = mem[(32 * _14354) + ceil32(return_data.size) + _40955 + 256 len floor32(mem[(32 * _14354) + ceil32(return_data.size) + _40955 + 224])]
                require 0 < mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41180) + (32 * _14354) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41180) + (32 * _14354) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14354) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14354) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14354) + ceil32(return_data.size) + 260] = _27538
            mem[(32 * _14354) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14354) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14354) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14354) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14354) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27538, Array(len=2, data=mem[(32 * _14354) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14354) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14354) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40953 = mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14354) + ceil32(return_data.size) + mem[(32 * _14354) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41179 = mem[(32 * _14354) + ceil32(return_data.size) + _40953 + 224]
            mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14354) + ceil32(return_data.size) + _40953 + 224])] = mem[(32 * _14354) + ceil32(return_data.size) + _40953 + 256 len floor32(mem[(32 * _14354) + ceil32(return_data.size) + _40953 + 224])]
            require 0 < mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 224]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if not ext_call.success:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41179) + (32 * _14354) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41179) + (32 * _14354) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14354) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4 / arg4 != 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if (10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4) + 5 * 10^17 < 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4:
            revert with 0, 'SafeMath: addition overflow'
        require 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'No-exchange-address'
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _14277 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _14353 = mem[_14277 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_14277 + 192])] = mem[_14277 + 224 len floor32(mem[_14277 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _27537 = mem[ceil32(return_data.size) + 224]
        if (10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4) + 5 * 10^17 / 10^18 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
            revert with 0, 'Too much slippage'
        require ext_code.size(arg2)
        if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14353) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14353) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14353) + ceil32(return_data.size) + 260] = _27537
                mem[(32 * _14353) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14353) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14353) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14353) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14353) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27537, Array(len=2, data=mem[(32 * _14353) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14353) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14353) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40943 = mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41174 = mem[(32 * _14353) + ceil32(return_data.size) + _40943 + 224]
                mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14353) + ceil32(return_data.size) + _40943 + 224])] = mem[(32 * _14353) + ceil32(return_data.size) + _40943 + 256 len floor32(mem[(32 * _14353) + ceil32(return_data.size) + _40943 + 224])]
                require 0 < mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 224]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                if not ext_call.success:
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41174) + (32 * _14353) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41174) + (32 * _14353) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14353) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14353) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14353) + ceil32(return_data.size) + 260] = _27537
            mem[(32 * _14353) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14353) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14353) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14353) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14353) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27537, Array(len=2, data=mem[(32 * _14353) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14353) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14353) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40941 = mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41173 = mem[(32 * _14353) + ceil32(return_data.size) + _40941 + 224]
            mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14353) + ceil32(return_data.size) + _40941 + 224])] = mem[(32 * _14353) + ceil32(return_data.size) + _40941 + 256 len floor32(mem[(32 * _14353) + ceil32(return_data.size) + _40941 + 224])]
            require 0 < mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 224]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if not ext_call.success:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41173) + (32 * _14353) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41173) + (32 * _14353) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        call arg2.0xd0e30db0 with:
           value mem[ceil32(return_data.size) + 224] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if ext_call.success:
            mem[(32 * _14353) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14353) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14353) + ceil32(return_data.size) + 260] = _27537
            mem[(32 * _14353) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14353) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14353) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14353) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14353) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27537, Array(len=2, data=mem[(32 * _14353) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14353) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14353) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40947 = mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41176 = mem[(32 * _14353) + ceil32(return_data.size) + _40947 + 224]
            mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14353) + ceil32(return_data.size) + _40947 + 224])] = mem[(32 * _14353) + ceil32(return_data.size) + _40947 + 256 len floor32(mem[(32 * _14353) + ceil32(return_data.size) + _40947 + 224])]
            require 0 < mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 224]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            if not ext_call.success:
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41176) + (32 * _14353) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41176) + (32 * _14353) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14353) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * _14353) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _14353) + ceil32(return_data.size) + 260] = _27537
        mem[(32 * _14353) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _14353) + ceil32(return_data.size) + 356] = block.timestamp + 1
        mem[(32 * _14353) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _14353) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _14353) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _27537, Array(len=2, data=mem[(32 * _14353) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14353) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _14353) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _40945 = mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14353) + ceil32(return_data.size) + mem[(32 * _14353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        _41175 = mem[(32 * _14353) + ceil32(return_data.size) + _40945 + 224]
        mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14353) + ceil32(return_data.size) + _40945 + 224])] = mem[(32 * _14353) + ceil32(return_data.size) + _40945 + 256 len floor32(mem[(32 * _14353) + ceil32(return_data.size) + _40945 + 224])]
        require 0 < mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 224]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        if not ext_call.success:
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg6, mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               55,
               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               mem[(32 * _41175) + (32 * _14353) + (2 * ceil32(return_data.size)) + 343 len 9],
               Mask(184, -256, mem[(32 * _41175) + (32 * _14353) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
               192,
               address(arg1),
               address(arg2),
               ext_call.return_data[0],
               mem[(32 * _14353) + (2 * ceil32(return_data.size)) + 256],
               arg5,
               arg6
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[160] = arg1
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not arg4:
                require 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'No-exchange-address'
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = ext_call.return_data[0]
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _14291 = mem[192 len 4], ext_call.return_data[0 len 28]
                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                _14360 = mem[_14291 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_14291 + 192])] = mem[_14291 + 224 len floor32(mem[_14291 + 192])]
                require 0 < mem[ceil32(return_data.size) + 192]
                _27544 = mem[ceil32(return_data.size) + 224]
                if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                    revert with 0, 'Too much slippage'
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
                   value mem[ceil32(return_data.size) + 224] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14360) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14360) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[(32 * _14360) + ceil32(return_data.size) + 260] = _27544
                    mem[(32 * _14360) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14360) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14360) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14360) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14360) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _27544, Array(len=2, data=mem[(32 * _14360) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14360) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14360) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _40987 = mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _14360) + ceil32(return_data.size) + mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14360) + ceil32(return_data.size) + mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14360) + ceil32(return_data.size) + mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _41196 = mem[(32 * _14360) + ceil32(return_data.size) + _40987 + 224]
                    mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14360) + ceil32(return_data.size) + _40987 + 224])] = mem[(32 * _14360) + ceil32(return_data.size) + _40987 + 256 len floor32(mem[(32 * _14360) + ceil32(return_data.size) + _40987 + 224])]
                    require 0 < mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 224]
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_code.size(arg1)
                        if not ext_call.success:
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call arg1.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41196) + (32 * _14360) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41196) + (32 * _14360) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           ext_call.return_data[0],
                           mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14360) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14360) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14360) + ceil32(return_data.size) + 260] = _27544
                mem[(32 * _14360) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14360) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14360) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14360) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14360) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27544, Array(len=2, data=mem[(32 * _14360) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14360) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14360) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40985 = mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14360) + ceil32(return_data.size) + mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14360) + ceil32(return_data.size) + mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14360) + ceil32(return_data.size) + mem[(32 * _14360) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41195 = mem[(32 * _14360) + ceil32(return_data.size) + _40985 + 224]
                mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14360) + ceil32(return_data.size) + _40985 + 224])] = mem[(32 * _14360) + ceil32(return_data.size) + _40985 + 256 len floor32(mem[(32 * _14360) + ceil32(return_data.size) + _40985 + 224])]
                require 0 < mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41195) + (32 * _14360) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41195) + (32 * _14360) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14360) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            if 0 / arg4:
                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14289 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _14359 = mem[_14289 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14289 + 192])] = mem[_14289 + 224 len floor32(mem[_14289 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27543 = mem[ceil32(return_data.size) + 224]
            if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14359) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14359) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14359) + ceil32(return_data.size) + 260] = _27543
                mem[(32 * _14359) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14359) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14359) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14359) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14359) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27543, Array(len=2, data=mem[(32 * _14359) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14359) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14359) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40983 = mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14359) + ceil32(return_data.size) + mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14359) + ceil32(return_data.size) + mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14359) + ceil32(return_data.size) + mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41194 = mem[(32 * _14359) + ceil32(return_data.size) + _40983 + 224]
                mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14359) + ceil32(return_data.size) + _40983 + 224])] = mem[(32 * _14359) + ceil32(return_data.size) + _40983 + 256 len floor32(mem[(32 * _14359) + ceil32(return_data.size) + _40983 + 224])]
                require 0 < mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41194) + (32 * _14359) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41194) + (32 * _14359) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14359) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14359) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14359) + ceil32(return_data.size) + 260] = _27543
            mem[(32 * _14359) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14359) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14359) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14359) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14359) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27543, Array(len=2, data=mem[(32 * _14359) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14359) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14359) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40981 = mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14359) + ceil32(return_data.size) + mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14359) + ceil32(return_data.size) + mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14359) + ceil32(return_data.size) + mem[(32 * _14359) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41193 = mem[(32 * _14359) + ceil32(return_data.size) + _40981 + 224]
            mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14359) + ceil32(return_data.size) + _40981 + 224])] = mem[(32 * _14359) + ceil32(return_data.size) + _40981 + 256 len floor32(mem[(32 * _14359) + ceil32(return_data.size) + _40981 + 224])]
            require 0 < mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41193) + (32 * _14359) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41193) + (32 * _14359) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14359) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-ext_call.return_data[0] + 18):
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not arg4:
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14287 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _14358 = mem[_14287 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14287 + 192])] = mem[_14287 + 224 len floor32(mem[_14287 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27542 = mem[ceil32(return_data.size) + 224]
            if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14358) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14358) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14358) + ceil32(return_data.size) + 260] = _27542
                mem[(32 * _14358) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14358) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14358) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14358) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14358) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27542, Array(len=2, data=mem[(32 * _14358) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14358) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14358) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40979 = mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14358) + ceil32(return_data.size) + mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14358) + ceil32(return_data.size) + mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14358) + ceil32(return_data.size) + mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41192 = mem[(32 * _14358) + ceil32(return_data.size) + _40979 + 224]
                mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14358) + ceil32(return_data.size) + _40979 + 224])] = mem[(32 * _14358) + ceil32(return_data.size) + _40979 + 256 len floor32(mem[(32 * _14358) + ceil32(return_data.size) + _40979 + 224])]
                require 0 < mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41192) + (32 * _14358) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41192) + (32 * _14358) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14358) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14358) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14358) + ceil32(return_data.size) + 260] = _27542
            mem[(32 * _14358) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14358) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14358) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14358) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14358) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27542, Array(len=2, data=mem[(32 * _14358) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14358) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14358) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40977 = mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14358) + ceil32(return_data.size) + mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14358) + ceil32(return_data.size) + mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14358) + ceil32(return_data.size) + mem[(32 * _14358) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41191 = mem[(32 * _14358) + ceil32(return_data.size) + _40977 + 224]
            mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14358) + ceil32(return_data.size) + _40977 + 224])] = mem[(32 * _14358) + ceil32(return_data.size) + _40977 + 256 len floor32(mem[(32 * _14358) + ceil32(return_data.size) + _40977 + 224])]
            require 0 < mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41191) + (32 * _14358) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41191) + (32 * _14358) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14358) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4 / arg4 != 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0]:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if (10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4) + 5 * 10^17 < 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4:
            revert with 0, 'SafeMath: addition overflow'
        require 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'No-exchange-address'
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _14285 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _14357 = mem[_14285 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_14285 + 192])] = mem[_14285 + 224 len floor32(mem[_14285 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _27541 = mem[ceil32(return_data.size) + 224]
        if (10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4) + 5 * 10^17 / 10^18 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
            revert with 0, 'Too much slippage'
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
           value mem[ceil32(return_data.size) + 224] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if ext_call.success:
            mem[(32 * _14357) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14357) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14357) + ceil32(return_data.size) + 260] = _27541
            mem[(32 * _14357) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14357) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14357) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14357) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14357) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27541, Array(len=2, data=mem[(32 * _14357) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14357) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14357) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40975 = mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14357) + ceil32(return_data.size) + mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14357) + ceil32(return_data.size) + mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14357) + ceil32(return_data.size) + mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41190 = mem[(32 * _14357) + ceil32(return_data.size) + _40975 + 224]
            mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14357) + ceil32(return_data.size) + _40975 + 224])] = mem[(32 * _14357) + ceil32(return_data.size) + _40975 + 256 len floor32(mem[(32 * _14357) + ceil32(return_data.size) + _40975 + 224])]
            require 0 < mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41190) + (32 * _14357) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41190) + (32 * _14357) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14357) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * _14357) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _14357) + ceil32(return_data.size) + 260] = _27541
        mem[(32 * _14357) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _14357) + ceil32(return_data.size) + 356] = block.timestamp + 1
        mem[(32 * _14357) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _14357) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _14357) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _27541, Array(len=2, data=mem[(32 * _14357) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14357) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _14357) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _40973 = mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[(32 * _14357) + ceil32(return_data.size) + mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14357) + ceil32(return_data.size) + mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14357) + ceil32(return_data.size) + mem[(32 * _14357) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        _41189 = mem[(32 * _14357) + ceil32(return_data.size) + _40973 + 224]
        mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14357) + ceil32(return_data.size) + _40973 + 224])] = mem[(32 * _14357) + ceil32(return_data.size) + _40973 + 256 len floor32(mem[(32 * _14357) + ceil32(return_data.size) + _40973 + 224])]
        require 0 < mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 224]
        if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            require ext_code.size(arg1)
            if not ext_call.success:
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call arg1.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg6, mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               55,
               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               mem[(32 * _41189) + (32 * _14357) + (2 * ceil32(return_data.size)) + 343 len 9],
               Mask(184, -256, mem[(32 * _41189) + (32 * _14357) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
               192,
               address(arg1),
               address(arg2),
               ext_call.return_data[0],
               mem[(32 * _14357) + (2 * ceil32(return_data.size)) + 256],
               arg5,
               arg6
    mem[128] = arg2
    mem[160] = arg1
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not arg4:
            require 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'No-exchange-address'
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _14299 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _14364 = mem[_14299 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_14299 + 192])] = mem[_14299 + 224 len floor32(mem[_14299 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _27548 = mem[ceil32(return_data.size) + 224]
            if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'Too much slippage'
            require ext_code.size(arg2)
            if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if ext_call.success:
                    mem[(32 * _14364) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _14364) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[(32 * _14364) + ceil32(return_data.size) + 260] = _27548
                    mem[(32 * _14364) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _14364) + ceil32(return_data.size) + 356] = block.timestamp + 1
                    mem[(32 * _14364) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _14364) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _14364) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _27548, Array(len=2, data=mem[(32 * _14364) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _14364) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _14364) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _41015 = mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                    mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    _41210 = mem[(32 * _14364) + ceil32(return_data.size) + _41015 + 224]
                    mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14364) + ceil32(return_data.size) + _41015 + 224])] = mem[(32 * _14364) + ceil32(return_data.size) + _41015 + 256 len floor32(mem[(32 * _14364) + ceil32(return_data.size) + _41015 + 224])]
                    require 0 < mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 224]
                    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        require ext_code.size(arg1)
                        if not ext_call.success:
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call arg1.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if arg6:
                        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args arg6, mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return 64, 
                           160,
                           55,
                           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                           mem[(32 * _41210) + (32 * _14364) + (2 * ceil32(return_data.size)) + 343 len 9],
                           Mask(184, -256, mem[(32 * _41210) + (32 * _14364) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                           192,
                           address(arg1),
                           address(arg2),
                           ext_call.return_data[0],
                           mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256],
                           arg5,
                           arg6
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14364) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14364) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14364) + ceil32(return_data.size) + 260] = _27548
                mem[(32 * _14364) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14364) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14364) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14364) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14364) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27548, Array(len=2, data=mem[(32 * _14364) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14364) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14364) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _41013 = mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41209 = mem[(32 * _14364) + ceil32(return_data.size) + _41013 + 224]
                mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14364) + ceil32(return_data.size) + _41013 + 224])] = mem[(32 * _14364) + ceil32(return_data.size) + _41013 + 256 len floor32(mem[(32 * _14364) + ceil32(return_data.size) + _41013 + 224])]
                require 0 < mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41209) + (32 * _14364) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41209) + (32 * _14364) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            call arg2.0xd0e30db0 with:
               value mem[ceil32(return_data.size) + 224] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14364) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14364) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14364) + ceil32(return_data.size) + 260] = _27548
                mem[(32 * _14364) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14364) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14364) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14364) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14364) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27548, Array(len=2, data=mem[(32 * _14364) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14364) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14364) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _41019 = mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41212 = mem[(32 * _14364) + ceil32(return_data.size) + _41019 + 224]
                mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14364) + ceil32(return_data.size) + _41019 + 224])] = mem[(32 * _14364) + ceil32(return_data.size) + _41019 + 256 len floor32(mem[(32 * _14364) + ceil32(return_data.size) + _41019 + 224])]
                require 0 < mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41212) + (32 * _14364) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41212) + (32 * _14364) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14364) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14364) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14364) + ceil32(return_data.size) + 260] = _27548
            mem[(32 * _14364) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14364) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14364) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14364) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14364) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27548, Array(len=2, data=mem[(32 * _14364) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14364) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14364) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _41017 = mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14364) + ceil32(return_data.size) + mem[(32 * _14364) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41211 = mem[(32 * _14364) + ceil32(return_data.size) + _41017 + 224]
            mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14364) + ceil32(return_data.size) + _41017 + 224])] = mem[(32 * _14364) + ceil32(return_data.size) + _41017 + 256 len floor32(mem[(32 * _14364) + ceil32(return_data.size) + _41017 + 224])]
            require 0 < mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41211) + (32 * _14364) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41211) + (32 * _14364) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14364) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        if 0 / arg4:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        require 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'No-exchange-address'
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _14297 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _14363 = mem[_14297 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_14297 + 192])] = mem[_14297 + 224 len floor32(mem[_14297 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _27547 = mem[ceil32(return_data.size) + 224]
        if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
            revert with 0, 'Too much slippage'
        require ext_code.size(arg2)
        if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14363) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14363) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14363) + ceil32(return_data.size) + 260] = _27547
                mem[(32 * _14363) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14363) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14363) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14363) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14363) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27547, Array(len=2, data=mem[(32 * _14363) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14363) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14363) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _41007 = mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41206 = mem[(32 * _14363) + ceil32(return_data.size) + _41007 + 224]
                mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14363) + ceil32(return_data.size) + _41007 + 224])] = mem[(32 * _14363) + ceil32(return_data.size) + _41007 + 256 len floor32(mem[(32 * _14363) + ceil32(return_data.size) + _41007 + 224])]
                require 0 < mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41206) + (32 * _14363) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41206) + (32 * _14363) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14363) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14363) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14363) + ceil32(return_data.size) + 260] = _27547
            mem[(32 * _14363) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14363) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14363) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14363) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14363) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27547, Array(len=2, data=mem[(32 * _14363) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14363) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14363) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _41005 = mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41205 = mem[(32 * _14363) + ceil32(return_data.size) + _41005 + 224]
            mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14363) + ceil32(return_data.size) + _41005 + 224])] = mem[(32 * _14363) + ceil32(return_data.size) + _41005 + 256 len floor32(mem[(32 * _14363) + ceil32(return_data.size) + _41005 + 224])]
            require 0 < mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41205) + (32 * _14363) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41205) + (32 * _14363) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        call arg2.0xd0e30db0 with:
           value mem[ceil32(return_data.size) + 224] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if ext_call.success:
            mem[(32 * _14363) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14363) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14363) + ceil32(return_data.size) + 260] = _27547
            mem[(32 * _14363) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14363) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14363) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14363) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14363) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27547, Array(len=2, data=mem[(32 * _14363) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14363) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14363) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _41011 = mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41208 = mem[(32 * _14363) + ceil32(return_data.size) + _41011 + 224]
            mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14363) + ceil32(return_data.size) + _41011 + 224])] = mem[(32 * _14363) + ceil32(return_data.size) + _41011 + 256 len floor32(mem[(32 * _14363) + ceil32(return_data.size) + _41011 + 224])]
            require 0 < mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41208) + (32 * _14363) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41208) + (32 * _14363) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14363) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * _14363) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _14363) + ceil32(return_data.size) + 260] = _27547
        mem[(32 * _14363) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _14363) + ceil32(return_data.size) + 356] = block.timestamp + 1
        mem[(32 * _14363) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _14363) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _14363) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _27547, Array(len=2, data=mem[(32 * _14363) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14363) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _14363) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _41009 = mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14363) + ceil32(return_data.size) + mem[(32 * _14363) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        _41207 = mem[(32 * _14363) + ceil32(return_data.size) + _41009 + 224]
        mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14363) + ceil32(return_data.size) + _41009 + 224])] = mem[(32 * _14363) + ceil32(return_data.size) + _41009 + 256 len floor32(mem[(32 * _14363) + ceil32(return_data.size) + _41009 + 224])]
        require 0 < mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 224]
        if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            require ext_code.size(arg1)
            if not ext_call.success:
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call arg1.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg6, mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               55,
               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               mem[(32 * _41207) + (32 * _14363) + (2 * ceil32(return_data.size)) + 343 len 9],
               Mask(184, -256, mem[(32 * _41207) + (32 * _14363) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
               192,
               address(arg1),
               address(arg2),
               ext_call.return_data[0],
               mem[(32 * _14363) + (2 * ceil32(return_data.size)) + 256],
               arg5,
               arg6
    if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-ext_call.return_data[0] + 18):
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
    if not arg4:
        require 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'No-exchange-address'
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _14295 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _14362 = mem[_14295 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_14295 + 192])] = mem[_14295 + 224 len floor32(mem[_14295 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _27546 = mem[ceil32(return_data.size) + 224]
        if 0 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
            revert with 0, 'Too much slippage'
        require ext_code.size(arg2)
        if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if ext_call.success:
                mem[(32 * _14362) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _14362) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[(32 * _14362) + ceil32(return_data.size) + 260] = _27546
                mem[(32 * _14362) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _14362) + ceil32(return_data.size) + 356] = block.timestamp + 1
                mem[(32 * _14362) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _14362) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _14362) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
                call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _27546, Array(len=2, data=mem[(32 * _14362) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _14362) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _14362) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _40999 = mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                _41202 = mem[(32 * _14362) + ceil32(return_data.size) + _40999 + 224]
                mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14362) + ceil32(return_data.size) + _40999 + 224])] = mem[(32 * _14362) + ceil32(return_data.size) + _40999 + 256 len floor32(mem[(32 * _14362) + ceil32(return_data.size) + _40999 + 224])]
                require 0 < mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 224]
                if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_code.size(arg1)
                    if not ext_call.success:
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    call arg1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg6, mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return 64, 
                       160,
                       55,
                       0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                       mem[(32 * _41202) + (32 * _14362) + (2 * ceil32(return_data.size)) + 343 len 9],
                       Mask(184, -256, mem[(32 * _41202) + (32 * _14362) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                       192,
                       address(arg1),
                       address(arg2),
                       ext_call.return_data[0],
                       mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256],
                       arg5,
                       arg6
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14362) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14362) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14362) + ceil32(return_data.size) + 260] = _27546
            mem[(32 * _14362) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14362) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14362) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14362) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14362) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27546, Array(len=2, data=mem[(32 * _14362) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14362) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14362) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40997 = mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41201 = mem[(32 * _14362) + ceil32(return_data.size) + _40997 + 224]
            mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14362) + ceil32(return_data.size) + _40997 + 224])] = mem[(32 * _14362) + ceil32(return_data.size) + _40997 + 256 len floor32(mem[(32 * _14362) + ceil32(return_data.size) + _40997 + 224])]
            require 0 < mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41201) + (32 * _14362) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41201) + (32 * _14362) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        call arg2.0xd0e30db0 with:
           value mem[ceil32(return_data.size) + 224] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if ext_call.success:
            mem[(32 * _14362) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14362) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14362) + ceil32(return_data.size) + 260] = _27546
            mem[(32 * _14362) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14362) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14362) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14362) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14362) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27546, Array(len=2, data=mem[(32 * _14362) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14362) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14362) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _41003 = mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41204 = mem[(32 * _14362) + ceil32(return_data.size) + _41003 + 224]
            mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14362) + ceil32(return_data.size) + _41003 + 224])] = mem[(32 * _14362) + ceil32(return_data.size) + _41003 + 256 len floor32(mem[(32 * _14362) + ceil32(return_data.size) + _41003 + 224])]
            require 0 < mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41204) + (32 * _14362) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41204) + (32 * _14362) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14362) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * _14362) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _14362) + ceil32(return_data.size) + 260] = _27546
        mem[(32 * _14362) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _14362) + ceil32(return_data.size) + 356] = block.timestamp + 1
        mem[(32 * _14362) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _14362) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _14362) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _27546, Array(len=2, data=mem[(32 * _14362) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14362) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _14362) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _41001 = mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14362) + ceil32(return_data.size) + mem[(32 * _14362) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        _41203 = mem[(32 * _14362) + ceil32(return_data.size) + _41001 + 224]
        mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14362) + ceil32(return_data.size) + _41001 + 224])] = mem[(32 * _14362) + ceil32(return_data.size) + _41001 + 256 len floor32(mem[(32 * _14362) + ceil32(return_data.size) + _41001 + 224])]
        require 0 < mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 224]
        if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            require ext_code.size(arg1)
            if not ext_call.success:
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call arg1.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg6, mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               55,
               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               mem[(32 * _41203) + (32 * _14362) + (2 * ceil32(return_data.size)) + 343 len 9],
               Mask(184, -256, mem[(32 * _41203) + (32 * _14362) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
               192,
               address(arg1),
               address(arg2),
               ext_call.return_data[0],
               mem[(32 * _14362) + (2 * ceil32(return_data.size)) + 256],
               arg5,
               arg6
    if 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4 / arg4 != 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0]:
        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
    if (10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4) + 5 * 10^17 < 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4:
        revert with 0, 'SafeMath: addition overflow'
    require 10^(-ext_call.return_data[0] + 18)
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'No-exchange-address'
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c891.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _14293 = mem[192 len 4], ext_call.return_data[0 len 28]
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
    _14361 = mem[_14293 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_14293 + 192])] = mem[_14293 + 224 len floor32(mem[_14293 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    _27545 = mem[ceil32(return_data.size) + 224]
    if (10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] * arg4) + 5 * 10^17 / 10^18 / 10^(-ext_call.return_data[0] + 18) < mem[ceil32(return_data.size) + 224]:
        revert with 0, 'Too much slippage'
    require ext_code.size(arg2)
    if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if ext_call.success:
            mem[(32 * _14361) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * _14361) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[(32 * _14361) + ceil32(return_data.size) + 260] = _27545
            mem[(32 * _14361) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _14361) + ceil32(return_data.size) + 356] = block.timestamp + 1
            mem[(32 * _14361) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _14361) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _14361) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
            call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _27545, Array(len=2, data=mem[(32 * _14361) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _14361) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _14361) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _40991 = mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
            mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            _41198 = mem[(32 * _14361) + ceil32(return_data.size) + _40991 + 224]
            mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14361) + ceil32(return_data.size) + _40991 + 224])] = mem[(32 * _14361) + ceil32(return_data.size) + _40991 + 256 len floor32(mem[(32 * _14361) + ceil32(return_data.size) + _40991 + 224])]
            require 0 < mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 224]
            if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                require ext_code.size(arg1)
                if not ext_call.success:
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call arg1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg6, mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return 64, 
                   160,
                   55,
                   0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
                   mem[(32 * _41198) + (32 * _14361) + (2 * ceil32(return_data.size)) + 343 len 9],
                   Mask(184, -256, mem[(32 * _41198) + (32 * _14361) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
                   192,
                   address(arg1),
                   address(arg2),
                   ext_call.return_data[0],
                   mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256],
                   arg5,
                   arg6
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14361) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * _14361) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _14361) + ceil32(return_data.size) + 260] = _27545
        mem[(32 * _14361) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _14361) + ceil32(return_data.size) + 356] = block.timestamp + 1
        mem[(32 * _14361) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _14361) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _14361) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _27545, Array(len=2, data=mem[(32 * _14361) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14361) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _14361) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _40989 = mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        _41197 = mem[(32 * _14361) + ceil32(return_data.size) + _40989 + 224]
        mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14361) + ceil32(return_data.size) + _40989 + 224])] = mem[(32 * _14361) + ceil32(return_data.size) + _40989 + 256 len floor32(mem[(32 * _14361) + ceil32(return_data.size) + _40989 + 224])]
        require 0 < mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 224]
        if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            require ext_code.size(arg1)
            if not ext_call.success:
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call arg1.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg6, mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               55,
               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               mem[(32 * _41197) + (32 * _14361) + (2 * ceil32(return_data.size)) + 343 len 9],
               Mask(184, -256, mem[(32 * _41197) + (32 * _14361) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
               192,
               address(arg1),
               address(arg2),
               ext_call.return_data[0],
               mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256],
               arg5,
               arg6
    call arg2.0xd0e30db0 with:
       value mem[ceil32(return_data.size) + 224] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
    if ext_call.success:
        mem[(32 * _14361) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * _14361) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _14361) + ceil32(return_data.size) + 260] = _27545
        mem[(32 * _14361) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _14361) + ceil32(return_data.size) + 356] = block.timestamp + 1
        mem[(32 * _14361) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _14361) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _14361) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
        call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _27545, Array(len=2, data=mem[(32 * _14361) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _14361) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _14361) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _40995 = mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
        mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        _41200 = mem[(32 * _14361) + ceil32(return_data.size) + _40995 + 224]
        mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14361) + ceil32(return_data.size) + _40995 + 224])] = mem[(32 * _14361) + ceil32(return_data.size) + _40995 + 256 len floor32(mem[(32 * _14361) + ceil32(return_data.size) + _40995 + 224])]
        require 0 < mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 224]
        if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            require ext_code.size(arg1)
            if not ext_call.success:
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call arg1.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg6:
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg6, mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 64, 
               160,
               55,
               0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
               mem[(32 * _41200) + (32 * _14361) + (2 * ceil32(return_data.size)) + 343 len 9],
               Mask(184, -256, mem[(32 * _41200) + (32 * _14361) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
               192,
               address(arg1),
               address(arg2),
               ext_call.return_data[0],
               mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256],
               arg5,
               arg6
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, mem[ceil32(return_data.size) + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _14361) + ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[(32 * _14361) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[(32 * _14361) + ceil32(return_data.size) + 260] = _27545
    mem[(32 * _14361) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _14361) + ceil32(return_data.size) + 356] = block.timestamp + 1
    mem[(32 * _14361) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _14361) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _14361) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c891)
    call 0x00e54ca86531e17ef3616d22ca28b0d458b6c891.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _27545, Array(len=2, data=mem[(32 * _14361) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _14361) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _14361) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _40993 = mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
    mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _14361) + ceil32(return_data.size) + mem[(32 * _14361) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
    _41199 = mem[(32 * _14361) + ceil32(return_data.size) + _40993 + 224]
    mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _14361) + ceil32(return_data.size) + _40993 + 224])] = mem[(32 * _14361) + ceil32(return_data.size) + _40993 + 256 len floor32(mem[(32 * _14361) + ceil32(return_data.size) + _40993 + 224])]
    require 0 < mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 224]
    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        require ext_code.size(arg1)
        if not ext_call.success:
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call arg1.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg6:
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg6, mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           55,
           0xfe4c6f6742757928616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c75696e74323536,
           mem[(32 * _41199) + (32 * _14361) + (2 * ceil32(return_data.size)) + 343 len 9],
           Mask(184, -256, mem[(32 * _41199) + (32 * _14361) + (2 * ceil32(return_data.size)) + 343 len 9]) << 328,
           192,
           address(arg1),
           address(arg2),
           ext_call.return_data[0],
           mem[(32 * _14361) + (2 * ceil32(return_data.size)) + 256],
           arg5,
           arg6
}



}
