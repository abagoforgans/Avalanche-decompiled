contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - _fallback()
#
uint32 stor0;
address owner;
uint256 stor0;

function owner() {
    return address(owner)
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function rugPull(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = address(owner)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_9a25ac73(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _148 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_148))
        staticcall address(_148).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _152 = mem[_151]
        if mem[_151]:
            _153 = mem[64]
            mem[mem[64] + 36] = address(owner)
            mem[mem[64] + 68] = _152
            _154 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_154 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_154 + 36 len 28]
            mem[64] = _153 + 164
            mem[_153 + 100] = 32
            mem[_153 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_148)):
                revert with 0, 'Address: call to non-contract'
            _161 = mem[_154]
            s = 0
            while s < _161:
                mem[s + _153 + 164] = mem[s + _154 + 32]
                s = s + 32
                continue 
            if ceil32(_161) > _161:
                mem[_161 + _153 + 164] = 0
            call address(_148).mem[_153 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_153 + 168 len _161 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_153 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_153 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _153 + 232] = mem[idx + _153 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_153 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _153 + ceil32(return_data.size) + 165
                mem[_153 + 164] = return_data.size
                mem[_153 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_153 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_153 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _153 + ceil32(return_data.size) + 233] = mem[idx + _153 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_153 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_153 + 196] == bool(mem[_153 + 196])
                    if not mem[_153 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function userBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = arg1
    mem[704] = arg2
    require ext_code.size(arg2)
    staticcall arg2.oracle() with:
            gas gas_remaining wei
    mem[768] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[736] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 960] = 0
    mem[ceil32(return_data.size) + 992] = 0
    mem[ceil32(return_data.size) + 1024] = 0
    mem[ceil32(return_data.size) + 768] = 0
    mem[ceil32(return_data.size) + 800] = 0
    mem[ceil32(return_data.size) + 832] = 0
    mem[ceil32(return_data.size) + 864] = 0
    mem[ceil32(return_data.size) + 896] = 0
    mem[ceil32(return_data.size) + 928] = 0
    mem[ceil32(return_data.size) + 1056] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 1060] = arg1
    require ext_code.size(arg2)
    staticcall arg2.getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 1056 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 1056
    require return_data.size >= 32
    _14 = mem[ceil32(return_data.size) + 1056 len 4], address(arg1) << 64
    require mem[ceil32(return_data.size) + 1056 len 4], address(arg1) << 64 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 1056 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 1056 len 4], address(arg1) << 64 + 1087
    _15 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1056 len 4], address(arg1) << 64 + 1056]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1056 len 4], address(arg1) << 64 + 1056] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1056 len 4], address(arg1) << 64 + 1056]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1056 len 4], address(arg1) << 64 + 1056]) + 1057 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1056 len 4], address(arg1) << 64 + 1056]) + 1057
    mem[(2 * ceil32(return_data.size)) + 1056] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1056 len 4], address(arg1) << 64 + 1056]
    require _14 + (32 * _15) + 32 <= return_data.size
    s = ceil32(return_data.size) + _14 + 1088
    t = (2 * ceil32(return_data.size)) + 1088
    idx = 0
    while idx < _15:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _65 = mem[64]
    mem[64] = mem[64] + 96
    mem[_65] = 0
    mem[_65 + 32] = 0
    mem[_65 + 64] = 0
    idx = 0
    while idx < _15:
        if idx >= mem[(2 * ceil32(return_data.size)) + 1056]:
            revert with 0, 50
        _116 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1088]
        _117 = mem[672]
        mem[mem[64] + 4] = mem[684 len 20]
        require ext_code.size(address(_116))
        call address(_116).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args address(_117)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _126 = mem[_122]
        _127 = mem[736]
        mem[mem[64] + 4] = address(_116)
        require ext_code.size(address(_127))
        staticcall address(_127).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_116)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _140 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _142 = mem[_140]
        if mem[_140] and _126 > -1 / mem[_140]:
            revert with 0, 17
        _143 = mem[672]
        mem[mem[64] + 4] = mem[684 len 20]
        require ext_code.size(address(_116))
        call address(_116).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(_143)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _147 = mem[_146]
        _148 = mem[736]
        mem[mem[64] + 4] = address(_116)
        require ext_code.size(address(_148))
        staticcall address(_148).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_116)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _152 = mem[_151]
        if mem[_151] and _147 > -1 / mem[_151]:
            revert with 0, 17
        if _142 * _126 / 10^18 <= mem[ceil32(return_data.size) + 832]:
            if mem[_151] * _147 / 10^18 > mem[ceil32(return_data.size) + 928]:
                mem[ceil32(return_data.size) + 864] = address(_116)
                mem[ceil32(return_data.size) + 896] = _147
                mem[ceil32(return_data.size) + 928] = _152 * _147 / 10^18
        else:
            mem[ceil32(return_data.size) + 768] = address(_116)
            mem[ceil32(return_data.size) + 800] = _126
            mem[ceil32(return_data.size) + 832] = _142 * _126 / 10^18
            if _152 * _147 / 10^18 > mem[ceil32(return_data.size) + 928]:
                mem[ceil32(return_data.size) + 864] = address(_116)
                mem[ceil32(return_data.size) + 896] = _147
                mem[ceil32(return_data.size) + 928] = _152 * _147 / 10^18
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(mem[716 len 20])
    staticcall mem[716 len 20].getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args address(mem[672])
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _123 = mem[_121]
    _124 = mem[_121 + 32]
    mem[ceil32(return_data.size) + 1024] = mem[_121 + 64]
    mem[ceil32(return_data.size) + 992] = _124
    mem[ceil32(return_data.size) + 960] = _123
    mem[mem[64]] = mem[ceil32(return_data.size) + 780 len 20]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 800]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 832]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 876 len 20]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 896]
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 928]
    mem[mem[64] + 192] = _123
    mem[mem[64] + 224] = _124
    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 1024]
    return mem[mem[64] len 192], _123, _124, mem[mem[64] + 256]
}

