contract main {




// =====================  Runtime code  =====================


const sub_b309483a(?) = 10000


address tokenAddress;
address stor1;

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getAuction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 96
    mem[128] = 96
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0x32665ffb00000000000000000000000000000000000000000000000000000000
    mem[388] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0x32665ffb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[384 len 4], Mask(224, 32, arg1) >> 32
    require mem[384 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[384 len 4], Mask(224, 32, arg1) >> 32 >= 448
    if not bool(ceil32(return_data.size) + 832 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 832
    mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384]
    mem[ceil32(return_data.size) + 416] = mem[_5 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
    _10 = mem[_5 + 480]
    require mem[_5 + 480] <= test266151307()
    require _5 + mem[_5 + 480] + 415 < return_data.size + 384
    _11 = mem[_5 + mem[_5 + 480] + 384]
    if mem[_5 + mem[_5 + 480] + 384] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_5 + mem[_5 + 480] + 384]) + 449 < 448 or ceil32(return_data.size) + ceil32(32 * mem[_5 + mem[_5 + 480] + 384]) + 833 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[_5 + mem[_5 + 480] + 384]) + 833
    mem[ceil32(return_data.size) + 832] = _11
    require _5 + _10 + (32 * _11) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 864 len ceil32(32 * _11)] = mem[_5 + _10 + 416 len ceil32(32 * _11)]
    mem[ceil32(return_data.size) + 480] = ceil32(return_data.size) + 832
    mem[ceil32(return_data.size) + 512] = mem[_5 + 512]
    mem[ceil32(return_data.size) + 544] = mem[_5 + 544]
    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
    mem[ceil32(return_data.size) + 608] = mem[_5 + 608]
    mem[ceil32(return_data.size) + 640] = mem[_5 + 640]
    mem[ceil32(return_data.size) + 672] = mem[_5 + 672]
    mem[ceil32(return_data.size) + 704] = mem[_5 + 704]
    mem[ceil32(return_data.size) + 736] = mem[_5 + 736]
    mem[ceil32(return_data.size) + 768] = mem[_5 + 768]
    mem[ceil32(return_data.size) + 800] = mem[_5 + 800]
    if mem[ceil32(return_data.size) + 448] <= 0:
        revert with 0, 'StealAuction: property does not exist'
    mem[mem[64]] = 0xee4525d500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0xee4525d5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _98 = mem[_97]
    require mem[_97] <= test266151307()
    require _97 + return_data.size > _97 + mem[_97] + 31
    _99 = mem[_97 + mem[_97]]
    if mem[_97 + mem[_97]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_97 + mem[_97]]) + 1 < 0 or _97 + ceil32(return_data.size) + ceil32(32 * mem[_97 + mem[_97]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _97 + ceil32(return_data.size) + ceil32(32 * mem[_97 + mem[_97]]) + 1
    mem[_97 + ceil32(return_data.size)] = _99
    require _98 + (96 * _99) + 32 <= return_data.size
    s = _97 + ceil32(return_data.size) + 32
    idx = _97 + _98 + 32
    while idx < _97 + _98 + (96 * _99) + 32:
        require _97 + return_data.size - idx >= 96
        _152 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[idx] == mem[idx + 12 len 20]
        mem[_152] = mem[idx]
        mem[_152 + 32] = mem[idx + 32]
        mem[_152 + 64] = mem[idx + 64]
        mem[s] = _152
        s = s + 32
        idx = idx + 96
        continue 
    if mem[ceil32(return_data.size) + 736] >= mem[_97 + ceil32(return_data.size)]:
        revert with 0, 50
    _151 = mem[(32 * mem[ceil32(return_data.size) + 736]) + _97 + ceil32(return_data.size) + 32]
    _153 = mem[64]
    mem[64] = mem[64] + 64
    mem[_153 + 64] = 1
    mem[_153 + 128] = 1
    mem[_153 + 192] = 1
    mem[64] = _153 + 320
    mem[_153 + 256] = 0
    mem[_153 + 288] = 0
    mem[_153 + 224] = _153 + 256
    if 0 >= mem[_153]:
        revert with 0, 50
    mem[_153 + 32] = arg1
    mem[_153 + 96] = 1
    mem[_153 + 160] = 1
    mem[64] = _153 + 384
    mem[_153 + 320] = mem[_151 + 12 len 20]
    mem[_153 + 352] = mem[ceil32(return_data.size) + 704]
    mem[_153 + 224] = _153 + 320
    mem[64] = _153 + 672
    mem[_153 + 384] = _153
    mem[_153 + 416] = _153 + 64
    mem[_153 + 448] = _153 + 128
    if mem[_151 + 64] and mem[ceil32(return_data.size) + 608] > -1 / mem[_151 + 64]:
        revert with 0, 17
    mem[_153 + 480] = mem[_151 + 64] * mem[ceil32(return_data.size) + 608] / 10000
    if mem[_151 + 64] and mem[ceil32(return_data.size) + 640] > -1 / mem[_151 + 64]:
        revert with 0, 17
    mem[_153 + 512] = mem[_151 + 64] * mem[ceil32(return_data.size) + 640] / 10000
    mem[_153 + 544] = mem[ceil32(return_data.size) + 672]
    if mem[_151 + 32] > !mem[ceil32(return_data.size) + 576]:
        revert with 0, 17
    mem[_153 + 576] = mem[_151 + 32] + mem[ceil32(return_data.size) + 576]
    mem[_153 + 608] = 0
    mem[_153 + 640] = 1
    mem[_153 + 672] = 64
    mem[_153 + 736] = 288
    _178 = mem[_153]
    mem[_153 + 1024] = mem[_153]
    mem[_153 + 1056 len 32 * mem[_153]] = mem[_153 + 32 len 32 * mem[_153]]
    mem[_153 + 768] = (32 * mem[_153]) + 320
    mem[_153 + (32 * mem[_153]) + 1056] = 1
    mem[_153 + (32 * mem[_153]) + 1088] = 1
    mem[_153 + 800] = (32 * mem[_153]) + 384
    mem[_153 + (32 * mem[_153]) + 1120] = 1
    mem[_153 + (32 * mem[_153]) + 1152] = 1
    mem[_153 + 832] = mem[_153 + 480]
    mem[_153 + 864] = mem[_153 + 512]
    mem[_153 + 896] = mem[_153 + 544]
    mem[_153 + 928] = mem[_153 + 576]
    mem[_153 + 960] = 0
    mem[_153 + 992] = 1
    mem[_153 + 704] = (32 * mem[_153]) + 512
    mem[_153 + (32 * mem[_153]) + 1184] = 1
    idx = 0
    s = _153 + 224
    t = _153 + (32 * mem[_153]) + (32 * mem[_153 + 64]) + (32 * mem[_153 + 128]) + 1152
    while idx < 1:
        _242 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_242 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _153 + (32 * _178) + -mem[64] + 1280
}

function buy(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = 96
    mem[128] = 96
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0x32665ffb00000000000000000000000000000000000000000000000000000000
    mem[388] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0x32665ffb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[384 len 4], Mask(224, 32, arg1) >> 32
    require mem[384 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[384 len 4], Mask(224, 32, arg1) >> 32 >= 448
    if not bool(ceil32(return_data.size) + 832 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 832
    mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384]
    mem[ceil32(return_data.size) + 416] = mem[_5 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
    _10 = mem[_5 + 480]
    require mem[_5 + 480] <= test266151307()
    require _5 + mem[_5 + 480] + 415 < return_data.size + 384
    _11 = mem[_5 + mem[_5 + 480] + 384]
    if mem[_5 + mem[_5 + 480] + 384] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_5 + mem[_5 + 480] + 384]) + 449 < 448 or ceil32(return_data.size) + ceil32(32 * mem[_5 + mem[_5 + 480] + 384]) + 833 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[_5 + mem[_5 + 480] + 384]) + 833
    mem[ceil32(return_data.size) + 832] = _11
    require _5 + _10 + (32 * _11) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 864 len ceil32(32 * _11)] = mem[_5 + _10 + 416 len ceil32(32 * _11)]
    mem[ceil32(return_data.size) + 480] = ceil32(return_data.size) + 832
    mem[ceil32(return_data.size) + 512] = mem[_5 + 512]
    mem[ceil32(return_data.size) + 544] = mem[_5 + 544]
    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
    mem[ceil32(return_data.size) + 608] = mem[_5 + 608]
    mem[ceil32(return_data.size) + 640] = mem[_5 + 640]
    mem[ceil32(return_data.size) + 672] = mem[_5 + 672]
    mem[ceil32(return_data.size) + 704] = mem[_5 + 704]
    mem[ceil32(return_data.size) + 736] = mem[_5 + 736]
    mem[ceil32(return_data.size) + 768] = mem[_5 + 768]
    mem[ceil32(return_data.size) + 800] = mem[_5 + 800]
    if mem[ceil32(return_data.size) + 448] <= 0:
        revert with 0, 'StealAuction: property does not exist'
    mem[mem[64]] = 0xee4525d500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0xee4525d5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _219 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _220 = mem[_219]
    require mem[_219] <= test266151307()
    require _219 + return_data.size > _219 + mem[_219] + 31
    _221 = mem[_219 + mem[_219]]
    if mem[_219 + mem[_219]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_219 + mem[_219]]) + 1 < 0 or _219 + ceil32(return_data.size) + ceil32(32 * mem[_219 + mem[_219]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _219 + ceil32(return_data.size) + ceil32(32 * mem[_219 + mem[_219]]) + 1
    mem[_219 + ceil32(return_data.size)] = _221
    require _220 + (96 * _221) + 32 <= return_data.size
    s = _219 + ceil32(return_data.size) + 32
    idx = _219 + _220 + 32
    while idx < _219 + _220 + (96 * _221) + 32:
        require _219 + return_data.size - idx >= 96
        _396 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require mem[idx] == mem[idx + 12 len 20]
        mem[_396] = mem[idx]
        mem[_396 + 32] = mem[idx + 32]
        mem[_396 + 64] = mem[idx + 64]
        mem[s] = _396
        s = s + 32
        idx = idx + 96
        continue 
    if mem[ceil32(return_data.size) + 736] >= mem[_219 + ceil32(return_data.size)]:
        revert with 0, 50
    _395 = mem[(32 * mem[ceil32(return_data.size) + 736]) + _219 + ceil32(return_data.size) + 32]
    _397 = mem[64]
    mem[64] = mem[64] + 64
    mem[_397 + 64] = 1
    mem[_397 + 128] = 1
    mem[_397 + 192] = 1
    mem[64] = _397 + 320
    mem[_397 + 256] = 0
    mem[_397 + 288] = 0
    mem[_397 + 224] = _397 + 256
    if 0 >= mem[_397]:
        revert with 0, 50
    mem[_397 + 32] = arg1
    mem[_397 + 96] = 1
    mem[_397 + 160] = 1
    mem[64] = _397 + 384
    mem[_397 + 320] = mem[_395 + 12 len 20]
    mem[_397 + 352] = mem[ceil32(return_data.size) + 704]
    mem[_397 + 224] = _397 + 320
    mem[64] = _397 + 672
    mem[_397 + 384] = _397
    mem[_397 + 416] = _397 + 64
    mem[_397 + 448] = _397 + 128
    if mem[_395 + 64] and mem[ceil32(return_data.size) + 608] > -1 / mem[_395 + 64]:
        revert with 0, 17
    mem[_397 + 480] = mem[_395 + 64] * mem[ceil32(return_data.size) + 608] / 10000
    if mem[_395 + 64] and mem[ceil32(return_data.size) + 640] > -1 / mem[_395 + 64]:
        revert with 0, 17
    mem[_397 + 512] = mem[_395 + 64] * mem[ceil32(return_data.size) + 640] / 10000
    mem[_397 + 544] = mem[ceil32(return_data.size) + 672]
    if mem[_395 + 32] > !mem[ceil32(return_data.size) + 576]:
        revert with 0, 17
    mem[_397 + 576] = mem[_395 + 32] + mem[ceil32(return_data.size) + 576]
    mem[_397 + 608] = 0
    mem[_397 + 640] = 1
    if not mem[_397]:
        revert with 0, 'DutchAuction: this auction doesn't exist'
    if block.timestamp < mem[_397 + 576]:
        revert with 0, 'DutchAuction: this auction hasn't started yet'
    if block.timestamp <= mem[_397 + 576]:
        _429 = mem[_397 + 480]
        _430 = mem[_397 + 512]
        _431 = mem[_397 + 544]
        if 0 >= mem[_397 + 544]:
            if arg2 < mem[_397 + 512]:
                revert with 0, 'DutchAuction: bid too low'
            if not mem[_397 + 512]:
                require ext_code.size(stor1)
                call stor1.0x7a18097b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, mem[_397 + 512]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x52746d7a: mem[_397 + 512], arg1, msg.sender
            else:
                idx = 0
                s = 0
                t = 0
                while idx < 1:
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _578 = mem[mem[(32 * idx) + _397 + 224] + 32]
                    if _430 and mem[mem[(32 * idx) + _397 + 224] + 32] > -1 / _430:
                        revert with 0, 17
                    if t > !(_430 * mem[mem[(32 * idx) + _397 + 224] + 32] / 10000):
                        revert with 0, 17
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _630 = mem[mem[(32 * idx) + _397 + 224] + 32]
                    if s > !mem[mem[(32 * idx) + _397 + 224] + 32]:
                        revert with 0, 17
                    if not _430 * mem[mem[(32 * idx) + _397 + 224] + 32] / 10000:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[mem[(32 * idx) + _397 + 224] + 32]
                        t = t + (_430 * mem[mem[(32 * idx) + _397 + 224] + 32] / 10000)
                        continue 
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _664 = mem[mem[(32 * idx) + _397 + 224]]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_664)
                    mem[mem[64] + 68] = _430 * _578 / 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_664), _430 * _578 / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_670] == bool(mem[_670])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + _630
                    t = t + (_430 * _578 / 10000)
                    continue 
                if s > 10000:
                    revert with 0, 'DutchAuction: sum of cut amounts too high'
                if t > _430:
                    revert with 0, 'DutchAuction: sum of cut amounts too high'
                if _430 != t:
                    if _430 < t:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x79cc6790 with:
                         gas gas_remaining wei
                        args msg.sender, _430 - t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                call stor1.0x7a18097b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, _430
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x52746d7a: _430, arg1, msg.sender
        else:
            if mem[_397 + 512] < mem[_397 + 480] - 0x8000000000000000000000000000000000000000000000000000000000000000 and mem[_397 + 480] >= 0:
                revert with 0, 17
            if mem[_397 + 480] < 0 and mem[_397 + 512] > mem[_397 + 480] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not mem[_397 + 544]:
                revert with 0, 18
            if 0 / mem[_397 + 544] > -mem[_397 + 480] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and mem[_397 + 480] >= 0:
                revert with 0, 17
            if mem[_397 + 480] < 0 and 0 / mem[_397 + 544] < -mem[_397 + 480] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if arg2 < mem[_397 + 480] + (0 / mem[_397 + 544]):
                revert with 0, 'DutchAuction: bid too low'
            if not mem[_397 + 480] + (0 / mem[_397 + 544]):
                require ext_code.size(stor1)
                call stor1.0x7a18097b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, mem[_397 + 480] + (0 / mem[_397 + 544])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x52746d7a: (mem[_397 + 480] + (0 / mem[_397 + 544])), arg1, msg.sender
            else:
                idx = 0
                s = 0
                t = 0
                while idx < 1:
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _576 = mem[mem[(32 * idx) + _397 + 224] + 32]
                    if _429 + (0 / _431) and mem[mem[(32 * idx) + _397 + 224] + 32] > -1 / _429 + (0 / _431):
                        revert with 0, 17
                    if t > !((_429 * mem[mem[(32 * idx) + _397 + 224] + 32]) + (0 / _431 * mem[mem[(32 * idx) + _397 + 224] + 32]) / 10000):
                        revert with 0, 17
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _628 = mem[mem[(32 * idx) + _397 + 224] + 32]
                    if s > !mem[mem[(32 * idx) + _397 + 224] + 32]:
                        revert with 0, 17
                    if not (_429 * mem[mem[(32 * idx) + _397 + 224] + 32]) + (0 / _431 * mem[mem[(32 * idx) + _397 + 224] + 32]) / 10000:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[mem[(32 * idx) + _397 + 224] + 32]
                        t = t + ((_429 * mem[mem[(32 * idx) + _397 + 224] + 32]) + (0 / _431 * mem[mem[(32 * idx) + _397 + 224] + 32]) / 10000)
                        continue 
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _660 = mem[mem[(32 * idx) + _397 + 224]]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_660)
                    mem[mem[64] + 68] = (_429 * _576) + (0 / _431 * _576) / 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_660), (_429 * _576) + (0 / _431 * _576) / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_669] == bool(mem[_669])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + _628
                    t = t + ((_429 * _576) + (0 / _431 * _576) / 10000)
                    continue 
                if s > 10000:
                    revert with 0, 'DutchAuction: sum of cut amounts too high'
                if t > _429 + (0 / _431):
                    revert with 0, 'DutchAuction: sum of cut amounts too high'
                if _429 + (0 / _431) != t:
                    if _429 + (0 / _431) < t:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x79cc6790 with:
                         gas gas_remaining wei
                        args msg.sender, _429 + (0 / _431) - t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                call stor1.0x7a18097b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, _429 + (0 / _431)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x52746d7a: (_429 + (0 / _431)), arg1, msg.sender
    else:
        _428 = mem[_397 + 576]
        if block.timestamp < mem[_397 + 576]:
            revert with 0, 17
        _432 = mem[_397 + 480]
        _433 = mem[_397 + 512]
        _434 = mem[_397 + 544]
        if block.timestamp - mem[_397 + 576] >= mem[_397 + 544]:
            if arg2 < mem[_397 + 512]:
                revert with 0, 'DutchAuction: bid too low'
            if not mem[_397 + 512]:
                require ext_code.size(stor1)
                call stor1.0x7a18097b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, mem[_397 + 512]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x52746d7a: mem[_397 + 512], arg1, msg.sender
            else:
                idx = 0
                s = 0
                t = 0
                while idx < 1:
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _574 = mem[mem[(32 * idx) + _397 + 224] + 32]
                    if _433 and mem[mem[(32 * idx) + _397 + 224] + 32] > -1 / _433:
                        revert with 0, 17
                    if t > !(_433 * mem[mem[(32 * idx) + _397 + 224] + 32] / 10000):
                        revert with 0, 17
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _626 = mem[mem[(32 * idx) + _397 + 224] + 32]
                    if s > !mem[mem[(32 * idx) + _397 + 224] + 32]:
                        revert with 0, 17
                    if not _433 * mem[mem[(32 * idx) + _397 + 224] + 32] / 10000:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[mem[(32 * idx) + _397 + 224] + 32]
                        t = t + (_433 * mem[mem[(32 * idx) + _397 + 224] + 32] / 10000)
                        continue 
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _656 = mem[mem[(32 * idx) + _397 + 224]]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_656)
                    mem[mem[64] + 68] = _433 * _574 / 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_656), _433 * _574 / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _668 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_668] == bool(mem[_668])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + _626
                    t = t + (_433 * _574 / 10000)
                    continue 
                if s > 10000:
                    revert with 0, 'DutchAuction: sum of cut amounts too high'
                if t > _433:
                    revert with 0, 'DutchAuction: sum of cut amounts too high'
                if _433 != t:
                    if _433 < t:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x79cc6790 with:
                         gas gas_remaining wei
                        args msg.sender, _433 - t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                call stor1.0x7a18097b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, _433
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x52746d7a: _433, arg1, msg.sender
        else:
            if mem[_397 + 512] < mem[_397 + 480] - 0x8000000000000000000000000000000000000000000000000000000000000000 and mem[_397 + 480] >= 0:
                revert with 0, 17
            if mem[_397 + 480] < 0 and mem[_397 + 512] > mem[_397 + 480] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if mem[_397 + 512] - mem[_397 + 480] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / block.timestamp - mem[_397 + 576] and block.timestamp - mem[_397 + 576] > 0 and mem[_397 + 512] - mem[_397 + 480] > 0:
                revert with 0, 17
            if block.timestamp - mem[_397 + 576] < 0x8000000000000000000000000000000000000000000000000000000000000000 / mem[_397 + 512] - mem[_397 + 480] and block.timestamp - mem[_397 + 576] < 0 and mem[_397 + 512] - mem[_397 + 480] > 0:
                revert with 0, 17
            if mem[_397 + 512] - mem[_397 + 480] < 0 and block.timestamp - mem[_397 + 576] > 0 and mem[_397 + 512] - mem[_397 + 480] < 0x8000000000000000000000000000000000000000000000000000000000000000 / block.timestamp - mem[_397 + 576]:
                revert with 0, 17
            if mem[_397 + 512] - mem[_397 + 480] < 0 and block.timestamp - mem[_397 + 576] < 0 and mem[_397 + 512] - mem[_397 + 480] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / block.timestamp - mem[_397 + 576]:
                revert with 0, 17
            if not mem[_397 + 544]:
                revert with 0, 18
            if mem[_397 + 544] == -1 and (mem[_397 + 512] * block.timestamp) - (mem[_397 + 480] * block.timestamp) - (mem[_397 + 512] * mem[_397 + 576]) + (mem[_397 + 480] * mem[_397 + 576]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if (mem[_397 + 512] * block.timestamp) - (mem[_397 + 480] * block.timestamp) - (mem[_397 + 512] * mem[_397 + 576]) + (mem[_397 + 480] * mem[_397 + 576]) / mem[_397 + 544] > -mem[_397 + 480] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and mem[_397 + 480] >= 0:
                revert with 0, 17
            if mem[_397 + 480] < 0 and (mem[_397 + 512] * block.timestamp) - (mem[_397 + 480] * block.timestamp) - (mem[_397 + 512] * mem[_397 + 576]) + (mem[_397 + 480] * mem[_397 + 576]) / mem[_397 + 544] < -mem[_397 + 480] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if arg2 < mem[_397 + 480] + ((mem[_397 + 512] * block.timestamp) - (mem[_397 + 480] * block.timestamp) - (mem[_397 + 512] * mem[_397 + 576]) + (mem[_397 + 480] * mem[_397 + 576]) / mem[_397 + 544]):
                revert with 0, 'DutchAuction: bid too low'
            if not mem[_397 + 480] + ((mem[_397 + 512] * block.timestamp) - (mem[_397 + 480] * block.timestamp) - (mem[_397 + 512] * mem[_397 + 576]) + (mem[_397 + 480] * mem[_397 + 576]) / mem[_397 + 544]):
                require ext_code.size(stor1)
                call stor1.0x7a18097b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, mem[_397 + 480] + ((mem[_397 + 512] * block.timestamp) - (mem[_397 + 480] * block.timestamp) - (mem[_397 + 512] * mem[_397 + 576]) + (mem[_397 + 480] * mem[_397 + 576]) / mem[_397 + 544])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x52746d7a: (mem[_397 + 480] + ((mem[_397 + 512] * block.timestamp) - (mem[_397 + 480] * block.timestamp) - (mem[_397 + 512] * mem[_397 + 576]) + (mem[_397 + 480] * mem[_397 + 576]) / mem[_397 + 544])), arg1, msg.sender
            else:
                idx = 0
                s = 0
                t = 0
                while idx < 1:
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _572 = mem[mem[(32 * idx) + _397 + 224] + 32]
                    if _432 + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434) and mem[mem[(32 * idx) + _397 + 224] + 32] > -1 / _432 + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434):
                        revert with 0, 17
                    if t > !((_432 * mem[mem[(32 * idx) + _397 + 224] + 32]) + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434 * mem[mem[(32 * idx) + _397 + 224] + 32]) / 10000):
                        revert with 0, 17
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _624 = mem[mem[(32 * idx) + _397 + 224] + 32]
                    if s > !mem[mem[(32 * idx) + _397 + 224] + 32]:
                        revert with 0, 17
                    if not (_432 * mem[mem[(32 * idx) + _397 + 224] + 32]) + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434 * mem[mem[(32 * idx) + _397 + 224] + 32]) / 10000:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + mem[mem[(32 * idx) + _397 + 224] + 32]
                        t = t + ((_432 * mem[mem[(32 * idx) + _397 + 224] + 32]) + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434 * mem[mem[(32 * idx) + _397 + 224] + 32]) / 10000)
                        continue 
                    if idx >= mem[_397 + 192]:
                        revert with 0, 50
                    _652 = mem[mem[(32 * idx) + _397 + 224]]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_652)
                    mem[mem[64] + 68] = (_432 * _572) + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434 * _572) / 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_652), (_432 * _572) + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434 * _572) / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _667 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_667] == bool(mem[_667])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + _624
                    t = t + ((_432 * _572) + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434 * _572) / 10000)
                    continue 
                if s > 10000:
                    revert with 0, 'DutchAuction: sum of cut amounts too high'
                if t > _432 + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434):
                    revert with 0, 'DutchAuction: sum of cut amounts too high'
                if _432 + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434) != t:
                    if _432 + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434) < t:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x79cc6790 with:
                         gas gas_remaining wei
                        args msg.sender, _432 + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434) - t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                call stor1.0x7a18097b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, _432 + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x52746d7a: (_432 + ((_433 * block.timestamp) - (_432 * block.timestamp) - (_433 * _428) + (_432 * _428) / _434)), arg1, msg.sender
}



}
