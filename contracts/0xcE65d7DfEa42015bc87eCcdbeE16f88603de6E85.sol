contract main {




// =====================  Runtime code  =====================


#
#  - sub_bdcf6192(?)
#
address stor0;

function destroy() payable {
    require stor0 == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor0 == msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Insufficient balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg3:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_4cc2d88d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = 2 * ('cd', 4).length - 1
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (64 * ('cd', 4).length - 1) + 192
    if not uint255(('cd', 4).length - 1):
        idx = 0
        while idx < ('cd', 4).length - 1:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require idx < mem[96]
            _251 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _255 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _275 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _283 = mem[_275]
                require mem[_275] == mem[_275 + 18 len 14]
                _291 = mem[_275 + 32]
                require mem[_275 + 32] == mem[_275 + 50 len 14]
                require mem[_275 + 64] == mem[_275 + 92 len 4]
                require 2 * idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                if address(_251) == address(_251):
                    mem[(64 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_275 + 18 len 14]
                    require (2 * idx) + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(112, 0, _291)
                else:
                    mem[(64 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_275 + 50 len 14]
                    require (2 * idx) + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(112, 0, _283)
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _276 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _285 = mem[_276]
                require mem[_276] == mem[_276 + 18 len 14]
                _292 = mem[_276 + 32]
                require mem[_276 + 32] == mem[_276 + 50 len 14]
                require mem[_276 + 64] == mem[_276 + 92 len 4]
                require 2 * idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                if address(_251) == address(_255):
                    mem[(64 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_276 + 18 len 14]
                    require (2 * idx) + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(112, 0, _292)
                else:
                    mem[(64 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_276 + 50 len 14]
                    require (2 * idx) + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(112, 0, _285)
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _257 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 64 len 32 * _257] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _257]
        return 32, mem[mem[64] + 32 len (32 * _257) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 64 * ('cd', 4).length - 1] = code.data[9808 len 64 * ('cd', 4).length - 1]
    idx = 0
    while idx < ('cd', 4).length - 1:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require idx < mem[96]
        _253 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _256 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _287 = mem[_278]
            require mem[_278] == mem[_278 + 18 len 14]
            _293 = mem[_278 + 32]
            require mem[_278 + 32] == mem[_278 + 50 len 14]
            require mem[_278 + 64] == mem[_278 + 92 len 4]
            require 2 * idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            if address(_253) == address(_253):
                mem[(64 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_278 + 18 len 14]
                require (2 * idx) + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(112, 0, _293)
            else:
                mem[(64 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_278 + 50 len 14]
                require (2 * idx) + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(112, 0, _287)
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _289 = mem[_279]
            require mem[_279] == mem[_279 + 18 len 14]
            _294 = mem[_279 + 32]
            require mem[_279 + 32] == mem[_279 + 50 len 14]
            require mem[_279 + 64] == mem[_279 + 92 len 4]
            require 2 * idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            if address(_253) == address(_256):
                mem[(64 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_279 + 18 len 14]
                require (2 * idx) + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(112, 0, _294)
            else:
                mem[(64 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_279 + 50 len 14]
                require (2 * idx) + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(112, 0, _289)
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _258 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 64 len 32 * _258] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _258]
    return 32, mem[mem[64] + 32 len (32 * _258) + 32]
}

function getAllPairs(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 <= arg2:
        revert with 0, 'Invalid indices'
    mem[96] = arg3 - arg2
    if not arg3 - arg2:
        mem[(32 * arg3 - arg2) + 128] = arg3 - arg2
        mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
        mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
        mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
        idx = 0
        s = arg2
        while idx < arg3 - arg2:
            mem[mem[64] + 4] = s
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _137 = mem[_134]
            require mem[_134] == mem[_134 + 12 len 20]
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_134 + 12 len 20]
            require ext_code.size(address(_137))
            staticcall address(_137).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_150] == mem[_150 + 12 len 20]
            require idx < mem[(32 * arg3 - arg2) + 128]
            mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_150 + 12 len 20]
            require ext_code.size(address(_137))
            staticcall address(_137).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _166 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_166] == mem[_166 + 12 len 20]
            require idx < mem[(64 * arg3 - arg2) + 160]
            mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_166 + 12 len 20]
            require idx < mem[(32 * arg3 - arg2) + 128]
            _180 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            require idx < mem[(64 * arg3 - arg2) + 160]
            _185 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] == mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                if not mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(address(_137))
                staticcall address(_137).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _208 = mem[_202]
                require mem[_202] == mem[_202 + 18 len 14]
                _216 = mem[_202 + 32]
                require mem[_202 + 32] == mem[_202 + 50 len 14]
                require mem[_202 + 64] == mem[_202 + 92 len 4]
                require idx < mem[(98 * arg3) + (-98 * arg2) + 192]
                if address(_180) == address(_180):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_202 + 18 len 14]
                    require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _216)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_202 + 50 len 14]
                    require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _208)
            else:
                if not mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(address(_137))
                staticcall address(_137).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _210 = mem[_203]
                require mem[_203] == mem[_203 + 18 len 14]
                _217 = mem[_203 + 32]
                require mem[_203 + 32] == mem[_203 + 50 len 14]
                require mem[_203 + 64] == mem[_203 + 92 len 4]
                require idx < mem[(98 * arg3) + (-98 * arg2) + 192]
                if address(_180) == address(_185):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_203 + 18 len 14]
                    require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _217)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_203 + 50 len 14]
                    require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _210)
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 160
        _130 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _242 = mem[(32 * arg3 - arg2) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = mem[64] + (32 * mem[96]) + 224
        while idx < _242:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _242) + 224
        _262 = mem[(64 * arg3 - arg2) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _242) + 224] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _242) + 256
        while idx < _262:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * mem[96]) + (32 * _242) + (32 * _262) + 256
        _278 = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[mem[64] + (32 * mem[96]) + (32 * _242) + (32 * _262) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[mem[64] + (32 * mem[96]) + (32 * _242) + (32 * _262) + 288 len 32 * _278] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _278]
        mem[mem[64] + 128] = (32 * mem[96]) + (32 * _242) + (32 * _262) + (32 * _278) + 288
        _290 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[mem[64] + (32 * _130) + (32 * _242) + (32 * _262) + (32 * _278) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[mem[64] + (32 * _130) + (32 * _242) + (32 * _262) + (32 * _278) + 320 len 32 * _290] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _290]
        return 160, mem[mem[64] + 32 len (32 * _130) + (32 * _242) + (32 * _262) + (32 * _278) + (32 * _290) + 288]
    mem[128 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    mem[(32 * arg3 - arg2) + 128] = arg3 - arg2
    mem[(32 * arg3 - arg2) + 160 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
    mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
    mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
    mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
    mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    idx = 0
    s = arg2
    while idx < arg3 - arg2:
        mem[mem[64] + 4] = s
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _135 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _139 = mem[_135]
        require mem[_135] == mem[_135 + 12 len 20]
        require idx < mem[96]
        mem[(32 * idx) + 128] = mem[_135 + 12 len 20]
        require ext_code.size(address(_139))
        staticcall address(_139).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_151] == mem[_151 + 12 len 20]
        require idx < mem[(32 * arg3 - arg2) + 128]
        mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_151 + 12 len 20]
        require ext_code.size(address(_139))
        staticcall address(_139).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_167] == mem[_167 + 12 len 20]
        require idx < mem[(64 * arg3 - arg2) + 160]
        mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_167 + 12 len 20]
        require idx < mem[(32 * arg3 - arg2) + 128]
        _182 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
        require idx < mem[(64 * arg3 - arg2) + 160]
        _187 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] == mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
            if not mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(_139))
            staticcall address(_139).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _212 = mem[_205]
            require mem[_205] == mem[_205 + 18 len 14]
            _218 = mem[_205 + 32]
            require mem[_205 + 32] == mem[_205 + 50 len 14]
            require mem[_205 + 64] == mem[_205 + 92 len 4]
            require idx < mem[(98 * arg3) + (-98 * arg2) + 192]
            if address(_182) == address(_182):
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_205 + 18 len 14]
                require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _218)
            else:
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_205 + 50 len 14]
                require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _212)
        else:
            if not mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(_139))
            staticcall address(_139).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _214 = mem[_206]
            require mem[_206] == mem[_206 + 18 len 14]
            _219 = mem[_206 + 32]
            require mem[_206 + 32] == mem[_206 + 50 len 14]
            require mem[_206 + 64] == mem[_206 + 92 len 4]
            require idx < mem[(98 * arg3) + (-98 * arg2) + 192]
            if address(_182) == address(_187):
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_206 + 18 len 14]
                require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _219)
            else:
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_206 + 50 len 14]
                require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _214)
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 160
    _131 = mem[96]
    mem[mem[64] + 160] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 192
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * mem[96]) + 192
    _243 = mem[(32 * arg3 - arg2) + 128]
    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg3 - arg2) + 128]
    idx = 0
    s = (32 * arg3 - arg2) + 160
    t = mem[64] + (32 * mem[96]) + 224
    while idx < _243:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _243) + 224
    _263 = mem[(64 * arg3 - arg2) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _243) + 224] = mem[(64 * arg3 - arg2) + 160]
    idx = 0
    s = (64 * arg3 - arg2) + 192
    t = mem[64] + (32 * mem[96]) + (32 * _243) + 256
    while idx < _263:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 96] = (32 * mem[96]) + (32 * _243) + (32 * _263) + 256
    _279 = mem[(98 * arg3) + (-98 * arg2) + 192]
    mem[mem[64] + (32 * mem[96]) + (32 * _243) + (32 * _263) + 256] = mem[(98 * arg3) + (-98 * arg2) + 192]
    mem[mem[64] + (32 * mem[96]) + (32 * _243) + (32 * _263) + 288 len 32 * _279] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _279]
    mem[mem[64] + 128] = (32 * mem[96]) + (32 * _243) + (32 * _263) + (32 * _279) + 288
    _291 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
    mem[mem[64] + (32 * _131) + (32 * _243) + (32 * _263) + (32 * _279) + 288] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
    mem[mem[64] + (32 * _131) + (32 * _243) + (32 * _263) + (32 * _279) + 320 len 32 * _291] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _291]
    return 160, mem[mem[64] + 32 len (32 * _131) + (32 * _243) + (32 * _263) + (32 * _279) + (32 * _291) + 288]
}

