contract main {




// =====================  Runtime code  =====================


address SELFAddress;
address WETHAddress;

function SELF() {
    return SELFAddress
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function sub_d620dcdf(?) {
    require calldata.size - 4 >= 96
    require arg2 == Mask(112, 0, arg2)
    require arg3 == Mask(112, 0, arg3)
    if arg1 <= 0:
        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
    if Mask(112, 0, arg2) <= 0:
        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, arg3) <= 0:
        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
    if arg1 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if 997 * arg1 and Mask(112, 0, arg3) > -1 / 997 * arg1:
        revert with 0, 17
    if Mask(112, 0, arg2) > 0x4189374bc6a7ef9db22d0e5604:
        revert with 0, 17
    if Mask(112, 0, 1000 * Mask(112, 0, arg2)) > !(997 * arg1):
        revert with 0, 17
    if not Mask(112, 0, 1000 * Mask(112, 0, arg2)) + (997 * arg1):
        revert with 0, 18
    return (997 * arg1 * Mask(112, 0, arg3) / Mask(112, 0, 1000 * Mask(112, 0, arg2)) + (997 * arg1))
}

function check(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           Mask(144, 112, ext_call.return_data[0]),
           ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
}

function withdraw(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_19] > 0:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _24 = mem[_23]
            mem[mem[64] + 4] = SELFAddress
            mem[mem[64] + 36] = _24
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args SELFAddress, _24
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        call SELFAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_db7e986c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xd21220a7 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0] <= Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'no profit'
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'no profit'
        if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            if 0 <= arg2:
                revert with 0, 'no profit'
            require ext_code.size(address(arg1))
            call address(arg1).0xbc25cf77 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if ext_call.return_data[0] <= 0:
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if WETHAddress != address(ext_call.return_data[0]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                            revert with 0, 17
                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if WETHAddress == address(ext_call.return_data[0]):
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if WETHAddress != address(ext_call.return_data[0]):
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                revert with 0, 17
                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                revert with 0, 18
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                        revert with 0, 17
                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 18
                    mem[(10 * ceil32(return_data.size)) + 228] = 128
                    mem[(10 * ceil32(return_data.size)) + 260] = 0
                    mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if WETHAddress != address(ext_call.return_data[0]):
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                revert with 0, 17
                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                revert with 0, 18
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if WETHAddress == address(ext_call.return_data[0]):
                if 0 > !(ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 17
                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= arg2:
                    revert with 0, 'no profit'
                require ext_code.size(address(arg1))
                call address(arg1).0xbc25cf77 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[0] <= 0:
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if WETHAddress != address(ext_call.return_data[0]):
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                revert with 0, 17
                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                revert with 0, 18
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if WETHAddress == address(ext_call.return_data[0]):
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            if WETHAddress != address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                    revert with 0, 18
                                require ext_code.size(address(arg1))
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                            revert with 0, 17
                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                            revert with 0, 18
                        mem[(10 * ceil32(return_data.size)) + 228] = 128
                        mem[(10 * ceil32(return_data.size)) + 260] = 0
                        mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            if WETHAddress != address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                    revert with 0, 18
                                require ext_code.size(address(arg1))
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                    revert with 0, 17
                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !((997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                if 0 > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) <= arg2:
                    revert with 0, 'no profit'
                require ext_code.size(address(arg1))
                call address(arg1).0xbc25cf77 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if WETHAddress != address(ext_call.return_data[0]):
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                revert with 0, 17
                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                revert with 0, 18
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if WETHAddress == address(ext_call.return_data[0]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            if WETHAddress != address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                    revert with 0, 18
                                require ext_code.size(address(arg1))
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg1)
                        mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                            revert with 0, 17
                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                            revert with 0, 18
                        mem[(10 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                        mem[(10 * ceil32(return_data.size)) + 228] = 128
                        mem[(10 * ceil32(return_data.size)) + 260] = 0
                        mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 132] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            if WETHAddress != address(ext_call.return_data[0]):
                                mem[(11 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                mem[(11 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                    revert with 0, 18
                                mem[(12 * ceil32(return_data.size)) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(12 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[(12 * ceil32(return_data.size)) + 196] = 0
                                mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                mem[(12 * ceil32(return_data.size)) + 260] = 128
                                mem[(12 * ceil32(return_data.size)) + 292] = mem[(12 * ceil32(return_data.size)) + 128]
                                mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])] = mem[(12 * ceil32(return_data.size)) + 160 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                if ceil32(mem[(12 * ceil32(return_data.size)) + 128]) > mem[(12 * ceil32(return_data.size)) + 128]:
                                    mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 128] + 324] = 0
                                require ext_code.size(address(arg1))
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(12 * ceil32(return_data.size)) + 128], mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] <= Mask(112, 0, ext_call.return_data[32]):
            if Mask(144, 112, ext_call.return_data[0]) <= 0:
                revert with 0, 'no profit'
            if not Mask(144, 112, ext_call.return_data[0]):
                if 0 <= arg2:
                    revert with 0, 'no profit'
            else:
                if WETHAddress == address(ext_call.return_data[0]):
                    if 0 > !Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 17
                    if Mask(144, 112, ext_call.return_data[0]) <= arg2:
                        revert with 0, 'no profit'
                else:
                    if Mask(144, 112, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                    if Mask(144, 112, ext_call.return_data[0]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if 997 * Mask(144, 112, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                        revert with 0, 17
                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * Mask(144, 112, ext_call.return_data[0])):
                        revert with 0, 17
                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])):
                        revert with 0, 18
                    if 0 > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])) <= arg2:
                        revert with 0, 'no profit'
            require ext_code.size(address(arg1))
            call address(arg1).0xbc25cf77 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if WETHAddress != address(ext_call.return_data[0]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                            revert with 0, 17
                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if WETHAddress == address(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if WETHAddress != address(ext_call.return_data[0]):
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                revert with 0, 17
                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                revert with 0, 18
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg1)
                    mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                        revert with 0, 17
                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 18
                    mem[(10 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                    mem[(10 * ceil32(return_data.size)) + 228] = 128
                    mem[(10 * ceil32(return_data.size)) + 260] = 0
                    mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + 132] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if WETHAddress != address(ext_call.return_data[0]):
                            mem[(11 * ceil32(return_data.size)) + 132] = address(arg1)
                            mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                revert with 0, 17
                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                revert with 0, 18
                            mem[(12 * ceil32(return_data.size)) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(12 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            mem[(12 * ceil32(return_data.size)) + 196] = 0
                            mem[(12 * ceil32(return_data.size)) + 228] = this.address
                            mem[(12 * ceil32(return_data.size)) + 260] = 128
                            mem[(12 * ceil32(return_data.size)) + 292] = mem[(12 * ceil32(return_data.size)) + 128]
                            mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])] = mem[(12 * ceil32(return_data.size)) + 160 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                            if ceil32(mem[(12 * ceil32(return_data.size)) + 128]) > mem[(12 * ceil32(return_data.size)) + 128]:
                                mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 128] + 324] = 0
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(12 * ceil32(return_data.size)) + 128], mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(144, 112, ext_call.return_data[0]) > 0:
                if not Mask(144, 112, ext_call.return_data[0]):
                    if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                        if 0 <= arg2:
                            revert with 0, 'no profit'
                        require ext_code.size(address(arg1))
                        call address(arg1).0xbc25cf77 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[0] <= 0:
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                if WETHAddress != address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                        revert with 0, 17
                                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if WETHAddress == address(ext_call.return_data[0]):
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                    revert with 0, 18
                                mem[(10 * ceil32(return_data.size)) + 228] = 128
                                mem[(10 * ceil32(return_data.size)) + 260] = 0
                                mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                require ext_code.size(address(arg1))
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if WETHAddress == address(ext_call.return_data[0]):
                            if 0 > !(ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 17
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= arg2:
                                revert with 0, 'no profit'
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                revert with 0, 17
                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !((997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                revert with 0, 17
                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 18
                            if 0 > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                revert with 0, 17
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) <= arg2:
                                revert with 0, 'no profit'
                        require ext_code.size(address(arg1))
                        call address(arg1).0xbc25cf77 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 100] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                if WETHAddress != address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                        revert with 0, 17
                                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if WETHAddress == address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg1)
                                mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                    revert with 0, 18
                                mem[(10 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = 128
                                mem[(10 * ceil32(return_data.size)) + 260] = 0
                                mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                require ext_code.size(address(arg1))
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        mem[(11 * ceil32(return_data.size)) + 132] = address(arg1)
                                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        mem[(11 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        mem[(12 * ceil32(return_data.size)) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(12 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        mem[(12 * ceil32(return_data.size)) + 196] = 0
                                        mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                        mem[(12 * ceil32(return_data.size)) + 260] = 128
                                        mem[(12 * ceil32(return_data.size)) + 292] = mem[(12 * ceil32(return_data.size)) + 128]
                                        mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])] = mem[(12 * ceil32(return_data.size)) + 160 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                        if ceil32(mem[(12 * ceil32(return_data.size)) + 128]) > mem[(12 * ceil32(return_data.size)) + 128]:
                                            mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 128] + 324] = 0
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(12 * ceil32(return_data.size)) + 128], mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if WETHAddress == address(ext_call.return_data[0]):
                        if 0 > !Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 17
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            if WETHAddress == address(ext_call.return_data[0]):
                                if Mask(144, 112, ext_call.return_data[0]) > !(ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 17
                                if Mask(144, 112, ext_call.return_data[0]) + ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= arg2:
                                    revert with 0, 'no profit'
                            else:
                                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !((997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 18
                                if Mask(144, 112, ext_call.return_data[0]) > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                    revert with 0, 17
                                if Mask(144, 112, ext_call.return_data[0]) + ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))) <= arg2:
                                    revert with 0, 'no profit'
                            require ext_code.size(address(arg1))
                            call address(arg1).0xbc25cf77 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            if ext_call.return_data[0] <= 0:
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if WETHAddress == address(ext_call.return_data[0]):
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                        revert with 0, 17
                                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    mem[(10 * ceil32(return_data.size)) + 228] = 128
                                    mem[(10 * ceil32(return_data.size)) + 260] = 0
                                    mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if Mask(144, 112, ext_call.return_data[0]) <= arg2:
                                revert with 0, 'no profit'
                            require ext_code.size(address(arg1))
                            call address(arg1).0xbc25cf77 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if WETHAddress == address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg1)
                                    mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                        revert with 0, 17
                                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    mem[(10 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = 128
                                    mem[(10 * ceil32(return_data.size)) + 260] = 0
                                    mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            mem[(11 * ceil32(return_data.size)) + 132] = address(arg1)
                                            mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            mem[(11 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            mem[(12 * ceil32(return_data.size)) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[(12 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                            mem[(12 * ceil32(return_data.size)) + 196] = 0
                                            mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                            mem[(12 * ceil32(return_data.size)) + 260] = 128
                                            mem[(12 * ceil32(return_data.size)) + 292] = mem[(12 * ceil32(return_data.size)) + 128]
                                            mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])] = mem[(12 * ceil32(return_data.size)) + 160 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                            if ceil32(mem[(12 * ceil32(return_data.size)) + 128]) > mem[(12 * ceil32(return_data.size)) + 128]:
                                                mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 128] + 324] = 0
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(12 * ceil32(return_data.size)) + 128], mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if Mask(144, 112, ext_call.return_data[0]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if 997 * Mask(144, 112, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                            revert with 0, 17
                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * Mask(144, 112, ext_call.return_data[0])):
                            revert with 0, 17
                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])):
                            revert with 0, 18
                        if 0 > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0]))):
                            revert with 0, 17
                        if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])) <= arg2:
                                revert with 0, 'no profit'
                            require ext_code.size(address(arg1))
                            call address(arg1).0xbc25cf77 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            if ext_call.return_data[0] <= 0:
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if WETHAddress == address(ext_call.return_data[0]):
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                        revert with 0, 17
                                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    mem[(10 * ceil32(return_data.size)) + 228] = 128
                                    mem[(10 * ceil32(return_data.size)) + 260] = 0
                                    mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if WETHAddress != address(ext_call.return_data[0]):
                                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !((997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 18
                                if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])) > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                    revert with 0, 17
                                if ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0]))) + ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))) <= arg2:
                                    revert with 0, 'no profit'
                                require ext_code.size(address(arg1))
                                call address(arg1).0xbc25cf77 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if ext_call.return_data[0] <= 0:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if WETHAddress == address(ext_call.return_data[0]):
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            if WETHAddress != address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                    revert with 0, 17
                                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                    revert with 0, 17
                                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                    revert with 0, 18
                                                require ext_code.size(address(arg1))
                                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        mem[(10 * ceil32(return_data.size)) + 228] = 128
                                        mem[(10 * ceil32(return_data.size)) + 260] = 0
                                        mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            if WETHAddress != address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                    revert with 0, 17
                                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                    revert with 0, 17
                                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                    revert with 0, 18
                                                require ext_code.size(address(arg1))
                                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])) > !(ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 17
                                if ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0]))) + ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= arg2:
                                    revert with 0, 'no profit'
                                require ext_code.size(address(arg1))
                                call address(arg1).0xbc25cf77 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= 0:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if WETHAddress == address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            if WETHAddress != address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                    revert with 0, 17
                                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                    revert with 0, 17
                                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                    revert with 0, 18
                                                require ext_code.size(address(arg1))
                                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg1)
                                        mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        mem[(10 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = 128
                                        mem[(10 * ceil32(return_data.size)) + 260] = 0
                                        mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            if WETHAddress != address(ext_call.return_data[0]):
                                                mem[(11 * ceil32(return_data.size)) + 132] = address(arg1)
                                                mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                                mem[(11 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                    revert with 0, 17
                                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                    revert with 0, 17
                                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                    revert with 0, 18
                                                mem[(12 * ceil32(return_data.size)) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[(12 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = 0
                                                mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                mem[(12 * ceil32(return_data.size)) + 292] = mem[(12 * ceil32(return_data.size)) + 128]
                                                mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])] = mem[(12 * ceil32(return_data.size)) + 160 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                                if ceil32(mem[(12 * ceil32(return_data.size)) + 128]) > mem[(12 * ceil32(return_data.size)) + 128]:
                                                    mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 128] + 324] = 0
                                                require ext_code.size(address(arg1))
                                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(12 * ceil32(return_data.size)) + 128], mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'no profit'
                if not Mask(144, 112, ext_call.return_data[0]):
                    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                        if WETHAddress == address(ext_call.return_data[0]):
                            if 0 > !(ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 17
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= arg2:
                                revert with 0, 'no profit'
                        else:
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                revert with 0, 17
                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !((997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                revert with 0, 17
                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 18
                            if 0 > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                revert with 0, 17
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) <= arg2:
                                revert with 0, 'no profit'
                        require ext_code.size(address(arg1))
                        call address(arg1).0xbc25cf77 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[0] <= 0:
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                if WETHAddress != address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                        revert with 0, 17
                                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if WETHAddress == address(ext_call.return_data[0]):
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                    revert with 0, 18
                                mem[(10 * ceil32(return_data.size)) + 228] = 128
                                mem[(10 * ceil32(return_data.size)) + 260] = 0
                                mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                require ext_code.size(address(arg1))
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 <= arg2:
                            revert with 0, 'no profit'
                        require ext_code.size(address(arg1))
                        call address(arg1).0xbc25cf77 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 100] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                if WETHAddress != address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                        revert with 0, 17
                                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if WETHAddress == address(ext_call.return_data[0]):
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg1)
                                mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                    revert with 0, 18
                                mem[(10 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = 128
                                mem[(10 * ceil32(return_data.size)) + 260] = 0
                                mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                require ext_code.size(address(arg1))
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        mem[(11 * ceil32(return_data.size)) + 132] = address(arg1)
                                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        mem[(11 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        mem[(12 * ceil32(return_data.size)) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(12 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                        mem[(12 * ceil32(return_data.size)) + 196] = 0
                                        mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                        mem[(12 * ceil32(return_data.size)) + 260] = 128
                                        mem[(12 * ceil32(return_data.size)) + 292] = mem[(12 * ceil32(return_data.size)) + 128]
                                        mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])] = mem[(12 * ceil32(return_data.size)) + 160 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                        if ceil32(mem[(12 * ceil32(return_data.size)) + 128]) > mem[(12 * ceil32(return_data.size)) + 128]:
                                            mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 128] + 324] = 0
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(12 * ceil32(return_data.size)) + 128], mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if WETHAddress != address(ext_call.return_data[0]):
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                        if Mask(144, 112, ext_call.return_data[0]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if 997 * Mask(144, 112, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                            revert with 0, 17
                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * Mask(144, 112, ext_call.return_data[0])):
                            revert with 0, 17
                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])):
                            revert with 0, 18
                        if 0 > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0]))):
                            revert with 0, 17
                        if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])) <= arg2:
                                revert with 0, 'no profit'
                        else:
                            if WETHAddress == address(ext_call.return_data[0]):
                                if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])) > !(ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 17
                                if ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0]))) + ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= arg2:
                                    revert with 0, 'no profit'
                            else:
                                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !((997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 18
                                if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0])) > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                    revert with 0, 17
                                if ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(144, 112, ext_call.return_data[0]))) + ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))) <= arg2:
                                    revert with 0, 'no profit'
                        require ext_code.size(address(arg1))
                        call address(arg1).0xbc25cf77 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[0] <= 0:
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                if WETHAddress != address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                        revert with 0, 17
                                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if WETHAddress == address(ext_call.return_data[0]):
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                    revert with 0, 18
                                mem[(10 * ceil32(return_data.size)) + 228] = 128
                                mem[(10 * ceil32(return_data.size)) + 260] = 0
                                mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                require ext_code.size(address(arg1))
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 > !Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            if Mask(144, 112, ext_call.return_data[0]) <= arg2:
                                revert with 0, 'no profit'
                            require ext_code.size(address(arg1))
                            call address(arg1).0xbc25cf77 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    if WETHAddress != address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if WETHAddress == address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg1)
                                    mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                        revert with 0, 17
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                        revert with 0, 17
                                    if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    mem[(10 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = 128
                                    mem[(10 * ceil32(return_data.size)) + 260] = 0
                                    mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            mem[(11 * ceil32(return_data.size)) + 132] = address(arg1)
                                            mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            mem[(11 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            mem[(12 * ceil32(return_data.size)) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[(12 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                            mem[(12 * ceil32(return_data.size)) + 196] = 0
                                            mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                            mem[(12 * ceil32(return_data.size)) + 260] = 128
                                            mem[(12 * ceil32(return_data.size)) + 292] = mem[(12 * ceil32(return_data.size)) + 128]
                                            mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])] = mem[(12 * ceil32(return_data.size)) + 160 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                            if ceil32(mem[(12 * ceil32(return_data.size)) + 128]) > mem[(12 * ceil32(return_data.size)) + 128]:
                                                mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 128] + 324] = 0
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(12 * ceil32(return_data.size)) + 128], mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if WETHAddress == address(ext_call.return_data[0]):
                                if Mask(144, 112, ext_call.return_data[0]) > !(ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 17
                                if Mask(144, 112, ext_call.return_data[0]) + ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= arg2:
                                    revert with 0, 'no profit'
                                require ext_code.size(address(arg1))
                                call address(arg1).0xbc25cf77 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                if ext_call.return_data[0] <= 0:
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if WETHAddress == address(ext_call.return_data[0]):
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            if WETHAddress != address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                    revert with 0, 17
                                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                    revert with 0, 17
                                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                    revert with 0, 18
                                                require ext_code.size(address(arg1))
                                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        mem[(10 * ceil32(return_data.size)) + 228] = 128
                                        mem[(10 * ceil32(return_data.size)) + 260] = 0
                                        mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            if WETHAddress != address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY', mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                    revert with 0, 17
                                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                    revert with 0, 17
                                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                    revert with 0, 18
                                                require ext_code.size(address(arg1))
                                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                    revert with 0, 17
                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !((997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                    revert with 0, 17
                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                    revert with 0, 18
                                if Mask(144, 112, ext_call.return_data[0]) > !((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))):
                                    revert with 0, 17
                                if Mask(144, 112, ext_call.return_data[0]) + ((997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))) <= arg2:
                                    revert with 0, 'no profit'
                                require ext_code.size(address(arg1))
                                call address(arg1).0xbc25cf77 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= 0:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        if WETHAddress != address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(arg1), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                            if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                revert with 0, 17
                                            if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                revert with 0, 17
                                            if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                revert with 0, 17
                                            if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                revert with 0, 17
                                            if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                revert with 0, 18
                                            require ext_code.size(address(arg1))
                                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if WETHAddress == address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            if WETHAddress != address(ext_call.return_data[0]):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                    revert with 0, 17
                                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                    revert with 0, 17
                                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                    revert with 0, 18
                                                require ext_code.size(address(arg1))
                                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg1)
                                        mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                            revert with 0, 17
                                        if Mask(112, 0, ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604:
                                            revert with 0, 17
                                        if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) > !(997 * ext_call.return_data[0]):
                                            revert with 0, 17
                                        if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                            revert with 0, 18
                                        mem[(10 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = 128
                                        mem[(10 * ceil32(return_data.size)) + 260] = 0
                                        mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
                                        require ext_code.size(address(arg1))
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 0:
                                            if WETHAddress != address(ext_call.return_data[0]):
                                                mem[(11 * ceil32(return_data.size)) + 132] = address(arg1)
                                                mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), ext_call.return_data[0]
                                                mem[(11 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
                                                if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                    revert with 0, 17
                                                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if Mask(112, 0, ext_call.return_data[32]) > 0x4189374bc6a7ef9db22d0e5604:
                                                    revert with 0, 17
                                                if Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) > !(997 * ext_call.return_data[0]):
                                                    revert with 0, 17
                                                if not Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                    revert with 0, 18
                                                mem[(12 * ceil32(return_data.size)) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[(12 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                                mem[(12 * ceil32(return_data.size)) + 196] = 0
                                                mem[(12 * ceil32(return_data.size)) + 228] = this.address
                                                mem[(12 * ceil32(return_data.size)) + 260] = 128
                                                mem[(12 * ceil32(return_data.size)) + 292] = mem[(12 * ceil32(return_data.size)) + 128]
                                                mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])] = mem[(12 * ceil32(return_data.size)) + 160 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                                if ceil32(mem[(12 * ceil32(return_data.size)) + 128]) > mem[(12 * ceil32(return_data.size)) + 128]:
                                                    mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 128] + 324] = 0
                                                require ext_code.size(address(arg1))
                                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[(12 * ceil32(return_data.size)) + 128], mem[(12 * ceil32(return_data.size)) + 324 len ceil32(mem[(12 * ceil32(return_data.size)) + 128])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
}



}
