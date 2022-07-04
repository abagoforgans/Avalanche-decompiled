contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address owner;

function owner() payable {
    return owner
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferToMe(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_dafb9d3b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x484f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_3cb4abf0(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c08cbaab(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 128] = 0
    idx = 0
    s = cd[68]
    t = address(cd[36])
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length - 1:
            require idx < ('cd', 4).length
            _811 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_811))
            staticcall address(_811).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_811))
            staticcall address(_811).token1() with:
                    gas gas_remaining wei
        else:
            require idx + 1 < ('cd', 4).length
            require idx < ('cd', 4).length
            _816 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(_816))
            staticcall address(_816).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_816))
            staticcall address(_816).token1() with:
                    gas gas_remaining wei
        mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
            revert with 0, 
                        32,
                        37,
                        0x48556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[(32 * ('cd', 4).length) + 233 len 27]
        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
            if not address(ext_call.return_data[0]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if address(t) == address(ext_call.return_data[0]):
                if s <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * ('cd', 4).length) + 239 len 21]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 4).length) + 236 len 24]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 4).length) + 236 len 24]
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    if idx == ('cd', 4).length - 1:
                        if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                            revert with 0, 
                                        32,
                                        41,
                                        0x535377617050726f636573736f723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[(32 * ('cd', 4).length) + 237 len 23]
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    t = ext_call.return_data[0]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                if idx == ('cd', 4).length - 1:
                    if 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x535377617050726f636573736f723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[(32 * ('cd', 4).length) + 237 len 23]
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                t = ext_call.return_data[0]
                continue 
            if address(t) != ext_call.return_data[12 len 20]:
                revert with 0, 
                            32,
                            34,
                            0x595377617050726f636573736f723a204e4f5f414d4f554e545f464f525f544f4b45,
                            mem[(32 * ('cd', 4).length) + 230 len 30]
        else:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if address(t) == ext_call.return_data[12 len 20]:
                if s <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * ('cd', 4).length) + 239 len 21]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 4).length) + 236 len 24]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 4).length) + 236 len 24]
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    if idx == ('cd', 4).length - 1:
                        if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                            revert with 0, 
                                        32,
                                        41,
                                        0x535377617050726f636573736f723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[(32 * ('cd', 4).length) + 237 len 23]
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    t = ext_call.return_data[0]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                if idx == ('cd', 4).length - 1:
                    if 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x535377617050726f636573736f723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[(32 * ('cd', 4).length) + 237 len 23]
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                t = ext_call.return_data[0]
                continue 
            if address(t) != address(ext_call.return_data[0]):
                revert with 0, 
                            32,
                            34,
                            0x595377617050726f636573736f723a204e4f5f414d4f554e545f464f525f544f4b45,
                            mem[(32 * ('cd', 4).length) + 230 len 30]
        if s <= 0:
            revert with 0, 
                        32,
                        43,
                        0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[(32 * ('cd', 4).length) + 239 len 21]
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 
                        32,
                        40,
                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[(32 * ('cd', 4).length) + 236 len 24]
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        40,
                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[(32 * ('cd', 4).length) + 236 len 24]
        if 997 * s / 997 != s:
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            if idx == ('cd', 4).length - 1:
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < cd[68]:
                    revert with 0, 
                                32,
                                41,
                                0x535377617050726f636573736f723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * ('cd', 4).length) + 237 len 23]
            idx = idx + 1
            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            t = ext_call.return_data[0]
            continue 
        require Mask(112, 0, ext_call.return_data[0])
        if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-add-overflow'
        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        if idx == ('cd', 4).length - 1:
            if 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < cd[68]:
                revert with 0, 
                            32,
                            41,
                            0x535377617050726f636573736f723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[(32 * ('cd', 4).length) + 237 len 23]
        idx = idx + 1
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        t = ext_call.return_data[0]
        continue 
    require 0 < ('cd', 4).length
    if not cd[100]:
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * ('cd', 4).length) + 132] = this.address
        mem[(32 * ('cd', 4).length) + 164] = address(('cd', 4)[0])
        mem[(32 * ('cd', 4).length) + 196] = cd[68]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(('cd', 4)[0]), cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = (64 * ('cd', 4).length) + 160
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(64 * ('cd', 4).length) + 160] = 0
        idx = 0
        s = cd[68]
        t = address(cd[36])
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length - 1:
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _1641 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_1641))
                staticcall address(_1641).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_1641))
                staticcall address(_1641).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 32, 37, 0x48556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if not address(ext_call.return_data[0]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) < address(ext_call.return_data[0]):
                    if address(t) == address(ext_call.return_data[0]):
                        if s <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            _1835 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1835 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1835 + 36] = 0
                            mem[_1835 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1835 + 100] = this.address
                            mem[_1835 + 132] = 128
                            mem[_1835 + 164] = mem[_1835]
                            t = 0
                            while t < mem[_1835]:
                                mem[_1835 + t + 196] = mem[_1835 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1835] % 32:
                                require ext_code.size(address(_1641))
                                call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1835 + 164 len mem[_1835] + 32]
                            else:
                                mem[floor32(mem[_1835]) + _1835 + 196] = mem[floor32(mem[_1835]) + _1835 + -(mem[_1835] % 32) + 228 len mem[_1835] % 32]
                                require ext_code.size(address(_1641))
                                call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1835], mem[_1835 + 196 len floor32(mem[_1835]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == ('cd', 4).length - 1:
                                if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                                    revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            t = ext_call.return_data[0]
                            continue 
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        _1858 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1858 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1858 + 36] = 0
                        mem[_1858 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1858 + 100] = this.address
                        mem[_1858 + 132] = 128
                        mem[_1858 + 164] = mem[_1858]
                        t = 0
                        while t < mem[_1858]:
                            mem[_1858 + t + 196] = mem[_1858 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1858] % 32:
                            require ext_code.size(address(_1641))
                            call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1858 + 164 len mem[_1858] + 32]
                        else:
                            mem[floor32(mem[_1858]) + _1858 + 196] = mem[floor32(mem[_1858]) + _1858 + -(mem[_1858] % 32) + 228 len mem[_1858] % 32]
                            require ext_code.size(address(_1641))
                            call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1858], mem[_1858 + 196 len floor32(mem[_1858]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == ('cd', 4).length - 1:
                            if 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                                revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        t = ext_call.return_data[0]
                        continue 
                    if address(t) != address(ext_call.return_data[0]):
                        revert with 0, 32, 34, 0x595377617050726f636573736f723a204e4f5f414d4f554e545f464f525f544f4b45, mem[mem[64] + 102 len 30]
                    if s <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 111 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[mem[64] + 108 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[mem[64] + 108 len 24]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        _1839 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1839 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1839 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1839 + 68] = 0
                        mem[_1839 + 100] = this.address
                        mem[_1839 + 132] = 128
                        mem[_1839 + 164] = mem[_1839]
                        t = 0
                        while t < mem[_1839]:
                            mem[_1839 + t + 196] = mem[_1839 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1839] % 32:
                            require ext_code.size(address(_1641))
                            call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1839 + 164 len mem[_1839] + 32]
                        else:
                            mem[floor32(mem[_1839]) + _1839 + 196] = mem[floor32(mem[_1839]) + _1839 + -(mem[_1839] % 32) + 228 len mem[_1839] % 32]
                            require ext_code.size(address(_1641))
                            call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1839], mem[_1839 + 196 len floor32(mem[_1839]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == ('cd', 4).length - 1:
                            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < cd[68]:
                                revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        t = ext_call.return_data[0]
                        continue 
                    require Mask(112, 0, ext_call.return_data[0])
                    if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    _1871 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1871 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1871 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1871 + 68] = 0
                    mem[_1871 + 100] = this.address
                    mem[_1871 + 132] = 128
                    mem[_1871 + 164] = mem[_1871]
                    t = 0
                    while t < mem[_1871]:
                        mem[_1871 + t + 196] = mem[_1871 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1871] % 32:
                        require ext_code.size(address(_1641))
                        call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1871 + 164 len mem[_1871] + 32]
                    else:
                        mem[floor32(mem[_1871]) + _1871 + 196] = mem[floor32(mem[_1871]) + _1871 + -(mem[_1871] % 32) + 228 len mem[_1871] % 32]
                        require ext_code.size(address(_1641))
                        call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1871], mem[_1871 + 196 len floor32(mem[_1871]) + 32]
                else:
                    if address(t) == address(ext_call.return_data[0]):
                        if s <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            _1836 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1836 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1836 + 36] = 0
                            mem[_1836 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1836 + 100] = this.address
                            mem[_1836 + 132] = 128
                            mem[_1836 + 164] = mem[_1836]
                            t = 0
                            while t < mem[_1836]:
                                mem[_1836 + t + 196] = mem[_1836 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1836] % 32:
                                require ext_code.size(address(_1641))
                                call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1836 + 164 len mem[_1836] + 32]
                            else:
                                mem[floor32(mem[_1836]) + _1836 + 196] = mem[floor32(mem[_1836]) + _1836 + -(mem[_1836] % 32) + 228 len mem[_1836] % 32]
                                require ext_code.size(address(_1641))
                                call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1836], mem[_1836 + 196 len floor32(mem[_1836]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == ('cd', 4).length - 1:
                                if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                                    revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            t = ext_call.return_data[0]
                            continue 
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        _1862 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1862 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1862 + 36] = 0
                        mem[_1862 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1862 + 100] = this.address
                        mem[_1862 + 132] = 128
                        mem[_1862 + 164] = mem[_1862]
                        t = 0
                        while t < mem[_1862]:
                            mem[_1862 + t + 196] = mem[_1862 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1862] % 32:
                            require ext_code.size(address(_1641))
                            call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1862 + 164 len mem[_1862] + 32]
                        else:
                            mem[floor32(mem[_1862]) + _1862 + 196] = mem[floor32(mem[_1862]) + _1862 + -(mem[_1862] % 32) + 228 len mem[_1862] % 32]
                            require ext_code.size(address(_1641))
                            call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(this.address), 128, mem[_1862], mem[_1862 + 196 len floor32(mem[_1862]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == ('cd', 4).length - 1:
                            if 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                                revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        t = ext_call.return_data[0]
                        continue 
                    if address(t) != address(ext_call.return_data[0]):
                        revert with 0, 32, 34, 0x595377617050726f636573736f723a204e4f5f414d4f554e545f464f525f544f4b45, mem[mem[64] + 102 len 30]
                    if s <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 111 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[mem[64] + 108 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[mem[64] + 108 len 24]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        _1843 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1843 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1843 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1843 + 68] = 0
                        mem[_1843 + 100] = this.address
                        mem[_1843 + 132] = 128
                        mem[_1843 + 164] = mem[_1843]
                        t = 0
                        while t < mem[_1843]:
                            mem[_1843 + t + 196] = mem[_1843 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1843] % 32:
                            require ext_code.size(address(_1641))
                            call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1843 + 164 len mem[_1843] + 32]
                        else:
                            mem[floor32(mem[_1843]) + _1843 + 196] = mem[floor32(mem[_1843]) + _1843 + -(mem[_1843] % 32) + 228 len mem[_1843] % 32]
                            require ext_code.size(address(_1641))
                            call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1843], mem[_1843 + 196 len floor32(mem[_1843]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == ('cd', 4).length - 1:
                            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < cd[68]:
                                revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        t = ext_call.return_data[0]
                        continue 
                    require Mask(112, 0, ext_call.return_data[0])
                    if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    _1876 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1876 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1876 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1876 + 68] = 0
                    mem[_1876 + 100] = this.address
                    mem[_1876 + 132] = 128
                    mem[_1876 + 164] = mem[_1876]
                    t = 0
                    while t < mem[_1876]:
                        mem[_1876 + t + 196] = mem[_1876 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1876] % 32:
                        require ext_code.size(address(_1641))
                        call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1876 + 164 len mem[_1876] + 32]
                    else:
                        mem[floor32(mem[_1876]) + _1876 + 196] = mem[floor32(mem[_1876]) + _1876 + -(mem[_1876] % 32) + 228 len mem[_1876] % 32]
                        require ext_code.size(address(_1641))
                        call address(_1641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(this.address), 128, mem[_1876], mem[_1876 + 196 len floor32(mem[_1876]) + 32]
            else:
                require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                _1630 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _1644 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(_1644))
                staticcall address(_1644).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_1644))
                staticcall address(_1644).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 32, 37, 0x48556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if not address(ext_call.return_data[0]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) < address(ext_call.return_data[0]):
                    if address(t) == address(ext_call.return_data[0]):
                        if s <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            _1837 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1837 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1837 + 36] = 0
                            mem[_1837 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1837 + 100] = address(_1630)
                            mem[_1837 + 132] = 128
                            mem[_1837 + 164] = mem[_1837]
                            t = 0
                            while t < mem[_1837]:
                                mem[_1837 + t + 196] = mem[_1837 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1837] % 32:
                                require ext_code.size(address(_1644))
                                call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_1630), 128, mem[_1837 + 164 len mem[_1837] + 32]
                            else:
                                mem[floor32(mem[_1837]) + _1837 + 196] = mem[floor32(mem[_1837]) + _1837 + -(mem[_1837] % 32) + 228 len mem[_1837] % 32]
                                require ext_code.size(address(_1644))
                                call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_1630), 128, mem[_1837], mem[_1837 + 196 len floor32(mem[_1837]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == ('cd', 4).length - 1:
                                if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                                    revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            t = ext_call.return_data[0]
                            continue 
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        _1866 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1866 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1866 + 36] = 0
                        mem[_1866 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1866 + 100] = address(_1630)
                        mem[_1866 + 132] = 128
                        mem[_1866 + 164] = mem[_1866]
                        t = 0
                        while t < mem[_1866]:
                            mem[_1866 + t + 196] = mem[_1866 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1866] % 32:
                            require ext_code.size(address(_1644))
                            call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_1630), 128, mem[_1866 + 164 len mem[_1866] + 32]
                        else:
                            mem[floor32(mem[_1866]) + _1866 + 196] = mem[floor32(mem[_1866]) + _1866 + -(mem[_1866] % 32) + 228 len mem[_1866] % 32]
                            require ext_code.size(address(_1644))
                            call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_1630), 128, mem[_1866], mem[_1866 + 196 len floor32(mem[_1866]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == ('cd', 4).length - 1:
                            if 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                                revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        t = ext_call.return_data[0]
                        continue 
                    if address(t) != address(ext_call.return_data[0]):
                        revert with 0, 32, 34, 0x595377617050726f636573736f723a204e4f5f414d4f554e545f464f525f544f4b45, mem[mem[64] + 102 len 30]
                    if s <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 111 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[mem[64] + 108 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[mem[64] + 108 len 24]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        _1847 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1847 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1847 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1847 + 68] = 0
                        mem[_1847 + 100] = address(_1630)
                        mem[_1847 + 132] = 128
                        mem[_1847 + 164] = mem[_1847]
                        t = 0
                        while t < mem[_1847]:
                            mem[_1847 + t + 196] = mem[_1847 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1847] % 32:
                            require ext_code.size(address(_1644))
                            call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_1630), 128, mem[_1847 + 164 len mem[_1847] + 32]
                        else:
                            mem[floor32(mem[_1847]) + _1847 + 196] = mem[floor32(mem[_1847]) + _1847 + -(mem[_1847] % 32) + 228 len mem[_1847] % 32]
                            require ext_code.size(address(_1644))
                            call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_1630), 128, mem[_1847], mem[_1847 + 196 len floor32(mem[_1847]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == ('cd', 4).length - 1:
                            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < cd[68]:
                                revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        t = ext_call.return_data[0]
                        continue 
                    require Mask(112, 0, ext_call.return_data[0])
                    if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    _1881 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1881 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1881 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1881 + 68] = 0
                    mem[_1881 + 100] = address(_1630)
                    mem[_1881 + 132] = 128
                    mem[_1881 + 164] = mem[_1881]
                    t = 0
                    while t < mem[_1881]:
                        mem[_1881 + t + 196] = mem[_1881 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1881] % 32:
                        require ext_code.size(address(_1644))
                        call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_1630), 128, mem[_1881 + 164 len mem[_1881] + 32]
                    else:
                        mem[floor32(mem[_1881]) + _1881 + 196] = mem[floor32(mem[_1881]) + _1881 + -(mem[_1881] % 32) + 228 len mem[_1881] % 32]
                        require ext_code.size(address(_1644))
                        call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_1630), 128, mem[_1881], mem[_1881 + 196 len floor32(mem[_1881]) + 32]
                else:
                    if address(t) == address(ext_call.return_data[0]):
                        if s <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 111 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[mem[64] + 108 len 24]
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            _1838 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1838 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1838 + 36] = 0
                            mem[_1838 + 68] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            mem[_1838 + 100] = address(_1630)
                            mem[_1838 + 132] = 128
                            mem[_1838 + 164] = mem[_1838]
                            t = 0
                            while t < mem[_1838]:
                                mem[_1838 + t + 196] = mem[_1838 + t + 32]
                                t = t + 32
                                continue 
                            if not mem[_1838] % 32:
                                require ext_code.size(address(_1644))
                                call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_1630), 128, mem[_1838 + 164 len mem[_1838] + 32]
                            else:
                                mem[floor32(mem[_1838]) + _1838 + 196] = mem[floor32(mem[_1838]) + _1838 + -(mem[_1838] % 32) + 228 len mem[_1838] % 32]
                                require ext_code.size(address(_1644))
                                call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_1630), 128, mem[_1838], mem[_1838 + 196 len floor32(mem[_1838]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == ('cd', 4).length - 1:
                                if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                                    revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            t = ext_call.return_data[0]
                            continue 
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * s * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        _1870 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1870 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1870 + 36] = 0
                        mem[_1870 + 68] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        mem[_1870 + 100] = address(_1630)
                        mem[_1870 + 132] = 128
                        mem[_1870 + 164] = mem[_1870]
                        t = 0
                        while t < mem[_1870]:
                            mem[_1870 + t + 196] = mem[_1870 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1870] % 32:
                            require ext_code.size(address(_1644))
                            call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_1630), 128, mem[_1870 + 164 len mem[_1870] + 32]
                        else:
                            mem[floor32(mem[_1870]) + _1870 + 196] = mem[floor32(mem[_1870]) + _1870 + -(mem[_1870] % 32) + 228 len mem[_1870] % 32]
                            require ext_code.size(address(_1644))
                            call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s), address(_1630), 128, mem[_1870], mem[_1870 + 196 len floor32(mem[_1870]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == ('cd', 4).length - 1:
                            if 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s) < cd[68]:
                                revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        t = ext_call.return_data[0]
                        continue 
                    if address(t) != address(ext_call.return_data[0]):
                        revert with 0, 32, 34, 0x595377617050726f636573736f723a204e4f5f414d4f554e545f464f525f544f4b45, mem[mem[64] + 102 len 30]
                    if s <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 111 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[mem[64] + 108 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[mem[64] + 108 len 24]
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        _1851 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1851 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1851 + 36] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        mem[_1851 + 68] = 0
                        mem[_1851 + 100] = address(_1630)
                        mem[_1851 + 132] = 128
                        mem[_1851 + 164] = mem[_1851]
                        t = 0
                        while t < mem[_1851]:
                            mem[_1851 + t + 196] = mem[_1851 + t + 32]
                            t = t + 32
                            continue 
                        if not mem[_1851] % 32:
                            require ext_code.size(address(_1644))
                            call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_1630), 128, mem[_1851 + 164 len mem[_1851] + 32]
                        else:
                            mem[floor32(mem[_1851]) + _1851 + 196] = mem[floor32(mem[_1851]) + _1851 + -(mem[_1851] % 32) + 228 len mem[_1851] % 32]
                            require ext_code.size(address(_1644))
                            call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_1630), 128, mem[_1851], mem[_1851 + 196 len floor32(mem[_1851]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == ('cd', 4).length - 1:
                            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < cd[68]:
                                revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
                        idx = idx + 1
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                        t = ext_call.return_data[0]
                        continue 
                    require Mask(112, 0, ext_call.return_data[0])
                    if 997 * s * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    _1886 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1886 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1886 + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    mem[_1886 + 68] = 0
                    mem[_1886 + 100] = address(_1630)
                    mem[_1886 + 132] = 128
                    mem[_1886 + 164] = mem[_1886]
                    t = 0
                    while t < mem[_1886]:
                        mem[_1886 + t + 196] = mem[_1886 + t + 32]
                        t = t + 32
                        continue 
                    if not mem[_1886] % 32:
                        require ext_code.size(address(_1644))
                        call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_1630), 128, mem[_1886 + 164 len mem[_1886] + 32]
                    else:
                        mem[floor32(mem[_1886]) + _1886 + 196] = mem[floor32(mem[_1886]) + _1886 + -(mem[_1886] % 32) + 228 len mem[_1886] % 32]
                        require ext_code.size(address(_1644))
                        call address(_1644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s), 0, address(_1630), 128, mem[_1886], mem[_1886 + 196 len floor32(mem[_1886]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == ('cd', 4).length - 1:
                if 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s) < cd[68]:
                    revert with 0, 'SSwapProcessor: INSUFFICIENT_OUTPUT_AMOUN'
            idx = idx + 1
            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            t = ext_call.return_data[0]
            continue 
    else:
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
            revert with 0, 
                        32,
                        37,
                        0x48556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[(32 * ('cd', 4).length) + 233 len 27]
        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
            if not address(ext_call.return_data[0]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        else:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if address(cd[36]) == address(ext_call.return_data[0]):
            if cd[68] <= 0:
                revert with 0, 
                            32,
                            43,
                            0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(32 * ('cd', 4).length) + 239 len 21]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 
                            32,
                            40,
                            0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(32 * ('cd', 4).length) + 236 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 
                            32,
                            40,
                            0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[(32 * ('cd', 4).length) + 236 len 24]
            if 997 * cd[68] / 997 != cd[68]:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * cd[68]) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[18 len 14]) + (997 * cd[68])
                mem[(32 * ('cd', 4).length) + 192] = address(cd[36])
                mem[(32 * ('cd', 4).length) + 224] = cd[68]
                mem[(32 * ('cd', 4).length) + 160] = 96
                mem[(32 * ('cd', 4).length) + 256] = ('cd', 4).length
                mem[(32 * ('cd', 4).length) + 288 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[(64 * ('cd', 4).length) + 288] = 0
                if not floor32(('cd', 4).length) + 128 % 32:
                    require ext_code.size(address(('cd', 4)[0]))
                    call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, floor32(('cd', 4).length) + 128, mem[(32 * ('cd', 4).length) + 160 len ceil32(floor32(('cd', 4).length)) + 4], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + ceil32(floor32(('cd', 4).length)) + 456 len floor32(('cd', 4).length) + -ceil32(floor32(('cd', 4).length)) + 124]
                else:
                    mem[floor32(floor32(('cd', 4).length) + 128) + (32 * ('cd', 4).length) + floor32(('cd', 4).length) + 452] = mem[floor32(floor32(('cd', 4).length) + 128) + (32 * ('cd', 4).length) + floor32(('cd', 4).length) + -(floor32(('cd', 4).length) + 128 % 32) + 484 len floor32(('cd', 4).length) + 128 % 32]
                    require ext_code.size(address(('cd', 4)[0]))
                    call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, floor32(('cd', 4).length) + 128, mem[(32 * ('cd', 4).length) + 160 len ceil32(floor32(('cd', 4).length)) + 4], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + ceil32(floor32(('cd', 4).length)) + 456 len floor32(floor32(('cd', 4).length) + 128) + -ceil32(floor32(('cd', 4).length)) + 28]
            else:
                require ext_call.return_data[50 len 14]
                if 997 * cd[68] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * cd[68]) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[18 len 14]) + (997 * cd[68])
                mem[(32 * ('cd', 4).length) + 192] = address(cd[36])
                mem[(32 * ('cd', 4).length) + 224] = cd[68]
                mem[(32 * ('cd', 4).length) + 160] = 96
                mem[(32 * ('cd', 4).length) + 256] = ('cd', 4).length
                mem[(32 * ('cd', 4).length) + 288 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[(64 * ('cd', 4).length) + 288] = 0
                if not floor32(('cd', 4).length) + 128 % 32:
                    require ext_code.size(address(('cd', 4)[0]))
                    call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, floor32(('cd', 4).length) + 128, mem[(32 * ('cd', 4).length) + 160 len ceil32(floor32(('cd', 4).length)) + 4], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + ceil32(floor32(('cd', 4).length)) + 456 len floor32(('cd', 4).length) + -ceil32(floor32(('cd', 4).length)) + 124]
                else:
                    mem[floor32(floor32(('cd', 4).length) + 128) + (32 * ('cd', 4).length) + floor32(('cd', 4).length) + 452] = mem[floor32(floor32(('cd', 4).length) + 128) + (32 * ('cd', 4).length) + floor32(('cd', 4).length) + -(floor32(('cd', 4).length) + 128 % 32) + 484 len floor32(('cd', 4).length) + 128 % 32]
                    require ext_code.size(address(('cd', 4)[0]))
                    call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, floor32(('cd', 4).length) + 128, mem[(32 * ('cd', 4).length) + 160 len ceil32(floor32(('cd', 4).length)) + 4], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + ceil32(floor32(('cd', 4).length)) + 456 len floor32(floor32(('cd', 4).length) + 128) + -ceil32(floor32(('cd', 4).length)) + 28]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if address(cd[36]) == address(ext_call.return_data[0]):
                if cd[68] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x4e556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * ('cd', 4).length) + 239 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 4).length) + 236 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 4).length) + 236 len 24]
                if 997 * cd[68] / 997 != cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * cd[68]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * cd[68])
                    mem[(32 * ('cd', 4).length) + 192] = address(cd[36])
                    mem[(32 * ('cd', 4).length) + 224] = cd[68]
                    mem[(32 * ('cd', 4).length) + 160] = 96
                    mem[(32 * ('cd', 4).length) + 256] = ('cd', 4).length
                    mem[(32 * ('cd', 4).length) + 288 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[(64 * ('cd', 4).length) + 288] = 0
                    if not floor32(('cd', 4).length) + 128 % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, floor32(('cd', 4).length) + 128, mem[(32 * ('cd', 4).length) + 160 len ceil32(floor32(('cd', 4).length)) + 4], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + ceil32(floor32(('cd', 4).length)) + 456 len floor32(('cd', 4).length) + -ceil32(floor32(('cd', 4).length)) + 124]
                    else:
                        mem[floor32(floor32(('cd', 4).length) + 128) + (32 * ('cd', 4).length) + floor32(('cd', 4).length) + 452] = mem[floor32(floor32(('cd', 4).length) + 128) + (32 * ('cd', 4).length) + floor32(('cd', 4).length) + -(floor32(('cd', 4).length) + 128 % 32) + 484 len floor32(('cd', 4).length) + 128 % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, floor32(('cd', 4).length) + 128, mem[(32 * ('cd', 4).length) + 160 len ceil32(floor32(('cd', 4).length)) + 4], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + ceil32(floor32(('cd', 4).length)) + 456 len floor32(floor32(('cd', 4).length) + 128) + -ceil32(floor32(('cd', 4).length)) + 28]
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * cd[68] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * cd[68]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * cd[68]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * cd[68])
                    mem[(32 * ('cd', 4).length) + 192] = address(cd[36])
                    mem[(32 * ('cd', 4).length) + 224] = cd[68]
                    mem[(32 * ('cd', 4).length) + 160] = 96
                    mem[(32 * ('cd', 4).length) + 256] = ('cd', 4).length
                    mem[(32 * ('cd', 4).length) + 288 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                    mem[(64 * ('cd', 4).length) + 288] = 0
                    if not floor32(('cd', 4).length) + 128 % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, floor32(('cd', 4).length) + 128, mem[(32 * ('cd', 4).length) + 160 len ceil32(floor32(('cd', 4).length)) + 4], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + ceil32(floor32(('cd', 4).length)) + 456 len floor32(('cd', 4).length) + -ceil32(floor32(('cd', 4).length)) + 124]
                    else:
                        mem[floor32(floor32(('cd', 4).length) + 128) + (32 * ('cd', 4).length) + floor32(('cd', 4).length) + 452] = mem[floor32(floor32(('cd', 4).length) + 128) + (32 * ('cd', 4).length) + floor32(('cd', 4).length) + -(floor32(('cd', 4).length) + 128 % 32) + 484 len floor32(('cd', 4).length) + 128 % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, floor32(('cd', 4).length) + 128, mem[(32 * ('cd', 4).length) + 160 len ceil32(floor32(('cd', 4).length)) + 4], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + ceil32(floor32(('cd', 4).length)) + 456 len floor32(floor32(('cd', 4).length) + 128) + -ceil32(floor32(('cd', 4).length)) + 28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