function sub_0767cf45(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg3 <= arg2:
        revert with 0, 'Invalid indices'
    mem[96] = arg3 - arg2
    if not arg3 - arg2:
        mem[(32 * arg3 - arg2) + 128] = arg3 - arg2
        mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
        mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
        mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
        mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
        idx = 0
        s = arg2
        while idx < arg3 - arg2:
            mem[mem[64] + 4] = s
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _581 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _611 = mem[_581]
            require mem[_581] == mem[_581 + 12 len 20]
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_581 + 12 len 20]
            require ext_code.size(address(_611))
            staticcall address(_611).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _674 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_674] == mem[_674 + 12 len 20]
            require idx < mem[(32 * arg3 - arg2) + 128]
            mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_674 + 12 len 20]
            require ext_code.size(address(_611))
            staticcall address(_611).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _823 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_823] == mem[_823 + 12 len 20]
            require idx < mem[(64 * arg3 - arg2) + 160]
            mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_823 + 12 len 20]
            require idx < mem[(32 * arg3 - arg2) + 128]
            _913 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            require idx < mem[(64 * arg3 - arg2) + 160]
            _927 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] == mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                if not mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(address(_611))
                staticcall address(_611).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _993 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1007 = mem[_993]
                require mem[_993] == mem[_993 + 18 len 14]
                _1035 = mem[_993 + 32]
                require mem[_993 + 32] == mem[_993 + 50 len 14]
                require mem[_993 + 64] == mem[_993 + 92 len 4]
                require idx < mem[(98 * arg3) + (-98 * arg2) + 192]
                if address(_913) == address(_913):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_993 + 18 len 14]
                    require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _1035)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_993 + 50 len 14]
                    require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _1007)
            else:
                if not mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(address(_611))
                staticcall address(_611).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _994 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1009 = mem[_994]
                require mem[_994] == mem[_994 + 18 len 14]
                _1036 = mem[_994 + 32]
                require mem[_994 + 32] == mem[_994 + 50 len 14]
                require mem[_994 + 64] == mem[_994 + 92 len 4]
                require idx < mem[(98 * arg3) + (-98 * arg2) + 192]
                if address(_913) == address(_927):
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_994 + 18 len 14]
                    require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _1036)
                else:
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_994 + 50 len 14]
                    require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                    mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _1009)
            idx = idx + 1
            s = s + 1
            continue 
        _548 = mem[(32 * arg3 - arg2) + 128]
        _549 = mem[64]
        mem[mem[64]] = mem[(32 * arg3 - arg2) + 128]
        mem[64] = mem[64] + (32 * _548) + 32
        if not _548:
            _552 = mem[(64 * arg3 - arg2) + 160]
            mem[_549 + (32 * _548) + 32] = mem[(64 * arg3 - arg2) + 160]
            mem[64] = _549 + (32 * _548) + (32 * _552) + 64
            if not _552:
                _1080 = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                while idx < _1080:
                    require idx < mem[(32 * arg3 - arg2) + 128]
                    _1085 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1085))
                    staticcall address(_1085).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1098 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1116 = mem[_1098]
                    require mem[_1098] <= test266151307()
                    require _1098 + mem[_1098] + 31 < _1098 + return_data.size
                    _1136 = mem[_1098 + mem[_1098]]
                    require mem[_1098 + mem[_1098]] <= test266151307()
                    require _1098 + ceil32(return_data.size) + ceil32(mem[_1098 + mem[_1098]]) + 32 <= test266151307() and ceil32(mem[_1098 + mem[_1098]]) + 32 >= 0
                    mem[64] = _1098 + ceil32(return_data.size) + ceil32(mem[_1098 + mem[_1098]]) + 32
                    mem[_1098 + ceil32(return_data.size)] = _1136
                    require _1116 + _1136 + 32 <= return_data.size
                    s = 0
                    while s < _1136:
                        mem[_1098 + ceil32(return_data.size) + s + 32] = mem[_1098 + _1116 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1136) <= _1136:
                        require idx < mem[_549]
                        mem[(32 * idx) + _549 + 32] = _1098 + ceil32(return_data.size)
                        require idx < mem[(64 * arg3 - arg2) + 160]
                        _1576 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_1576))
                        staticcall address(_1576).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1594 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1605 = mem[_1594]
                        require mem[_1594] <= test266151307()
                        require _1594 + mem[_1594] + 31 < _1594 + return_data.size
                        _1621 = mem[_1594 + mem[_1594]]
                        require mem[_1594 + mem[_1594]] <= test266151307()
                        require _1594 + ceil32(return_data.size) + ceil32(mem[_1594 + mem[_1594]]) + 32 <= test266151307() and ceil32(mem[_1594 + mem[_1594]]) + 32 >= 0
                        mem[64] = _1594 + ceil32(return_data.size) + ceil32(mem[_1594 + mem[_1594]]) + 32
                        mem[_1594 + ceil32(return_data.size)] = _1621
                        require _1605 + _1621 + 32 <= return_data.size
                        s = 0
                        while s < _1621:
                            mem[_1594 + ceil32(return_data.size) + s + 32] = mem[_1594 + _1605 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1621) > _1621:
                            mem[_1594 + ceil32(return_data.size) + _1621 + 32] = 0
                        require idx < mem[_549 + (32 * _548) + 32]
                        mem[(32 * idx) + _549 + (32 * _548) + 64] = _1594 + ceil32(return_data.size)
                    else:
                        mem[_1098 + ceil32(return_data.size) + _1136 + 32] = 0
                        require idx < mem[_549]
                        mem[(32 * idx) + _549 + 32] = _1098 + ceil32(return_data.size)
                        require idx < mem[(64 * arg3 - arg2) + 160]
                        _1586 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_1586))
                        staticcall address(_1586).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1602 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1608 = mem[_1602]
                        require mem[_1602] <= test266151307()
                        require _1602 + mem[_1602] + 31 < _1602 + return_data.size
                        _1624 = mem[_1602 + mem[_1602]]
                        require mem[_1602 + mem[_1602]] <= test266151307()
                        require _1602 + ceil32(return_data.size) + ceil32(mem[_1602 + mem[_1602]]) + 32 <= test266151307() and ceil32(mem[_1602 + mem[_1602]]) + 32 >= 0
                        mem[64] = _1602 + ceil32(return_data.size) + ceil32(mem[_1602 + mem[_1602]]) + 32
                        mem[_1602 + ceil32(return_data.size)] = _1624
                        require _1608 + _1624 + 32 <= return_data.size
                        s = 0
                        while s < _1624:
                            mem[_1602 + ceil32(return_data.size) + s + 32] = mem[_1602 + _1608 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1624) > _1624:
                            mem[_1602 + ceil32(return_data.size) + _1624 + 32] = 0
                        require idx < mem[_549 + (32 * _548) + 32]
                        mem[(32 * idx) + _549 + (32 * _548) + 64] = _1602 + ceil32(return_data.size)
                    idx = idx + 1
                    continue 
                _1084 = mem[64]
                mem[mem[64]] = 224
                _1104 = mem[96]
                mem[mem[64] + 224] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 256
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 256
                _1546 = mem[(32 * arg3 - arg2) + 128]
                mem[mem[64] + (32 * mem[96]) + 256] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = mem[64] + (32 * mem[96]) + 288
                while idx < _1546:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1084 + 64] = (32 * mem[96]) + (32 * _1546) + 288
                _1952 = mem[(64 * arg3 - arg2) + 160]
                mem[_1084 + (32 * _1104) + (32 * _1546) + 288] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _1084 + (32 * _1104) + (32 * _1546) + 320
                while idx < _1952:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1084 + 96] = (32 * _1104) + (32 * _1546) + (32 * _1952) + 320
                _2268 = mem[_549]
                mem[_1084 + (32 * _1104) + (32 * _1546) + (32 * _1952) + 320] = mem[_549]
                idx = 0
                s = _549 + 32
                t = _1084 + (32 * _1104) + (32 * _1546) + (32 * _1952) + (32 * _2268) + 352
                u = _1084 + (32 * _1104) + (32 * _1546) + (32 * _1952) + 352
                while idx < _2268:
                    mem[u] = t + -_1084 + -(32 * _1104) + -(32 * _1546) + -(32 * _1952) - 352
                    _2452 = mem[s]
                    _2465 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2465:
                        mem[t + v + 32] = mem[_2452 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2465) > _2465:
                        mem[t + _2465 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_2465) + 32
                    u = u + 32
                    continue 
                mem[_1084 + 128] = t - _1084
                _2464 = mem[_549 + (32 * _548) + 32]
                mem[t] = mem[_549 + (32 * _548) + 32]
                idx = 0
                s = _549 + (32 * _548) + 64
                u = t + (32 * _2464) + 32
                v = t + 32
                while idx < _2464:
                    mem[v] = u + -t - 32
                    _2576 = mem[s]
                    _2587 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _2587:
                        mem[u + t + 32] = mem[_2576 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2587) > _2587:
                        mem[u + _2587 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = u + ceil32(_2587) + 32
                    v = v + 32
                    continue 
                mem[_1084 + 160] = u - _1084
                _2586 = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[u] = mem[(98 * arg3) + (-98 * arg2) + 192]
                mem[u + 32 len 32 * _2586] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _2586]
                mem[_1084 + 192] = u + (32 * _2586) + -_1084 + 32
                _2684 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[u + (32 * _2586) + 32] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[u + (32 * _2586) + 64 len 32 * _2684] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _2684]
                return memory
                  from mem[64]
                   len u + (32 * _2586) + (32 * _2684) + -mem[64] + 64
            mem[_549 + (32 * _548) + 64] = 96
            s = _549 + (32 * _548) + 64
            idx = _552
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1516 = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            while idx < _1516:
                require idx < mem[(32 * arg3 - arg2) + 128]
                _1529 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1529))
                staticcall address(_1529).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1547 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1570 = mem[_1547]
                require mem[_1547] <= test266151307()
                require _1547 + mem[_1547] + 31 < _1547 + return_data.size
                _1595 = mem[_1547 + mem[_1547]]
                require mem[_1547 + mem[_1547]] <= test266151307()
                require _1547 + ceil32(return_data.size) + ceil32(mem[_1547 + mem[_1547]]) + 32 <= test266151307() and ceil32(mem[_1547 + mem[_1547]]) + 32 >= 0
                mem[64] = _1547 + ceil32(return_data.size) + ceil32(mem[_1547 + mem[_1547]]) + 32
                mem[_1547 + ceil32(return_data.size)] = _1595
                require _1570 + _1595 + 32 <= return_data.size
                s = 0
                while s < _1595:
                    mem[_1547 + ceil32(return_data.size) + s + 32] = mem[_1547 + _1570 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1595) <= _1595:
                    require idx < mem[_549]
                    mem[(32 * idx) + _549 + 32] = _1547 + ceil32(return_data.size)
                    require idx < mem[(64 * arg3 - arg2) + 160]
                    _1984 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1984))
                    staticcall address(_1984).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2012 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2024 = mem[_2012]
                    require mem[_2012] <= test266151307()
                    require _2012 + mem[_2012] + 31 < _2012 + return_data.size
                    _2042 = mem[_2012 + mem[_2012]]
                    require mem[_2012 + mem[_2012]] <= test266151307()
                    require _2012 + ceil32(return_data.size) + ceil32(mem[_2012 + mem[_2012]]) + 32 <= test266151307() and ceil32(mem[_2012 + mem[_2012]]) + 32 >= 0
                    mem[64] = _2012 + ceil32(return_data.size) + ceil32(mem[_2012 + mem[_2012]]) + 32
                    mem[_2012 + ceil32(return_data.size)] = _2042
                    require _2024 + _2042 + 32 <= return_data.size
                    s = 0
                    while s < _2042:
                        mem[_2012 + ceil32(return_data.size) + s + 32] = mem[_2012 + _2024 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2042) > _2042:
                        mem[_2012 + ceil32(return_data.size) + _2042 + 32] = 0
                    require idx < mem[_549 + (32 * _548) + 32]
                    mem[(32 * idx) + _549 + (32 * _548) + 64] = _2012 + ceil32(return_data.size)
                else:
                    mem[_1547 + ceil32(return_data.size) + _1595 + 32] = 0
                    require idx < mem[_549]
                    mem[(32 * idx) + _549 + 32] = _1547 + ceil32(return_data.size)
                    require idx < mem[(64 * arg3 - arg2) + 160]
                    _2000 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_2000))
                    staticcall address(_2000).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2018 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2032 = mem[_2018]
                    require mem[_2018] <= test266151307()
                    require _2018 + mem[_2018] + 31 < _2018 + return_data.size
                    _2050 = mem[_2018 + mem[_2018]]
                    require mem[_2018 + mem[_2018]] <= test266151307()
                    require _2018 + ceil32(return_data.size) + ceil32(mem[_2018 + mem[_2018]]) + 32 <= test266151307() and ceil32(mem[_2018 + mem[_2018]]) + 32 >= 0
                    mem[64] = _2018 + ceil32(return_data.size) + ceil32(mem[_2018 + mem[_2018]]) + 32
                    mem[_2018 + ceil32(return_data.size)] = _2050
                    require _2032 + _2050 + 32 <= return_data.size
                    s = 0
                    while s < _2050:
                        mem[_2018 + ceil32(return_data.size) + s + 32] = mem[_2018 + _2032 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2050) > _2050:
                        mem[_2018 + ceil32(return_data.size) + _2050 + 32] = 0
                    require idx < mem[_549 + (32 * _548) + 32]
                    mem[(32 * idx) + _549 + (32 * _548) + 64] = _2018 + ceil32(return_data.size)
                idx = idx + 1
                continue 
            _1528 = mem[64]
            mem[mem[64]] = 224
            _1555 = mem[96]
            mem[mem[64] + 224] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 256
            while idx < _1555:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1528 + 32] = (32 * _1555) + 256
            _1953 = mem[(32 * arg3 - arg2) + 128]
            mem[_1528 + (32 * _1555) + 256] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = _1528 + (32 * _1555) + 288
            while idx < _1953:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1528 + 64] = (32 * _1555) + (32 * _1953) + 288
            _2269 = mem[(64 * arg3 - arg2) + 160]
            mem[_1528 + (32 * _1555) + (32 * _1953) + 288] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _1528 + (32 * _1555) + (32 * _1953) + 320
            while idx < _2269:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1528 + 96] = (32 * _1555) + (32 * _1953) + (32 * _2269) + 320
            _2466 = mem[_549]
            mem[_1528 + (32 * _1555) + (32 * _1953) + (32 * _2269) + 320] = mem[_549]
            idx = 0
            s = _549 + 32
            t = _1528 + (32 * _1555) + (32 * _1953) + (32 * _2269) + (32 * _2466) + 352
            u = _1528 + (32 * _1555) + (32 * _1953) + (32 * _2269) + 352
            while idx < _2466:
                mem[u] = t + -_1528 + -(32 * _1555) + -(32 * _1953) + -(32 * _2269) - 352
                _2578 = mem[s]
                _2589 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2589:
                    mem[t + v + 32] = mem[_2578 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2589) > _2589:
                    mem[t + _2589 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2589) + 32
                u = u + 32
                continue 
            mem[_1528 + 128] = t - _1528
            _2588 = mem[_549 + (32 * _548) + 32]
            mem[t] = mem[_549 + (32 * _548) + 32]
            idx = 0
            s = _549 + (32 * _548) + 64
            u = t + (32 * _2588) + 32
            v = t + 32
            while idx < _2588:
                mem[v] = u + -t - 32
                _2672 = mem[s]
                _2686 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _2686:
                    mem[u + t + 32] = mem[_2672 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_2686) > _2686:
                    mem[u + _2686 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_2686) + 32
                v = v + 32
                continue 
            mem[_1528 + 160] = u - _1528
            _2685 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[u] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[u + 32 len 32 * _2685] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _2685]
            mem[_1528 + 192] = u + (32 * _2685) + -_1528 + 32
            _2756 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[u + (32 * _2685) + 32] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[u + (32 * _2685) + 64 len 32 * _2756] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _2756]
            return memory
              from mem[64]
               len u + (32 * _2685) + (32 * _2756) + -mem[64] + 64
        mem[_549 + 32] = 96
        s = _549 + 32
        idx = _548
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _1088 = mem[(64 * arg3 - arg2) + 160]
        _1089 = mem[64]
        mem[mem[64]] = mem[(64 * arg3 - arg2) + 160]
        mem[64] = mem[64] + (32 * _1088) + 32
        if not _1088:
            _1517 = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            while idx < _1517:
                require idx < mem[(32 * arg3 - arg2) + 128]
                _1533 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1533))
                staticcall address(_1533).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1548 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1571 = mem[_1548]
                require mem[_1548] <= test266151307()
                require _1548 + mem[_1548] + 31 < _1548 + return_data.size
                _1596 = mem[_1548 + mem[_1548]]
                require mem[_1548 + mem[_1548]] <= test266151307()
                require _1548 + ceil32(return_data.size) + ceil32(mem[_1548 + mem[_1548]]) + 32 <= test266151307() and ceil32(mem[_1548 + mem[_1548]]) + 32 >= 0
                mem[64] = _1548 + ceil32(return_data.size) + ceil32(mem[_1548 + mem[_1548]]) + 32
                mem[_1548 + ceil32(return_data.size)] = _1596
                require _1571 + _1596 + 32 <= return_data.size
                s = 0
                while s < _1596:
                    mem[_1548 + ceil32(return_data.size) + s + 32] = mem[_1548 + _1571 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1596) <= _1596:
                    require idx < mem[_549]
                    mem[(32 * idx) + _549 + 32] = _1548 + ceil32(return_data.size)
                    require idx < mem[(64 * arg3 - arg2) + 160]
                    _1988 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1988))
                    staticcall address(_1988).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2013 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2026 = mem[_2013]
                    require mem[_2013] <= test266151307()
                    require _2013 + mem[_2013] + 31 < _2013 + return_data.size
                    _2044 = mem[_2013 + mem[_2013]]
                    require mem[_2013 + mem[_2013]] <= test266151307()
                    require _2013 + ceil32(return_data.size) + ceil32(mem[_2013 + mem[_2013]]) + 32 <= test266151307() and ceil32(mem[_2013 + mem[_2013]]) + 32 >= 0
                    mem[64] = _2013 + ceil32(return_data.size) + ceil32(mem[_2013 + mem[_2013]]) + 32
                    mem[_2013 + ceil32(return_data.size)] = _2044
                    require _2026 + _2044 + 32 <= return_data.size
                    s = 0
                    while s < _2044:
                        mem[_2013 + ceil32(return_data.size) + s + 32] = mem[_2013 + _2026 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2044) > _2044:
                        mem[_2013 + ceil32(return_data.size) + _2044 + 32] = 0
                    require idx < mem[_1089]
                    mem[(32 * idx) + _1089 + 32] = _2013 + ceil32(return_data.size)
                else:
                    mem[_1548 + ceil32(return_data.size) + _1596 + 32] = 0
                    require idx < mem[_549]
                    mem[(32 * idx) + _549 + 32] = _1548 + ceil32(return_data.size)
                    require idx < mem[(64 * arg3 - arg2) + 160]
                    _2003 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_2003))
                    staticcall address(_2003).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2019 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2033 = mem[_2019]
                    require mem[_2019] <= test266151307()
                    require _2019 + mem[_2019] + 31 < _2019 + return_data.size
                    _2051 = mem[_2019 + mem[_2019]]
                    require mem[_2019 + mem[_2019]] <= test266151307()
                    require _2019 + ceil32(return_data.size) + ceil32(mem[_2019 + mem[_2019]]) + 32 <= test266151307() and ceil32(mem[_2019 + mem[_2019]]) + 32 >= 0
                    mem[64] = _2019 + ceil32(return_data.size) + ceil32(mem[_2019 + mem[_2019]]) + 32
                    mem[_2019 + ceil32(return_data.size)] = _2051
                    require _2033 + _2051 + 32 <= return_data.size
                    s = 0
                    while s < _2051:
                        mem[_2019 + ceil32(return_data.size) + s + 32] = mem[_2019 + _2033 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2051) > _2051:
                        mem[_2019 + ceil32(return_data.size) + _2051 + 32] = 0
                    require idx < mem[_1089]
                    mem[(32 * idx) + _1089 + 32] = _2019 + ceil32(return_data.size)
                idx = idx + 1
                continue 
            _1532 = mem[64]
            mem[mem[64]] = 224
            _1556 = mem[96]
            mem[mem[64] + 224] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 256
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 256
            _1954 = mem[(32 * arg3 - arg2) + 128]
            mem[mem[64] + (32 * mem[96]) + 256] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = mem[64] + (32 * mem[96]) + 288
            while idx < _1954:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _1954) + 288
            _2270 = mem[(64 * arg3 - arg2) + 160]
            mem[mem[64] + (32 * mem[96]) + (32 * _1954) + 288] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = mem[64] + (32 * mem[96]) + (32 * _1954) + 320
            while idx < _2270:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * mem[96]) + (32 * _1954) + (32 * _2270) + 320
            _2467 = mem[_549]
            mem[mem[64] + (32 * mem[96]) + (32 * _1954) + (32 * _2270) + 320] = mem[_549]
            idx = 0
            s = _549 + 32
            t = mem[64] + (32 * mem[96]) + (32 * _1954) + (32 * _2270) + (32 * _2467) + 352
            u = mem[64] + (32 * mem[96]) + (32 * _1954) + (32 * _2270) + 352
            while idx < _2467:
                mem[u] = t + -_1532 + -(32 * _1556) + -(32 * _1954) + -(32 * _2270) - 352
                _2579 = mem[s]
                _2591 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2591:
                    mem[t + v + 32] = mem[_2579 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2591) > _2591:
                    mem[t + _2591 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2591) + 32
                u = u + 32
                continue 
            mem[_1532 + 128] = t - _1532
            _2590 = mem[_1089]
            mem[t] = mem[_1089]
            idx = 0
            s = _1089 + 32
            u = t + (32 * _2590) + 32
            v = t + 32
            while idx < _2590:
                mem[v] = u + -t - 32
                _2674 = mem[s]
                _2688 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _2688:
                    mem[u + t + 32] = mem[_2674 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_2688) > _2688:
                    mem[u + _2688 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_2688) + 32
                v = v + 32
                continue 
            mem[_1532 + 160] = u - _1532
            _2687 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[u] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[u + 32 len 32 * _2687] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _2687]
            mem[_1532 + 192] = u + (32 * _2687) + -_1532 + 32
            _2757 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[u + (32 * _2687) + 32] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[u + (32 * _2687) + 64 len 32 * _2757] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _2757]
            return memory
              from mem[64]
               len u + (32 * _2687) + (32 * _2757) + -mem[64] + 64
        mem[_1089 + 32] = 96
        s = _1089 + 32
        idx = _1088
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _1926 = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        while idx < _1926:
            require idx < mem[(32 * arg3 - arg2) + 128]
            _1945 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1945))
            staticcall address(_1945).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1955 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1976 = mem[_1955]
            require mem[_1955] <= test266151307()
            require _1955 + mem[_1955] + 31 < _1955 + return_data.size
            _2014 = mem[_1955 + mem[_1955]]
            require mem[_1955 + mem[_1955]] <= test266151307()
            require _1955 + ceil32(return_data.size) + ceil32(mem[_1955 + mem[_1955]]) + 32 <= test266151307() and ceil32(mem[_1955 + mem[_1955]]) + 32 >= 0
            mem[64] = _1955 + ceil32(return_data.size) + ceil32(mem[_1955 + mem[_1955]]) + 32
            mem[_1955 + ceil32(return_data.size)] = _2014
            require _1976 + _2014 + 32 <= return_data.size
            s = 0
            while s < _2014:
                mem[_1955 + ceil32(return_data.size) + s + 32] = mem[_1955 + _1976 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2014) <= _2014:
                require idx < mem[_549]
                mem[(32 * idx) + _549 + 32] = _1955 + ceil32(return_data.size)
                require idx < mem[(64 * arg3 - arg2) + 160]
                _2298 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2298))
                staticcall address(_2298).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2312 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2320 = mem[_2312]
                require mem[_2312] <= test266151307()
                require _2312 + mem[_2312] + 31 < _2312 + return_data.size
                _2333 = mem[_2312 + mem[_2312]]
                require mem[_2312 + mem[_2312]] <= test266151307()
                require _2312 + ceil32(return_data.size) + ceil32(mem[_2312 + mem[_2312]]) + 32 <= test266151307() and ceil32(mem[_2312 + mem[_2312]]) + 32 >= 0
                mem[64] = _2312 + ceil32(return_data.size) + ceil32(mem[_2312 + mem[_2312]]) + 32
                mem[_2312 + ceil32(return_data.size)] = _2333
                require _2320 + _2333 + 32 <= return_data.size
                s = 0
                while s < _2333:
                    mem[_2312 + ceil32(return_data.size) + s + 32] = mem[_2312 + _2320 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2333) > _2333:
                    mem[_2312 + ceil32(return_data.size) + _2333 + 32] = 0
                require idx < mem[_1089]
                mem[(32 * idx) + _1089 + 32] = _2312 + ceil32(return_data.size)
            else:
                mem[_1955 + ceil32(return_data.size) + _2014 + 32] = 0
                require idx < mem[_549]
                mem[(32 * idx) + _549 + 32] = _1955 + ceil32(return_data.size)
                require idx < mem[(64 * arg3 - arg2) + 160]
                _2306 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2306))
                staticcall address(_2306).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2314 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2326 = mem[_2314]
                require mem[_2314] <= test266151307()
                require _2314 + mem[_2314] + 31 < _2314 + return_data.size
                _2340 = mem[_2314 + mem[_2314]]
                require mem[_2314 + mem[_2314]] <= test266151307()
                require _2314 + ceil32(return_data.size) + ceil32(mem[_2314 + mem[_2314]]) + 32 <= test266151307() and ceil32(mem[_2314 + mem[_2314]]) + 32 >= 0
                mem[64] = _2314 + ceil32(return_data.size) + ceil32(mem[_2314 + mem[_2314]]) + 32
                mem[_2314 + ceil32(return_data.size)] = _2340
                require _2326 + _2340 + 32 <= return_data.size
                s = 0
                while s < _2340:
                    mem[_2314 + ceil32(return_data.size) + s + 32] = mem[_2314 + _2326 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2340) > _2340:
                    mem[_2314 + ceil32(return_data.size) + _2340 + 32] = 0
                require idx < mem[_1089]
                mem[(32 * idx) + _1089 + 32] = _2314 + ceil32(return_data.size)
            idx = idx + 1
            continue 
        _1944 = mem[64]
        mem[mem[64]] = 224
        _1964 = mem[96]
        mem[mem[64] + 224] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 256
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * mem[96]) + 256
        _2271 = mem[(32 * arg3 - arg2) + 128]
        mem[mem[64] + (32 * mem[96]) + 256] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = mem[64] + (32 * mem[96]) + 288
        while idx < _2271:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2271) + 288
        _2468 = mem[(64 * arg3 - arg2) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _2271) + 288] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _2271) + 320
        while idx < _2468:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2271) + (32 * _2468) + 320
        _2592 = mem[_549]
        mem[mem[64] + (32 * mem[96]) + (32 * _2271) + (32 * _2468) + 320] = mem[_549]
        idx = 0
        s = _549 + 32
        t = mem[64] + (32 * mem[96]) + (32 * _2271) + (32 * _2468) + (32 * _2592) + 352
        u = mem[64] + (32 * mem[96]) + (32 * _2271) + (32 * _2468) + 352
        while idx < _2592:
            mem[u] = t + -_1944 + -(32 * _1964) + -(32 * _2271) + -(32 * _2468) - 352
            _2676 = mem[s]
            _2690 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2690:
                mem[t + v + 32] = mem[_2676 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2690) > _2690:
                mem[t + _2690 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2690) + 32
            u = u + 32
            continue 
        mem[_1944 + 128] = t - _1944
        _2689 = mem[_1089]
        mem[t] = mem[_1089]
        idx = 0
        s = _1089 + 32
        u = t + (32 * _2689) + 32
        v = t + 32
        while idx < _2689:
            mem[v] = u + -t - 32
            _2745 = mem[s]
            _2759 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _2759:
                mem[u + t + 32] = mem[_2745 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2759) > _2759:
                mem[u + _2759 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_2759) + 32
            v = v + 32
            continue 
        mem[_1944 + 160] = u - _1944
        _2758 = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[u] = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[u + 32 len 32 * _2758] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _2758]
        mem[_1944 + 192] = u + (32 * _2758) + -_1944 + 32
        _2794 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[u + (32 * _2758) + 32] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[u + (32 * _2758) + 64 len 32 * _2794] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _2794]
        return memory
          from mem[64]
           len u + (32 * _2758) + (32 * _2794) + -mem[64] + 64
    mem[128 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    mem[(32 * arg3 - arg2) + 128] = arg3 - arg2
    mem[(32 * arg3 - arg2) + 160 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
    mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    mem[(98 * arg3) + (-98 * arg2) + 192] = arg3 - arg2
    mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224] = arg3 - arg2
    mem[64] = (98 * arg3) + (-98 * arg2) + (64 * arg3 - arg2) + 256
    mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * arg3 - arg2] = code.data[9808 len 32 * arg3 - arg2]
    idx = 0
    s = arg2
    while idx < arg3 - arg2:
        mem[mem[64] + 4] = s
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _585 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _615 = mem[_585]
        require mem[_585] == mem[_585 + 12 len 20]
        require idx < mem[96]
        mem[(32 * idx) + 128] = mem[_585 + 12 len 20]
        require ext_code.size(address(_615))
        staticcall address(_615).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _677 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_677] == mem[_677 + 12 len 20]
        require idx < mem[(32 * arg3 - arg2) + 128]
        mem[(32 * idx) + (32 * arg3 - arg2) + 160] = mem[_677 + 12 len 20]
        require ext_code.size(address(_615))
        staticcall address(_615).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _825 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_825] == mem[_825 + 12 len 20]
        require idx < mem[(64 * arg3 - arg2) + 160]
        mem[(32 * idx) + (64 * arg3 - arg2) + 192] = mem[_825 + 12 len 20]
        require idx < mem[(32 * arg3 - arg2) + 128]
        _922 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
        require idx < mem[(64 * arg3 - arg2) + 160]
        _931 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] == mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20] < mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
            if not mem[(32 * idx) + (32 * arg3 - arg2) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(_615))
            staticcall address(_615).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1001 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1014 = mem[_1001]
            require mem[_1001] == mem[_1001 + 18 len 14]
            _1040 = mem[_1001 + 32]
            require mem[_1001 + 32] == mem[_1001 + 50 len 14]
            require mem[_1001 + 64] == mem[_1001 + 92 len 4]
            require idx < mem[(98 * arg3) + (-98 * arg2) + 192]
            if address(_922) == address(_922):
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_1001 + 18 len 14]
                require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _1040)
            else:
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_1001 + 50 len 14]
                require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _1014)
        else:
            if not mem[(32 * idx) + (64 * arg3 - arg2) + 204 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(_615))
            staticcall address(_615).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1002 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1016 = mem[_1002]
            require mem[_1002] == mem[_1002 + 18 len 14]
            _1041 = mem[_1002 + 32]
            require mem[_1002 + 32] == mem[_1002 + 50 len 14]
            require mem[_1002 + 64] == mem[_1002 + 92 len 4]
            require idx < mem[(98 * arg3) + (-98 * arg2) + 192]
            if address(_922) == address(_931):
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_1002 + 18 len 14]
                require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _1041)
            else:
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + 224] = mem[_1002 + 50 len 14]
                require idx < mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
                mem[(32 * idx) + (98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256] = Mask(112, 0, _1016)
        idx = idx + 1
        s = s + 1
        continue 
    _550 = mem[(32 * arg3 - arg2) + 128]
    _551 = mem[64]
    mem[mem[64]] = mem[(32 * arg3 - arg2) + 128]
    mem[64] = mem[64] + (32 * _550) + 32
    if not _550:
        _554 = mem[(64 * arg3 - arg2) + 160]
        mem[_551 + (32 * _550) + 32] = mem[(64 * arg3 - arg2) + 160]
        mem[64] = _551 + (32 * _550) + (32 * _554) + 64
        if not _554:
            _1081 = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            while idx < _1081:
                require idx < mem[(32 * arg3 - arg2) + 128]
                _1091 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1091))
                staticcall address(_1091).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1101 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1121 = mem[_1101]
                require mem[_1101] <= test266151307()
                require _1101 + mem[_1101] + 31 < _1101 + return_data.size
                _1143 = mem[_1101 + mem[_1101]]
                require mem[_1101 + mem[_1101]] <= test266151307()
                require _1101 + ceil32(return_data.size) + ceil32(mem[_1101 + mem[_1101]]) + 32 <= test266151307() and ceil32(mem[_1101 + mem[_1101]]) + 32 >= 0
                mem[64] = _1101 + ceil32(return_data.size) + ceil32(mem[_1101 + mem[_1101]]) + 32
                mem[_1101 + ceil32(return_data.size)] = _1143
                require _1121 + _1143 + 32 <= return_data.size
                s = 0
                while s < _1143:
                    mem[_1101 + ceil32(return_data.size) + s + 32] = mem[_1101 + _1121 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1143) <= _1143:
                    require idx < mem[_551]
                    mem[(32 * idx) + _551 + 32] = _1101 + ceil32(return_data.size)
                    require idx < mem[(64 * arg3 - arg2) + 160]
                    _1581 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1581))
                    staticcall address(_1581).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1598 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1607 = mem[_1598]
                    require mem[_1598] <= test266151307()
                    require _1598 + mem[_1598] + 31 < _1598 + return_data.size
                    _1623 = mem[_1598 + mem[_1598]]
                    require mem[_1598 + mem[_1598]] <= test266151307()
                    require _1598 + ceil32(return_data.size) + ceil32(mem[_1598 + mem[_1598]]) + 32 <= test266151307() and ceil32(mem[_1598 + mem[_1598]]) + 32 >= 0
                    mem[64] = _1598 + ceil32(return_data.size) + ceil32(mem[_1598 + mem[_1598]]) + 32
                    mem[_1598 + ceil32(return_data.size)] = _1623
                    require _1607 + _1623 + 32 <= return_data.size
                    s = 0
                    while s < _1623:
                        mem[_1598 + ceil32(return_data.size) + s + 32] = mem[_1598 + _1607 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1623) > _1623:
                        mem[_1598 + ceil32(return_data.size) + _1623 + 32] = 0
                    require idx < mem[_551 + (32 * _550) + 32]
                    mem[(32 * idx) + _551 + (32 * _550) + 64] = _1598 + ceil32(return_data.size)
                else:
                    mem[_1101 + ceil32(return_data.size) + _1143 + 32] = 0
                    require idx < mem[_551]
                    mem[(32 * idx) + _551 + 32] = _1101 + ceil32(return_data.size)
                    require idx < mem[(64 * arg3 - arg2) + 160]
                    _1590 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1590))
                    staticcall address(_1590).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1603 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1612 = mem[_1603]
                    require mem[_1603] <= test266151307()
                    require _1603 + mem[_1603] + 31 < _1603 + return_data.size
                    _1628 = mem[_1603 + mem[_1603]]
                    require mem[_1603 + mem[_1603]] <= test266151307()
                    require _1603 + ceil32(return_data.size) + ceil32(mem[_1603 + mem[_1603]]) + 32 <= test266151307() and ceil32(mem[_1603 + mem[_1603]]) + 32 >= 0
                    mem[64] = _1603 + ceil32(return_data.size) + ceil32(mem[_1603 + mem[_1603]]) + 32
                    mem[_1603 + ceil32(return_data.size)] = _1628
                    require _1612 + _1628 + 32 <= return_data.size
                    s = 0
                    while s < _1628:
                        mem[_1603 + ceil32(return_data.size) + s + 32] = mem[_1603 + _1612 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1628) > _1628:
                        mem[_1603 + ceil32(return_data.size) + _1628 + 32] = 0
                    require idx < mem[_551 + (32 * _550) + 32]
                    mem[(32 * idx) + _551 + (32 * _550) + 64] = _1603 + ceil32(return_data.size)
                idx = idx + 1
                continue 
            _1090 = mem[64]
            mem[mem[64]] = 224
            _1110 = mem[96]
            mem[mem[64] + 224] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 256
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 256
            _1550 = mem[(32 * arg3 - arg2) + 128]
            mem[mem[64] + (32 * mem[96]) + 256] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = mem[64] + (32 * mem[96]) + 288
            while idx < _1550:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _1550) + 288
            _1956 = mem[(64 * arg3 - arg2) + 160]
            mem[mem[64] + (32 * mem[96]) + (32 * _1550) + 288] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = mem[64] + (32 * mem[96]) + (32 * _1550) + 320
            while idx < _1956:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1090 + 96] = (32 * mem[96]) + (32 * _1550) + (32 * _1956) + 320
            _2272 = mem[_551]
            mem[_1090 + (32 * _1110) + (32 * _1550) + (32 * _1956) + 320] = mem[_551]
            idx = 0
            s = _551 + 32
            t = _1090 + (32 * _1110) + (32 * _1550) + (32 * _1956) + (32 * _2272) + 352
            u = _1090 + (32 * _1110) + (32 * _1550) + (32 * _1956) + 352
            while idx < _2272:
                mem[u] = t + -_1090 + -(32 * _1110) + -(32 * _1550) + -(32 * _1956) - 352
                _2458 = mem[s]
                _2470 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2470:
                    mem[t + v + 32] = mem[_2458 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2470) > _2470:
                    mem[t + _2470 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2470) + 32
                u = u + 32
                continue 
            mem[_1090 + 128] = t - _1090
            _2469 = mem[_551 + (32 * _550) + 32]
            mem[t] = mem[_551 + (32 * _550) + 32]
            idx = 0
            s = _551 + (32 * _550) + 64
            u = t + (32 * _2469) + 32
            v = t + 32
            while idx < _2469:
                mem[v] = u + -t - 32
                _2581 = mem[s]
                _2594 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _2594:
                    mem[u + t + 32] = mem[_2581 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_2594) > _2594:
                    mem[u + _2594 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_2594) + 32
                v = v + 32
                continue 
            mem[_1090 + 160] = u - _1090
            _2593 = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[u] = mem[(98 * arg3) + (-98 * arg2) + 192]
            mem[u + 32 len 32 * _2593] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _2593]
            mem[_1090 + 192] = u + (32 * _2593) + -_1090 + 32
            _2691 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[u + (32 * _2593) + 32] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
            mem[u + (32 * _2593) + 64 len 32 * _2691] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _2691]
            return memory
              from mem[64]
               len u + (32 * _2593) + (32 * _2691) + -mem[64] + 64
        mem[_551 + (32 * _550) + 64] = 96
        s = _551 + (32 * _550) + 64
        idx = _554
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _1518 = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        while idx < _1518:
            require idx < mem[(32 * arg3 - arg2) + 128]
            _1537 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1537))
            staticcall address(_1537).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1551 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1574 = mem[_1551]
            require mem[_1551] <= test266151307()
            require _1551 + mem[_1551] + 31 < _1551 + return_data.size
            _1599 = mem[_1551 + mem[_1551]]
            require mem[_1551 + mem[_1551]] <= test266151307()
            require _1551 + ceil32(return_data.size) + ceil32(mem[_1551 + mem[_1551]]) + 32 <= test266151307() and ceil32(mem[_1551 + mem[_1551]]) + 32 >= 0
            mem[64] = _1551 + ceil32(return_data.size) + ceil32(mem[_1551 + mem[_1551]]) + 32
            mem[_1551 + ceil32(return_data.size)] = _1599
            require _1574 + _1599 + 32 <= return_data.size
            s = 0
            while s < _1599:
                mem[_1551 + ceil32(return_data.size) + s + 32] = mem[_1551 + _1574 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1599) <= _1599:
                require idx < mem[_551]
                mem[(32 * idx) + _551 + 32] = _1551 + ceil32(return_data.size)
                require idx < mem[(64 * arg3 - arg2) + 160]
                _1992 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1992))
                staticcall address(_1992).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2015 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2029 = mem[_2015]
                require mem[_2015] <= test266151307()
                require _2015 + mem[_2015] + 31 < _2015 + return_data.size
                _2047 = mem[_2015 + mem[_2015]]
                require mem[_2015 + mem[_2015]] <= test266151307()
                require _2015 + ceil32(return_data.size) + ceil32(mem[_2015 + mem[_2015]]) + 32 <= test266151307() and ceil32(mem[_2015 + mem[_2015]]) + 32 >= 0
                mem[64] = _2015 + ceil32(return_data.size) + ceil32(mem[_2015 + mem[_2015]]) + 32
                mem[_2015 + ceil32(return_data.size)] = _2047
                require _2029 + _2047 + 32 <= return_data.size
                s = 0
                while s < _2047:
                    mem[_2015 + ceil32(return_data.size) + s + 32] = mem[_2015 + _2029 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2047) > _2047:
                    mem[_2015 + ceil32(return_data.size) + _2047 + 32] = 0
                require idx < mem[_551 + (32 * _550) + 32]
                mem[(32 * idx) + _551 + (32 * _550) + 64] = _2015 + ceil32(return_data.size)
            else:
                mem[_1551 + ceil32(return_data.size) + _1599 + 32] = 0
                require idx < mem[_551]
                mem[(32 * idx) + _551 + 32] = _1551 + ceil32(return_data.size)
                require idx < mem[(64 * arg3 - arg2) + 160]
                _2006 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2006))
                staticcall address(_2006).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2020 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2035 = mem[_2020]
                require mem[_2020] <= test266151307()
                require _2020 + mem[_2020] + 31 < _2020 + return_data.size
                _2053 = mem[_2020 + mem[_2020]]
                require mem[_2020 + mem[_2020]] <= test266151307()
                require _2020 + ceil32(return_data.size) + ceil32(mem[_2020 + mem[_2020]]) + 32 <= test266151307() and ceil32(mem[_2020 + mem[_2020]]) + 32 >= 0
                mem[64] = _2020 + ceil32(return_data.size) + ceil32(mem[_2020 + mem[_2020]]) + 32
                mem[_2020 + ceil32(return_data.size)] = _2053
                require _2035 + _2053 + 32 <= return_data.size
                s = 0
                while s < _2053:
                    mem[_2020 + ceil32(return_data.size) + s + 32] = mem[_2020 + _2035 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2053) > _2053:
                    mem[_2020 + ceil32(return_data.size) + _2053 + 32] = 0
                require idx < mem[_551 + (32 * _550) + 32]
                mem[(32 * idx) + _551 + (32 * _550) + 64] = _2020 + ceil32(return_data.size)
            idx = idx + 1
            continue 
        _1536 = mem[64]
        mem[mem[64]] = 224
        _1562 = mem[96]
        mem[mem[64] + 224] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 256
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * mem[96]) + 256
        _1957 = mem[(32 * arg3 - arg2) + 128]
        mem[mem[64] + (32 * mem[96]) + 256] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = mem[64] + (32 * mem[96]) + 288
        while idx < _1957:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1536 + 64] = (32 * mem[96]) + (32 * _1957) + 288
        _2273 = mem[(64 * arg3 - arg2) + 160]
        mem[_1536 + (32 * _1562) + (32 * _1957) + 288] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _1536 + (32 * _1562) + (32 * _1957) + 320
        while idx < _2273:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1536 + 96] = (32 * _1562) + (32 * _1957) + (32 * _2273) + 320
        _2471 = mem[_551]
        mem[_1536 + (32 * _1562) + (32 * _1957) + (32 * _2273) + 320] = mem[_551]
        idx = 0
        s = _551 + 32
        t = _1536 + (32 * _1562) + (32 * _1957) + (32 * _2273) + (32 * _2471) + 352
        u = _1536 + (32 * _1562) + (32 * _1957) + (32 * _2273) + 352
        while idx < _2471:
            mem[u] = t + -_1536 + -(32 * _1562) + -(32 * _1957) + -(32 * _2273) - 352
            _2583 = mem[s]
            _2596 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2596:
                mem[t + v + 32] = mem[_2583 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2596) > _2596:
                mem[t + _2596 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2596) + 32
            u = u + 32
            continue 
        mem[_1536 + 128] = t - _1536
        _2595 = mem[_551 + (32 * _550) + 32]
        mem[t] = mem[_551 + (32 * _550) + 32]
        idx = 0
        s = _551 + (32 * _550) + 64
        u = t + (32 * _2595) + 32
        v = t + 32
        while idx < _2595:
            mem[v] = u + -t - 32
            _2679 = mem[s]
            _2693 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _2693:
                mem[u + t + 32] = mem[_2679 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2693) > _2693:
                mem[u + _2693 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_2693) + 32
            v = v + 32
            continue 
        mem[_1536 + 160] = u - _1536
        _2692 = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[u] = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[u + 32 len 32 * _2692] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _2692]
        mem[_1536 + 192] = u + (32 * _2692) + -_1536 + 32
        _2760 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[u + (32 * _2692) + 32] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[u + (32 * _2692) + 64 len 32 * _2760] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _2760]
        return memory
          from mem[64]
           len u + (32 * _2692) + (32 * _2760) + -mem[64] + 64
    mem[_551 + 32] = 96
    s = _551 + 32
    idx = _550
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _1094 = mem[(64 * arg3 - arg2) + 160]
    _1095 = mem[64]
    mem[mem[64]] = mem[(64 * arg3 - arg2) + 160]
    mem[64] = mem[64] + (32 * _1094) + 32
    if not _1094:
        _1519 = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        while idx < _1519:
            require idx < mem[(32 * arg3 - arg2) + 128]
            _1541 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1541))
            staticcall address(_1541).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1552 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1575 = mem[_1552]
            require mem[_1552] <= test266151307()
            require _1552 + mem[_1552] + 31 < _1552 + return_data.size
            _1600 = mem[_1552 + mem[_1552]]
            require mem[_1552 + mem[_1552]] <= test266151307()
            require _1552 + ceil32(return_data.size) + ceil32(mem[_1552 + mem[_1552]]) + 32 <= test266151307() and ceil32(mem[_1552 + mem[_1552]]) + 32 >= 0
            mem[64] = _1552 + ceil32(return_data.size) + ceil32(mem[_1552 + mem[_1552]]) + 32
            mem[_1552 + ceil32(return_data.size)] = _1600
            require _1575 + _1600 + 32 <= return_data.size
            s = 0
            while s < _1600:
                mem[_1552 + ceil32(return_data.size) + s + 32] = mem[_1552 + _1575 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1600) <= _1600:
                require idx < mem[_551]
                mem[(32 * idx) + _551 + 32] = _1552 + ceil32(return_data.size)
                require idx < mem[(64 * arg3 - arg2) + 160]
                _1996 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1996))
                staticcall address(_1996).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2016 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2031 = mem[_2016]
                require mem[_2016] <= test266151307()
                require _2016 + mem[_2016] + 31 < _2016 + return_data.size
                _2049 = mem[_2016 + mem[_2016]]
                require mem[_2016 + mem[_2016]] <= test266151307()
                require _2016 + ceil32(return_data.size) + ceil32(mem[_2016 + mem[_2016]]) + 32 <= test266151307() and ceil32(mem[_2016 + mem[_2016]]) + 32 >= 0
                mem[64] = _2016 + ceil32(return_data.size) + ceil32(mem[_2016 + mem[_2016]]) + 32
                mem[_2016 + ceil32(return_data.size)] = _2049
                require _2031 + _2049 + 32 <= return_data.size
                s = 0
                while s < _2049:
                    mem[_2016 + ceil32(return_data.size) + s + 32] = mem[_2016 + _2031 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2049) > _2049:
                    mem[_2016 + ceil32(return_data.size) + _2049 + 32] = 0
                require idx < mem[_1095]
                mem[(32 * idx) + _1095 + 32] = _2016 + ceil32(return_data.size)
            else:
                mem[_1552 + ceil32(return_data.size) + _1600 + 32] = 0
                require idx < mem[_551]
                mem[(32 * idx) + _551 + 32] = _1552 + ceil32(return_data.size)
                require idx < mem[(64 * arg3 - arg2) + 160]
                _2009 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2009))
                staticcall address(_2009).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2021 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2036 = mem[_2021]
                require mem[_2021] <= test266151307()
                require _2021 + mem[_2021] + 31 < _2021 + return_data.size
                _2054 = mem[_2021 + mem[_2021]]
                require mem[_2021 + mem[_2021]] <= test266151307()
                require _2021 + ceil32(return_data.size) + ceil32(mem[_2021 + mem[_2021]]) + 32 <= test266151307() and ceil32(mem[_2021 + mem[_2021]]) + 32 >= 0
                mem[64] = _2021 + ceil32(return_data.size) + ceil32(mem[_2021 + mem[_2021]]) + 32
                mem[_2021 + ceil32(return_data.size)] = _2054
                require _2036 + _2054 + 32 <= return_data.size
                s = 0
                while s < _2054:
                    mem[_2021 + ceil32(return_data.size) + s + 32] = mem[_2021 + _2036 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_2054) > _2054:
                    mem[_2021 + ceil32(return_data.size) + _2054 + 32] = 0
                require idx < mem[_1095]
                mem[(32 * idx) + _1095 + 32] = _2021 + ceil32(return_data.size)
            idx = idx + 1
            continue 
        _1540 = mem[64]
        mem[mem[64]] = 224
        _1563 = mem[96]
        mem[mem[64] + 224] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 256
        while idx < _1563:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1540 + 32] = (32 * _1563) + 256
        _1958 = mem[(32 * arg3 - arg2) + 128]
        mem[_1540 + (32 * _1563) + 256] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = _1540 + (32 * _1563) + 288
        while idx < _1958:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1540 + 64] = (32 * _1563) + (32 * _1958) + 288
        _2274 = mem[(64 * arg3 - arg2) + 160]
        mem[_1540 + (32 * _1563) + (32 * _1958) + 288] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _1540 + (32 * _1563) + (32 * _1958) + 320
        while idx < _2274:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1540 + 96] = (32 * _1563) + (32 * _1958) + (32 * _2274) + 320
        _2472 = mem[_551]
        mem[_1540 + (32 * _1563) + (32 * _1958) + (32 * _2274) + 320] = mem[_551]
        idx = 0
        s = _551 + 32
        t = _1540 + (32 * _1563) + (32 * _1958) + (32 * _2274) + (32 * _2472) + 352
        u = _1540 + (32 * _1563) + (32 * _1958) + (32 * _2274) + 352
        while idx < _2472:
            mem[u] = t + -_1540 + -(32 * _1563) + -(32 * _1958) + -(32 * _2274) - 352
            _2584 = mem[s]
            _2598 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2598:
                mem[t + v + 32] = mem[_2584 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2598) > _2598:
                mem[t + _2598 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2598) + 32
            u = u + 32
            continue 
        mem[_1540 + 128] = t - _1540
        _2597 = mem[_1095]
        mem[t] = mem[_1095]
        idx = 0
        s = _1095 + 32
        u = t + (32 * _2597) + 32
        v = t + 32
        while idx < _2597:
            mem[v] = u + -t - 32
            _2681 = mem[s]
            _2695 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _2695:
                mem[u + t + 32] = mem[_2681 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2695) > _2695:
                mem[u + _2695 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_2695) + 32
            v = v + 32
            continue 
        mem[_1540 + 160] = u - _1540
        _2694 = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[u] = mem[(98 * arg3) + (-98 * arg2) + 192]
        mem[u + 32 len 32 * _2694] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _2694]
        mem[_1540 + 192] = u + (32 * _2694) + -_1540 + 32
        _2761 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[u + (32 * _2694) + 32] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
        mem[u + (32 * _2694) + 64 len 32 * _2761] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _2761]
        return memory
          from mem[64]
           len u + (32 * _2694) + (32 * _2761) + -mem[64] + 64
    mem[_1095 + 32] = 96
    s = _1095 + 32
    idx = _1094
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _1927 = mem[(32 * arg3 - arg2) + 128]
    idx = 0
    while idx < _1927:
        require idx < mem[(32 * arg3 - arg2) + 128]
        _1949 = mem[(32 * idx) + (32 * arg3 - arg2) + 160]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_1949))
        staticcall address(_1949).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1959 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1983 = mem[_1959]
        require mem[_1959] <= test266151307()
        require _1959 + mem[_1959] + 31 < _1959 + return_data.size
        _2017 = mem[_1959 + mem[_1959]]
        require mem[_1959 + mem[_1959]] <= test266151307()
        require _1959 + ceil32(return_data.size) + ceil32(mem[_1959 + mem[_1959]]) + 32 <= test266151307() and ceil32(mem[_1959 + mem[_1959]]) + 32 >= 0
        mem[64] = _1959 + ceil32(return_data.size) + ceil32(mem[_1959 + mem[_1959]]) + 32
        mem[_1959 + ceil32(return_data.size)] = _2017
        require _1983 + _2017 + 32 <= return_data.size
        s = 0
        while s < _2017:
            mem[_1959 + ceil32(return_data.size) + s + 32] = mem[_1959 + _1983 + s + 32]
            s = s + 32
            continue 
        if ceil32(_2017) <= _2017:
            require idx < mem[_551]
            mem[(32 * idx) + _551 + 32] = _1959 + ceil32(return_data.size)
            require idx < mem[(64 * arg3 - arg2) + 160]
            _2302 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_2302))
            staticcall address(_2302).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2313 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2325 = mem[_2313]
            require mem[_2313] <= test266151307()
            require _2313 + mem[_2313] + 31 < _2313 + return_data.size
            _2339 = mem[_2313 + mem[_2313]]
            require mem[_2313 + mem[_2313]] <= test266151307()
            require _2313 + ceil32(return_data.size) + ceil32(mem[_2313 + mem[_2313]]) + 32 <= test266151307() and ceil32(mem[_2313 + mem[_2313]]) + 32 >= 0
            mem[64] = _2313 + ceil32(return_data.size) + ceil32(mem[_2313 + mem[_2313]]) + 32
            mem[_2313 + ceil32(return_data.size)] = _2339
            require _2325 + _2339 + 32 <= return_data.size
            s = 0
            while s < _2339:
                mem[_2313 + ceil32(return_data.size) + s + 32] = mem[_2313 + _2325 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2339) > _2339:
                mem[_2313 + ceil32(return_data.size) + _2339 + 32] = 0
            require idx < mem[_1095]
            mem[(32 * idx) + _1095 + 32] = _2313 + ceil32(return_data.size)
        else:
            mem[_1959 + ceil32(return_data.size) + _2017 + 32] = 0
            require idx < mem[_551]
            mem[(32 * idx) + _551 + 32] = _1959 + ceil32(return_data.size)
            require idx < mem[(64 * arg3 - arg2) + 160]
            _2309 = mem[(32 * idx) + (64 * arg3 - arg2) + 192]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_2309))
            staticcall address(_2309).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2315 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2327 = mem[_2315]
            require mem[_2315] <= test266151307()
            require _2315 + mem[_2315] + 31 < _2315 + return_data.size
            _2341 = mem[_2315 + mem[_2315]]
            require mem[_2315 + mem[_2315]] <= test266151307()
            require _2315 + ceil32(return_data.size) + ceil32(mem[_2315 + mem[_2315]]) + 32 <= test266151307() and ceil32(mem[_2315 + mem[_2315]]) + 32 >= 0
            mem[64] = _2315 + ceil32(return_data.size) + ceil32(mem[_2315 + mem[_2315]]) + 32
            mem[_2315 + ceil32(return_data.size)] = _2341
            require _2327 + _2341 + 32 <= return_data.size
            s = 0
            while s < _2341:
                mem[_2315 + ceil32(return_data.size) + s + 32] = mem[_2315 + _2327 + s + 32]
                s = s + 32
                continue 
            if ceil32(_2341) > _2341:
                mem[_2315 + ceil32(return_data.size) + _2341 + 32] = 0
            require idx < mem[_1095]
            mem[(32 * idx) + _1095 + 32] = _2315 + ceil32(return_data.size)
        idx = idx + 1
        continue 
    _1948 = mem[64]
    mem[mem[64]] = 224
    _1969 = mem[96]
    mem[mem[64] + 224] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 256
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * mem[96]) + 256
    _2275 = mem[(32 * arg3 - arg2) + 128]
    mem[mem[64] + (32 * mem[96]) + 256] = mem[(32 * arg3 - arg2) + 128]
    idx = 0
    s = (32 * arg3 - arg2) + 160
    t = mem[64] + (32 * mem[96]) + 288
    while idx < _2275:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1948 + 64] = (32 * mem[96]) + (32 * _2275) + 288
    _2473 = mem[(64 * arg3 - arg2) + 160]
    mem[_1948 + (32 * _1969) + (32 * _2275) + 288] = mem[(64 * arg3 - arg2) + 160]
    idx = 0
    s = (64 * arg3 - arg2) + 192
    t = _1948 + (32 * _1969) + (32 * _2275) + 320
    while idx < _2473:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1948 + 96] = (32 * _1969) + (32 * _2275) + (32 * _2473) + 320
    _2599 = mem[_551]
    mem[_1948 + (32 * _1969) + (32 * _2275) + (32 * _2473) + 320] = mem[_551]
    idx = 0
    s = _551 + 32
    t = _1948 + (32 * _1969) + (32 * _2275) + (32 * _2473) + (32 * _2599) + 352
    u = _1948 + (32 * _1969) + (32 * _2275) + (32 * _2473) + 352
    while idx < _2599:
        mem[u] = t + -_1948 + -(32 * _1969) + -(32 * _2275) + -(32 * _2473) - 352
        _2683 = mem[s]
        _2697 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _2697:
            mem[t + v + 32] = mem[_2683 + v + 32]
            v = v + 32
            continue 
        if ceil32(_2697) > _2697:
            mem[t + _2697 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_2697) + 32
        u = u + 32
        continue 
    mem[_1948 + 128] = t - _1948
    _2696 = mem[_1095]
    mem[t] = mem[_1095]
    idx = 0
    s = _1095 + 32
    u = t + (32 * _2696) + 32
    v = t + 32
    while idx < _2696:
        mem[v] = u + -t - 32
        _2752 = mem[s]
        _2763 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _2763:
            mem[u + t + 32] = mem[_2752 + t + 32]
            t = t + 32
            continue 
        if ceil32(_2763) > _2763:
            mem[u + _2763 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = u + ceil32(_2763) + 32
        v = v + 32
        continue 
    mem[_1948 + 160] = u - _1948
    _2762 = mem[(98 * arg3) + (-98 * arg2) + 192]
    mem[u] = mem[(98 * arg3) + (-98 * arg2) + 192]
    mem[u + 32 len 32 * _2762] = mem[(98 * arg3) + (-98 * arg2) + 224 len 32 * _2762]
    mem[_1948 + 192] = u + (32 * _2762) + -_1948 + 32
    _2795 = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
    mem[u + (32 * _2762) + 32] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 224]
    mem[u + (32 * _2762) + 64 len 32 * _2795] = mem[(98 * arg3) + (-98 * arg2) + (32 * arg3 - arg2) + 256 len 32 * _2795]
    return memory
      from mem[64]
       len u + (32 * _2762) + (32 * _2795) + -mem[64] + 64
}



}
