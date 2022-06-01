contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
function withdrawEther() payable {
    if eth.balance(this.address):
        call 0x585845b853f6a37b159bd8dc98bd92f732c84716 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
}

function sub_0fd197f7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    staticcall address(arg1).vaultCollateral(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg1).vaultDebt(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    mem[calldata.size + 128] = 0
    mem[calldata.size + 128 len ceil32(calldata.size)] = 0, call.data[4 len calldata.size - 4], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    if ceil32(calldata.size) <= calldata.size:
        delegate this.address with:
           funct (Mask(32, -(8 * ceil32(calldata.size) - calldata.size) + 224, 0, call.data[4 len calldata.size - 4]) >> -(8 * ceil32(calldata.size) - calldata.size) + 224)
             gas gas_remaining wei
            args (Mask(8 * calldata.size - 4, -(8 * calldata.size) + 256, call.data[4 len calldata.size - 4], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256) << (8 * calldata.size) - 256)
    else:
        mem[(2 * calldata.size) + 128] = 0
        delegate this.address.mem[calldata.size + 128 len 4] with:
             gas gas_remaining wei
            args mem[calldata.size + 132 len calldata.size - 4]
    if not delegate.return_code:
        revert with 0, 'uniswapV2Call failed'
    return 0, call.data[4 len calldata.size - 4]
}

function sub_d90d4da7(?) payable {
    require calldata.size - 4 >= 64
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    staticcall 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 2, 0, arg1 * arg2 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        return (arg1 * arg2 / 10^18)
    if var30001 > !(arg1 * arg2 / 10^18 / 2000):
        revert with 'NH{q', 17
    staticcall 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 2, 0, var34001
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var38002 - var38001 >= 32
    if var42001 >= arg1:
        return var42004
    if var46001 > !(arg1 * arg2 / 10^18 / 2000):
        revert with 'NH{q', 17
    staticcall 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 2, 0, var50001
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var54002 - var54001 >= 32
    if var58001 >= arg1:
        return var58004
    if var62001 > !(arg1 * arg2 / 10^18 / 2000):
        revert with 'NH{q', 17
    # nil
}