function sub_da42cc74(?) {
    require calldata.size - 4 >= 480
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    require arg9 == address(arg9)
    require arg11 == address(arg11)
    require arg12 == address(arg12)
    require ext_code.size(address(arg2))
    staticcall address(arg2).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[192] = ext_call.return_data[12 len 20]
    if address(arg7) == address(arg8):
        if address(arg7) == address(arg9):
            if arg10 and arg13 > -1 / arg10:
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            if uint64(arg6) << 96 != address(arg6):
                staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg6), address(arg6)
            else:
                if uint64(arg6) << 96 == address(arg6):
                    staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg5), address(arg6)
                else:
                    staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg6), address(arg6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            if ext_call.return_data[12 len 20] == address(arg6):
                if ext_call.return_data[12 len 20] == address(arg6):
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg10 * arg13 / 100, 0, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, address(arg6), address(arg6), arg13, arg14, arg15
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg10 * arg13 / 100, arg10 * arg13 / 100, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, address(arg6), address(arg6), arg13, arg14, arg15
            else:
                if ext_call.return_data[12 len 20] == address(arg6):
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, address(arg6), address(arg6), arg13, arg14, arg15
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg10 * arg13 / 100, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, address(arg6), address(arg6), arg13, arg14, arg15
        else:
            require ext_code.size(address(arg9))
            staticcall address(arg9).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[448] = ext_call.return_data[12 len 20]
            if arg10 and arg13 > -1 / arg10:
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            if mem[460 len 20] != address(arg6):
                staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[460 len 20], address(arg6)
            else:
                if uint64(arg6) << 96 == address(arg6):
                    staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg5), address(arg6)
                else:
                    staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg6), address(arg6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            if ext_call.return_data[12 len 20] == mem[460 len 20]:
                if ext_call.return_data[12 len 20] == mem[460 len 20]:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg10 * arg13 / 100, 0, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, address(arg6), mem[460 len 20], arg13, arg14, arg15
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg10 * arg13 / 100, arg10 * arg13 / 100, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, address(arg6), mem[460 len 20], arg13, arg14, arg15
            else:
                if ext_call.return_data[12 len 20] == mem[460 len 20]:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, address(arg6), mem[460 len 20], arg13, arg14, arg15
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg10 * arg13 / 100, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, address(arg6), mem[460 len 20], arg13, arg14, arg15
    else:
        require ext_code.size(address(arg8))
        staticcall address(arg8).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[416] = ext_call.return_data[12 len 20]
        if address(arg7) == address(arg9):
            if arg10 and arg13 > -1 / arg10:
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            if uint64(arg6) << 96 != address(arg6):
                staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg6), address(arg6)
            else:
                if mem[428 len 20] == address(arg6):
                    staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg5), address(arg6)
                else:
                    staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[428 len 20], address(arg6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            if ext_call.return_data[12 len 20] == address(arg6):
                if ext_call.return_data[12 len 20] == address(arg6):
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg10 * arg13 / 100, 0, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, mem[428 len 20], address(arg6), arg13, arg14, arg15
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg10 * arg13 / 100, arg10 * arg13 / 100, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, mem[428 len 20], address(arg6), arg13, arg14, arg15
            else:
                if ext_call.return_data[12 len 20] == address(arg6):
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, mem[428 len 20], address(arg6), arg13, arg14, arg15
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg10 * arg13 / 100, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, mem[428 len 20], address(arg6), arg13, arg14, arg15
        else:
            require ext_code.size(address(arg9))
            staticcall address(arg9).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[448] = ext_call.return_data[12 len 20]
            if arg10 and arg13 > -1 / arg10:
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            if mem[460 len 20] != address(arg6):
                staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[460 len 20], address(arg6)
            else:
                if mem[428 len 20] == address(arg6):
                    staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg5), address(arg6)
                else:
                    staticcall address(ext_call.return_data[12 len 20]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[428 len 20], address(arg6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 928] = mem[428 len 20]
            mem[(8 * ceil32(return_data.size)) + 960] = mem[460 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            if ext_call.return_data[12 len 20] == mem[460 len 20]:
                if ext_call.return_data[12 len 20] == mem[460 len 20]:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg10 * arg13 / 100, 0, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, mem[(8 * ceil32(return_data.size)) + 928 len 64], arg13, arg14, arg15
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg10 * arg13 / 100, arg10 * arg13 / 100, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, mem[(8 * ceil32(return_data.size)) + 928 len 64], arg13, arg14, arg15
            else:
                if ext_call.return_data[12 len 20] == mem[460 len 20]:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, mem[(8 * ceil32(return_data.size)) + 928 len 64], arg13, arg14, arg15
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg10 * arg13 / 100, address(this.address), 128, 480, address(arg1), address(arg2), address(arg3), mem[204 len 20], address(arg5), address(arg6), address(arg7), address(arg8), address(arg9), arg10, mem[(8 * ceil32(return_data.size)) + 928 len 64], arg13, arg14, arg15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
