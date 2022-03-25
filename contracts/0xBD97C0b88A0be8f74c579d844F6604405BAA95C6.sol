contract main {




// =====================  Runtime code  =====================


#
#  - sub_e86d80d3(?)
#
address stor0;
address stor2;

function destroy() payable {
    require stor2 == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function getPair(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.allPairs(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function getReserves(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor0, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor0, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor0, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor0, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 == arg1:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor0, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor0, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor0, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor0, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function getAllReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    mem[(32 * arg1.length) + 128] = 2 * arg1.length - 1
    mem[64] = (32 * arg1.length) + (64 * arg1.length - 1) + 160
    if not uint255(arg1.length - 1):
        idx = 0
        while idx < arg1.length - 1:
            require idx < mem[96]
            _413 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _418 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _450 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_418)
                    _470 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _472 = sha3(mem[_470 + 32 len mem[_470]])
                    mem[_450 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_450 + 105] = stor0
                    mem[_450 + 125] = _472
                    mem[_450 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_450 + 72] = 85
                    require ext_code.size(address(sha3(0, stor0, _472, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _472, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_450 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _450 + ceil32(return_data.size) + 189
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _451 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_413)
                    _474 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _476 = sha3(mem[_474 + 32 len mem[_474]])
                    mem[_451 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_451 + 105] = stor0
                    mem[_451 + 125] = _476
                    mem[_451 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_451 + 72] = 85
                    require ext_code.size(address(sha3(0, stor0, _476, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _476, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_451 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _451 + ceil32(return_data.size) + 189
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require 2 * idx < mem[(32 * arg1.length) + 128]
                if address(_413) == address(_413):
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
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _452 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_418)
                    _478 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _480 = sha3(mem[_478 + 32 len mem[_478]])
                    mem[_452 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_452 + 105] = stor0
                    mem[_452 + 125] = _480
                    mem[_452 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_452 + 72] = 85
                    require ext_code.size(address(sha3(0, stor0, _480, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _480, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_452 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _452 + ceil32(return_data.size) + 189
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _453 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_413)
                    _482 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _484 = sha3(mem[_482 + 32 len mem[_482]])
                    mem[_453 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_453 + 105] = stor0
                    mem[_453 + 125] = _484
                    mem[_453 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_453 + 72] = 85
                    require ext_code.size(address(sha3(0, stor0, _484, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _484, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_453 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _453 + ceil32(return_data.size) + 189
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require 2 * idx < mem[(32 * arg1.length) + 128]
                if address(_413) == address(_418):
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
        _420 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 64 len 32 * _420] = mem[(32 * arg1.length) + 160 len 32 * _420]
        return 32, mem[mem[64] + 32 len (32 * _420) + 32]
    mem[(32 * arg1.length) + 160 len 64 * arg1.length - 1] = code.data[7579 len 64 * arg1.length - 1]
    idx = 0
    while idx < arg1.length - 1:
        require idx < mem[96]
        _416 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _419 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _454 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_419)
                _486 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _488 = sha3(mem[_486 + 32 len mem[_486]])
                mem[_454 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_454 + 105] = stor0
                mem[_454 + 125] = _488
                mem[_454 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_454 + 72] = 85
                require ext_code.size(address(sha3(0, stor0, _488, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _488, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_454 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _454 + ceil32(return_data.size) + 189
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _455 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_416)
                _490 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _492 = sha3(mem[_490 + 32 len mem[_490]])
                mem[_455 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_455 + 105] = stor0
                mem[_455 + 125] = _492
                mem[_455 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_455 + 72] = 85
                require ext_code.size(address(sha3(0, stor0, _492, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _492, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_455 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _455 + ceil32(return_data.size) + 189
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require 2 * idx < mem[(32 * arg1.length) + 128]
            if address(_416) == address(_416):
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
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _456 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_419)
                _494 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _496 = sha3(mem[_494 + 32 len mem[_494]])
                mem[_456 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_456 + 105] = stor0
                mem[_456 + 125] = _496
                mem[_456 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_456 + 72] = 85
                require ext_code.size(address(sha3(0, stor0, _496, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _496, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_456 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _456 + ceil32(return_data.size) + 189
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _457 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_416)
                _498 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _500 = sha3(mem[_498 + 32 len mem[_498]])
                mem[_457 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_457 + 105] = stor0
                mem[_457 + 125] = _500
                mem[_457 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_457 + 72] = 85
                require ext_code.size(address(sha3(0, stor0, _500, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _500, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_457 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _457 + ceil32(return_data.size) + 189
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require 2 * idx < mem[(32 * arg1.length) + 128]
            if address(_416) == address(_419):
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
    _421 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 64 len 32 * _421] = mem[(32 * arg1.length) + 160 len 32 * _421]
    return 32, mem[mem[64] + 32 len (32 * _421) + 32]
}

function sub_155141f8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= arg1:
        revert with 0, 'Invalid indices'
    mem[96] = arg2 - arg1
    if not arg2 - arg1:
        mem[(32 * arg2 - arg1) + 128] = arg2 - arg1
        mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
        mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224] = arg2 - arg1
        mem[64] = (98 * arg2) + (-98 * arg1) + (64 * arg2 - arg1) + 256
        idx = 0
        s = arg1
        while idx < arg2 - arg1:
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _265 = mem[_262]
            require mem[_262] == mem[_262 + 12 len 20]
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_262 + 12 len 20]
            require ext_code.size(address(_265))
            staticcall address(_265).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_278] == mem[_278 + 12 len 20]
            require idx < mem[(32 * arg2 - arg1) + 128]
            mem[(32 * idx) + (32 * arg2 - arg1) + 160] = mem[_278 + 12 len 20]
            require ext_code.size(address(_265))
            staticcall address(_265).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _294 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_294] == mem[_294 + 12 len 20]
            require idx < mem[(64 * arg2 - arg1) + 160]
            mem[(32 * idx) + (64 * arg2 - arg1) + 192] = mem[_294 + 12 len 20]
            require idx < mem[(32 * arg2 - arg1) + 128]
            _308 = mem[(32 * idx) + (32 * arg2 - arg1) + 160]
            require idx < mem[(64 * arg2 - arg1) + 160]
            _313 = mem[(32 * idx) + (64 * arg2 - arg1) + 192]
            if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] == mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] < mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                if not mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] == mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] < mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                    if not mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _340 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg2 - arg1) + 160])
                    mem[mem[64] + 52] = address(_313)
                    _360 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _362 = sha3(mem[_360 + 32 len mem[_360]])
                    mem[_340 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_340 + 105] = stor0
                    mem[_340 + 125] = _362
                    mem[_340 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_340 + 72] = 85
                    require ext_code.size(address(sha3(0, stor0, _362, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _362, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_340 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _340 + ceil32(return_data.size) + 189
                else:
                    if not mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _341 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + (64 * arg2 - arg1) + 192])
                    mem[mem[64] + 52] = address(_308)
                    _364 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _366 = sha3(mem[_364 + 32 len mem[_364]])
                    mem[_341 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_341 + 105] = stor0
                    mem[_341 + 125] = _366
                    mem[_341 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_341 + 72] = 85
                    require ext_code.size(address(sha3(0, stor0, _366, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _366, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_341 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _341 + ceil32(return_data.size) + 189
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require idx < mem[(98 * arg2) + (-98 * arg1) + 192]
                if address(_308) == address(_308):
                    mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + 224] = ext_call.return_data[18 len 14]
                    require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
                    mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256] = Mask(112, 0, ext_call.return_data[32])
                else:
                    mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + 224] = ext_call.return_data[50 len 14]
                    require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
                    mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256] = Mask(112, 0, ext_call.return_data[0])
            else:
                if not mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] == mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] < mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                    if not mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _342 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg2 - arg1) + 160])
                    mem[mem[64] + 52] = address(_313)
                    _368 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _370 = sha3(mem[_368 + 32 len mem[_368]])
                    mem[_342 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_342 + 105] = stor0
                    mem[_342 + 125] = _370
                    mem[_342 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_342 + 72] = 85
                    require ext_code.size(address(sha3(0, stor0, _370, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _370, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_342 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _342 + ceil32(return_data.size) + 189
                else:
                    if not mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _343 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + (64 * arg2 - arg1) + 192])
                    mem[mem[64] + 52] = address(_308)
                    _372 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _374 = sha3(mem[_372 + 32 len mem[_372]])
                    mem[_343 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_343 + 105] = stor0
                    mem[_343 + 125] = _374
                    mem[_343 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_343 + 72] = 85
                    require ext_code.size(address(sha3(0, stor0, _374, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, stor0, _374, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_343 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _343 + ceil32(return_data.size) + 189
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require idx < mem[(98 * arg2) + (-98 * arg1) + 192]
                if address(_308) == address(_313):
                    mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + 224] = ext_call.return_data[18 len 14]
                    require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
                    mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256] = Mask(112, 0, ext_call.return_data[32])
                else:
                    mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + 224] = ext_call.return_data[50 len 14]
                    require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
                    mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 160
        _258 = mem[96]
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
        _498 = mem[(32 * arg2 - arg1) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg2 - arg1) + 128]
        idx = 0
        s = (32 * arg2 - arg1) + 160
        t = mem[64] + (32 * mem[96]) + 224
        while idx < _498:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _498) + 224
        _518 = mem[(64 * arg2 - arg1) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _498) + 224] = mem[(64 * arg2 - arg1) + 160]
        idx = 0
        s = (64 * arg2 - arg1) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _498) + 256
        while idx < _518:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * mem[96]) + (32 * _498) + (32 * _518) + 256
        _534 = mem[(98 * arg2) + (-98 * arg1) + 192]
        mem[mem[64] + (32 * mem[96]) + (32 * _498) + (32 * _518) + 256] = mem[(98 * arg2) + (-98 * arg1) + 192]
        mem[mem[64] + (32 * mem[96]) + (32 * _498) + (32 * _518) + 288 len 32 * _534] = mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * _534]
        mem[mem[64] + 128] = (32 * mem[96]) + (32 * _498) + (32 * _518) + (32 * _534) + 288
        _546 = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
        mem[mem[64] + (32 * _258) + (32 * _498) + (32 * _518) + (32 * _534) + 288] = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
        mem[mem[64] + (32 * _258) + (32 * _498) + (32 * _518) + (32 * _534) + 320 len 32 * _546] = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256 len 32 * _546]
        return 160, mem[mem[64] + 32 len (32 * _258) + (32 * _498) + (32 * _518) + (32 * _534) + (32 * _546) + 288]
    mem[128 len 32 * arg2 - arg1] = code.data[7579 len 32 * arg2 - arg1]
    mem[(32 * arg2 - arg1) + 128] = arg2 - arg1
    mem[(32 * arg2 - arg1) + 160 len 32 * arg2 - arg1] = code.data[7579 len 32 * arg2 - arg1]
    mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
    mem[(64 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = code.data[7579 len 32 * arg2 - arg1]
    mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
    mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * arg2 - arg1] = code.data[7579 len 32 * arg2 - arg1]
    mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224] = arg2 - arg1
    mem[64] = (98 * arg2) + (-98 * arg1) + (64 * arg2 - arg1) + 256
    mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256 len 32 * arg2 - arg1] = code.data[7579 len 32 * arg2 - arg1]
    idx = 0
    s = arg1
    while idx < arg2 - arg1:
        mem[mem[64] + 4] = s
        require ext_code.size(stor0)
        staticcall stor0.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _267 = mem[_263]
        require mem[_263] == mem[_263 + 12 len 20]
        require idx < mem[96]
        mem[(32 * idx) + 128] = mem[_263 + 12 len 20]
        require ext_code.size(address(_267))
        staticcall address(_267).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_279] == mem[_279 + 12 len 20]
        require idx < mem[(32 * arg2 - arg1) + 128]
        mem[(32 * idx) + (32 * arg2 - arg1) + 160] = mem[_279 + 12 len 20]
        require ext_code.size(address(_267))
        staticcall address(_267).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _295 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_295] == mem[_295 + 12 len 20]
        require idx < mem[(64 * arg2 - arg1) + 160]
        mem[(32 * idx) + (64 * arg2 - arg1) + 192] = mem[_295 + 12 len 20]
        require idx < mem[(32 * arg2 - arg1) + 128]
        _310 = mem[(32 * idx) + (32 * arg2 - arg1) + 160]
        require idx < mem[(64 * arg2 - arg1) + 160]
        _315 = mem[(32 * idx) + (64 * arg2 - arg1) + 192]
        if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] == mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] < mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
            if not mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] == mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] < mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                if not mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _344 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg2 - arg1) + 160])
                mem[mem[64] + 52] = address(_315)
                _376 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _378 = sha3(mem[_376 + 32 len mem[_376]])
                mem[_344 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_344 + 105] = stor0
                mem[_344 + 125] = _378
                mem[_344 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_344 + 72] = 85
                require ext_code.size(address(sha3(0, stor0, _378, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _378, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_344 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _344 + ceil32(return_data.size) + 189
            else:
                if not mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _345 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + (64 * arg2 - arg1) + 192])
                mem[mem[64] + 52] = address(_310)
                _380 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _382 = sha3(mem[_380 + 32 len mem[_380]])
                mem[_345 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_345 + 105] = stor0
                mem[_345 + 125] = _382
                mem[_345 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_345 + 72] = 85
                require ext_code.size(address(sha3(0, stor0, _382, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _382, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_345 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _345 + ceil32(return_data.size) + 189
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require idx < mem[(98 * arg2) + (-98 * arg1) + 192]
            if address(_310) == address(_310):
                mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + 224] = ext_call.return_data[18 len 14]
                require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
                mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256] = Mask(112, 0, ext_call.return_data[32])
            else:
                mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + 224] = ext_call.return_data[50 len 14]
                require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
                mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256] = Mask(112, 0, ext_call.return_data[0])
        else:
            if not mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] == mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20] < mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                if not mem[(32 * idx) + (32 * arg2 - arg1) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _346 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg2 - arg1) + 160])
                mem[mem[64] + 52] = address(_315)
                _384 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _386 = sha3(mem[_384 + 32 len mem[_384]])
                mem[_346 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_346 + 105] = stor0
                mem[_346 + 125] = _386
                mem[_346 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_346 + 72] = 85
                require ext_code.size(address(sha3(0, stor0, _386, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _386, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_346 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _346 + ceil32(return_data.size) + 189
            else:
                if not mem[(32 * idx) + (64 * arg2 - arg1) + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _347 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + (64 * arg2 - arg1) + 192])
                mem[mem[64] + 52] = address(_310)
                _388 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _390 = sha3(mem[_388 + 32 len mem[_388]])
                mem[_347 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_347 + 105] = stor0
                mem[_347 + 125] = _390
                mem[_347 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                mem[_347 + 72] = 85
                require ext_code.size(address(sha3(0, stor0, _390, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                staticcall address(sha3(0, stor0, _390, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                        gas gas_remaining wei
                mem[_347 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _347 + ceil32(return_data.size) + 189
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require idx < mem[(98 * arg2) + (-98 * arg1) + 192]
            if address(_310) == address(_315):
                mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + 224] = ext_call.return_data[18 len 14]
                require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
                mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256] = Mask(112, 0, ext_call.return_data[32])
            else:
                mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + 224] = ext_call.return_data[50 len 14]
                require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
                mem[(32 * idx) + (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 160
    _259 = mem[96]
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
    _499 = mem[(32 * arg2 - arg1) + 128]
    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * arg2 - arg1) + 128]
    idx = 0
    s = (32 * arg2 - arg1) + 160
    t = mem[64] + (32 * mem[96]) + 224
    while idx < _499:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _499) + 224
    _519 = mem[(64 * arg2 - arg1) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _499) + 224] = mem[(64 * arg2 - arg1) + 160]
    idx = 0
    s = (64 * arg2 - arg1) + 192
    t = mem[64] + (32 * mem[96]) + (32 * _499) + 256
    while idx < _519:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 96] = (32 * mem[96]) + (32 * _499) + (32 * _519) + 256
    _535 = mem[(98 * arg2) + (-98 * arg1) + 192]
    mem[mem[64] + (32 * mem[96]) + (32 * _499) + (32 * _519) + 256] = mem[(98 * arg2) + (-98 * arg1) + 192]
    mem[mem[64] + (32 * mem[96]) + (32 * _499) + (32 * _519) + 288 len 32 * _535] = mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * _535]
    mem[mem[64] + 128] = (32 * mem[96]) + (32 * _499) + (32 * _519) + (32 * _535) + 288
    _547 = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
    mem[mem[64] + (32 * _259) + (32 * _499) + (32 * _519) + (32 * _535) + 288] = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224]
    mem[mem[64] + (32 * _259) + (32 * _499) + (32 * _519) + (32 * _535) + 320 len 32 * _547] = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 256 len 32 * _547]
    return 160, mem[mem[64] + 32 len (32 * _259) + (32 * _499) + (32 * _519) + (32 * _535) + (32 * _547) + 288]
}



}