function sub_52097620(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        if mem[_15]:
            mem[mem[64] + 4] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[mem[64] + 36] = _16
            call address(cd[((32 * idx) + cd[36] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, _16
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19] == bool(mem[_19])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if cd[4]:
        if eth.balance(this.address):
            call 0x585845b853f6a37b159bd8dc98bd92f732c84716 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
}

function sub_7d2dac24(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    staticcall address(arg1) >> 96.checkCost(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'done'
    if ext_call.return_data[0] and arg5 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    staticcall 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 2, 0, ext_call.return_data[0] * arg5 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        require ext_code.size(address(arg3))
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 >= address(arg4):
            call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0] * arg5 / 10^18, address(this.address), 128, 128, ext_call.return_data[0], arg1, arg2, address(arg4)
        else:
            call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * arg5 / 10^18, 0, address(this.address), 128, 128, ext_call.return_data[0], arg1, arg2, address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if var42001 > !(ext_call.return_data[0] * arg5 / 10^18 / 2000):
        revert with 'NH{q', 17
    staticcall 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 2, 0, var46001
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var50002 - var50001 >= 32
    if var54001 >= ext_call.return_data[0]:
        require ext_code.size(address(arg3))
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 >= address(arg4):
            call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, var54004, address(this.address), 128, 128, ext_call.return_data[0], arg1, arg2, address(arg4)
        else:
            call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args var54004, 0, address(this.address), 128, 128, ext_call.return_data[0], arg1, arg2, address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if var58001 > !(ext_call.return_data[0] * arg5 / 10^18 / 2000):
        revert with 'NH{q', 17
    staticcall 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 2, 0, var62001
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var66002 - var66001 >= 32
    if var70001 < ext_call.return_data[0]:
        if var74001 > !(ext_call.return_data[0] * arg5 / 10^18 / 2000):
            revert with 'NH{q', 17
        # nil
    else:
        require ext_code.size(address(arg3))
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 >= address(arg4):
            call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, var70004, address(this.address), 128, 128, ext_call.return_data[0], arg1, arg2, address(arg4)
        else:
            call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args var70004, 0, address(this.address), 128, 128, ext_call.return_data[0], arg1, arg2, address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    mem[100] = 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e
    if arg2:
        mem[132] = arg2
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e, arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 100] = 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae
        mem[ceil32(return_data.size) + 132] = 2
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 228] = cd[(arg4 + 36)]
        call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0x7981c43e with:
             gas gas_remaining wei
            args 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae, 2, 0, arg2, cd[(arg4 + 36)]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = Mask(64, 96, cd[(arg4 + 68)]) >> 96
        mem[(2 * ceil32(return_data.size)) + 132] = cd[(arg4 + 36)]
        call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(arg4 + 68)]) << 96, cd[(arg4 + 36)]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = cd[(arg4 + 100)]
        require ext_code.size(Mask(64, 96, cd[(arg4 + 68)]) >> 96)
        call Mask(64, 96, cd[(arg4 + 68)]) >> 96.liquidateVault(uint256 arg1) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(Mask(64, 96, cd[(arg4 + 68)]) >> 96)
        call Mask(64, 96, cd[(arg4 + 68)]) >> 96.getPaid() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not bool(cd[(arg4 + 68)]):
            staticcall msg.sender.getReserves() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if not arg3:
                if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] < arg2:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)):
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + 428] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 428] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + 460] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) << 288)
                    if return_data.size:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 494 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] < arg2:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)):
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + 428] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 428] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + 460] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) << 288)
                    if return_data.size:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 494 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall Mask(64, 96, cd[(arg4 + 68)]) >> 96.collateral() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdrawAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall msg.sender.getReserves() with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if not arg3:
                if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] < arg2:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)):
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                    mem[(8 * ceil32(return_data.size)) + 260] = 68
                    mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 360] = 32
                    mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 492 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                            if not mem[(8 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(13 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] < arg2:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)):
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                    mem[(8 * ceil32(return_data.size)) + 260] = 68
                    mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 360] = 32
                    mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 492 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                            if not mem[(8 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(13 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[132] = arg3
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e, arg3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 100] = 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae
        mem[ceil32(return_data.size) + 132] = 2
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 228] = cd[(arg4 + 36)]
        call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0x7981c43e with:
             gas gas_remaining wei
            args 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae, 2, 0, arg3, cd[(arg4 + 36)]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = Mask(64, 96, cd[(arg4 + 68)]) >> 96
        mem[(2 * ceil32(return_data.size)) + 132] = cd[(arg4 + 36)]
        call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(arg4 + 68)]) << 96, cd[(arg4 + 36)]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = cd[(arg4 + 100)]
        require ext_code.size(Mask(64, 96, cd[(arg4 + 68)]) >> 96)
        call Mask(64, 96, cd[(arg4 + 68)]) >> 96.liquidateVault(uint256 arg1) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(Mask(64, 96, cd[(arg4 + 68)]) >> 96)
        call Mask(64, 96, cd[(arg4 + 68)]) >> 96.getPaid() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not bool(cd[(arg4 + 68)]):
            staticcall msg.sender.getReserves() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if not arg3:
                if ext_call.return_data[50 len 14] and arg3 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] * arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] < arg3:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] - arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)):
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                        if not 0, Mask(224, 32, arg3) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + 428] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 428] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + 460] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) << 288)
                    if return_data.size:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 494 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14] and arg3 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] * arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] < arg3:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] - arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)):
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                        if not 0, Mask(224, 32, arg3) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + 428] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 428] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + 460] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) << 288)
                    if return_data.size:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 494 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall Mask(64, 96, cd[(arg4 + 68)]) >> 96.collateral() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdrawAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall msg.sender.getReserves() with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if not arg3:
                if ext_call.return_data[50 len 14] and arg3 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] * arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] < arg3:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] - arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)):
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                        if not 0, Mask(224, 32, arg3) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1
                    mem[(8 * ceil32(return_data.size)) + 260] = 68
                    mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 360] = 32
                    mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 492 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                            if not mem[(8 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(13 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14] and arg3 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] * arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] < arg3:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] - arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)):
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                        if not 0, Mask(224, 32, arg3) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1
                    mem[(8 * ceil32(return_data.size)) + 260] = 68
                    mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 360] = 32
                    mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 492 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                            if not mem[(8 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(13 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    mem[100] = 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e
    if arg2:
        mem[132] = arg2
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e, arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 100] = 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae
        mem[ceil32(return_data.size) + 132] = 2
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 228] = cd[(arg4 + 36)]
        call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0x7981c43e with:
             gas gas_remaining wei
            args 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae, 2, 0, arg2, cd[(arg4 + 36)]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = Mask(64, 96, cd[(arg4 + 68)]) >> 96
        mem[(2 * ceil32(return_data.size)) + 132] = cd[(arg4 + 36)]
        call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(arg4 + 68)]) << 96, cd[(arg4 + 36)]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = cd[(arg4 + 100)]
        require ext_code.size(Mask(64, 96, cd[(arg4 + 68)]) >> 96)
        call Mask(64, 96, cd[(arg4 + 68)]) >> 96.liquidateVault(uint256 arg1) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(Mask(64, 96, cd[(arg4 + 68)]) >> 96)
        call Mask(64, 96, cd[(arg4 + 68)]) >> 96.getPaid() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not bool(cd[(arg4 + 68)]):
            staticcall msg.sender.getReserves() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if not arg3:
                if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] < arg2:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)):
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + 428] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 428] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + 460] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) << 288)
                    if return_data.size:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 494 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] < arg2:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)):
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + 428] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 428] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + 460] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) << 288)
                    if return_data.size:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 494 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall Mask(64, 96, cd[(arg4 + 68)]) >> 96.collateral() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdrawAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall msg.sender.getReserves() with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if not arg3:
                if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] < arg2:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)):
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                    mem[(8 * ceil32(return_data.size)) + 260] = 68
                    mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 360] = 32
                    mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 492 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                            if not mem[(8 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(13 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] < arg2:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)):
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                    mem[(8 * ceil32(return_data.size)) + 260] = 68
                    mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 360] = 32
                    mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 492 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                            if not mem[(8 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(13 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[132] = arg3
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e, arg3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 100] = 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae
        mem[ceil32(return_data.size) + 132] = 2
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 228] = cd[(arg4 + 36)]
        call 0x001e3ba199b4ff4b5b6e97acd96dafc0e2e4156e.0x7981c43e with:
             gas gas_remaining wei
            args 0xb0d2eb3c2ca3c6916fab8dcbf9d9c165649231ae, 2, 0, arg3, cd[(arg4 + 36)]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = Mask(64, 96, cd[(arg4 + 68)]) >> 96
        mem[(2 * ceil32(return_data.size)) + 132] = cd[(arg4 + 36)]
        call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(arg4 + 68)]) << 96, cd[(arg4 + 36)]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = cd[(arg4 + 100)]
        require ext_code.size(Mask(64, 96, cd[(arg4 + 68)]) >> 96)
        call Mask(64, 96, cd[(arg4 + 68)]) >> 96.liquidateVault(uint256 arg1) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(Mask(64, 96, cd[(arg4 + 68)]) >> 96)
        call Mask(64, 96, cd[(arg4 + 68)]) >> 96.getPaid() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not bool(cd[(arg4 + 68)]):
            staticcall msg.sender.getReserves() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if not arg3:
                if ext_call.return_data[50 len 14] and arg3 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] * arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] < arg3:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] - arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)):
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                        if not 0, Mask(224, 32, arg3) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + 428] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 428] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + 460] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) << 288)
                    if return_data.size:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 494 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14] and arg3 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] * arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] < arg3:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] - arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)):
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                        if not 0, Mask(224, 32, arg3) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + 428] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 428] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + 460] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) << 288)
                    if return_data.size:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 494 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = ext_call.return_data[0]
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall Mask(64, 96, cd[(arg4 + 68)]) >> 96.collateral() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdrawAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall msg.sender.getReserves() with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if not arg3:
                if ext_call.return_data[50 len 14] and arg3 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] * arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] < arg3:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] - arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)):
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                        if not 0, Mask(224, 32, arg3) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1
                    mem[(8 * ceil32(return_data.size)) + 260] = 68
                    mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 360] = 32
                    mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 492 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                            if not mem[(8 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(13 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[18 len 14] and arg3 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] * arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] < arg3:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] - arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if not (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                    revert with 'NH{q', 18
                if 1 > !(1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)):
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 164] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[(arg4 + 132)])):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
                call address(cd[(arg4 + 132)]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                        if not 0, Mask(224, 32, arg3) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1
                    mem[(8 * ceil32(return_data.size)) + 260] = 68
                    mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 360] = 32
                    mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + 492] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 492 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                            if not mem[(8 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if ext_call.return_data[0] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[(arg4 + 132)])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(cd[(arg4 + 132)]) with:
                       funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) - 1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                            if not 0, Mask(224, 32, arg3) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        staticcall 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            call 0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b.0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0], mem[(13 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
