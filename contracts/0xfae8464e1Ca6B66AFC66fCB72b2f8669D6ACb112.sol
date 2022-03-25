contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function destroy() payable {
    require stor1 == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function getAllReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg1.length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    mem[(32 * arg1.length) + 128] = arg1.length - 2
    mem[64] = (32 * arg1.length) + (32 * arg1.length - 2) + 160
    if not arg1.length - 2:
        idx = 0
        while idx < arg1.length - 1:
            require idx < mem[96]
            _214 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _221 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _263 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_221)
                    _264 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _266 = sha3(mem[_264 + 32 len mem[_264]])
                    mem[_263 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_263 + 105] = stor0
                    mem[_263 + 125] = _266
                    mem[_263 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_263 + 72] = 85
                    mem[64] = _263 + 189
                    require ext_code.size(address(sha3(0, stor0, _266, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _266, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_263 + 189 len 96] = ext_call.return_data[0 len 96]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _271 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_214)
                    _272 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _274 = sha3(mem[_272 + 32 len mem[_272]])
                    mem[_271 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_271 + 105] = stor0
                    mem[_271 + 125] = _274
                    mem[_271 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_271 + 72] = 85
                    mem[64] = _271 + 189
                    require ext_code.size(address(sha3(0, stor0, _274, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _274, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_271 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require 2 * idx < mem[(32 * arg1.length) + 128]
                if address(_214) == address(_214):
                    mem[(64 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[18 len 14]
                    require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
                    mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                else:
                    mem[(64 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[50 len 14]
                    require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
                    mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _279 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_221)
                    _280 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _282 = sha3(mem[_280 + 32 len mem[_280]])
                    mem[_279 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_279 + 105] = stor0
                    mem[_279 + 125] = _282
                    mem[_279 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_279 + 72] = 85
                    mem[64] = _279 + 189
                    require ext_code.size(address(sha3(0, stor0, _282, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _282, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_279 + 189 len 96] = ext_call.return_data[0 len 96]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _287 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_214)
                    _288 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _290 = sha3(mem[_288 + 32 len mem[_288]])
                    mem[_287 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_287 + 105] = stor0
                    mem[_287 + 125] = _290
                    mem[_287 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_287 + 72] = 85
                    mem[64] = _287 + 189
                    require ext_code.size(address(sha3(0, stor0, _290, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _290, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_287 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require 2 * idx < mem[(32 * arg1.length) + 128]
                if address(_214) == address(_221):
                    mem[(64 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[18 len 14]
                    require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
                    mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                else:
                    mem[(64 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[50 len 14]
                    require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
                    mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        _213 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _213) + 32]
    mem[(32 * arg1.length) + 160 len 32 * arg1.length - 2] = code.data[1921 len 32 * arg1.length - 2]
    idx = 0
    while idx < arg1.length - 1:
        require idx < mem[96]
        _219 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _222 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _295 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_222)
                _296 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _298 = sha3(mem[_296 + 32 len mem[_296]])
                mem[_295 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_295 + 105] = stor0
                mem[_295 + 125] = _298
                mem[_295 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_295 + 72] = 85
                mem[64] = _295 + 189
                require ext_code.size(address(sha3(0, stor0, _298, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _298, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_295 + 189 len 96] = ext_call.return_data[0 len 96]
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _303 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_219)
                _304 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _306 = sha3(mem[_304 + 32 len mem[_304]])
                mem[_303 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_303 + 105] = stor0
                mem[_303 + 125] = _306
                mem[_303 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_303 + 72] = 85
                mem[64] = _303 + 189
                require ext_code.size(address(sha3(0, stor0, _306, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _306, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_303 + 189 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[(32 * arg1.length) + 128]
            if address(_219) == address(_219):
                mem[(64 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[18 len 14]
                require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
                mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
            else:
                mem[(64 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[50 len 14]
                require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
                mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _311 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_222)
                _312 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _314 = sha3(mem[_312 + 32 len mem[_312]])
                mem[_311 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_311 + 105] = stor0
                mem[_311 + 125] = _314
                mem[_311 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_311 + 72] = 85
                mem[64] = _311 + 189
                require ext_code.size(address(sha3(0, stor0, _314, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _314, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_311 + 189 len 96] = ext_call.return_data[0 len 96]
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _319 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_219)
                _320 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _322 = sha3(mem[_320 + 32 len mem[_320]])
                mem[_319 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_319 + 105] = stor0
                mem[_319 + 125] = _322
                mem[_319 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_319 + 72] = 85
                mem[64] = _319 + 189
                require ext_code.size(address(sha3(0, stor0, _322, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _322, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_319 + 189 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[(32 * arg1.length) + 128]
            if address(_219) == address(_222):
                mem[(64 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[18 len 14]
                require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
                mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
            else:
                mem[(64 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[50 len 14]
                require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
                mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    _218 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _218) + 32]
}



}
