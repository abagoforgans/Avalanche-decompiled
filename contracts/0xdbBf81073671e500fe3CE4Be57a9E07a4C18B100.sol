contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 lastEpoch;
address stor7;

function lastEpoch() {
    return lastEpoch
}

function _fallback() payable {
  stop
}

function setEpoch() {
    require ext_code.size(stor0)
    staticcall stor0.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    if ext_call.return_data[0] > lastEpoch:
        lastEpoch = ext_call.return_data[0]
}

function sub_d02535f5(?) {
    require ext_code.size(stor0)
    staticcall stor0.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    if ext_call.return_data[124 len 4] < uint32(block.timestamp):
        revert with 'NH{q', 17
    return uint32(ext_call.return_data[124 len 4] - uint32(block.timestamp))
}

function sub_6df586b2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor7 != msg.sender:
        revert with 0, 'f'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor7, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call stor7 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_78495d36(?) {
    mem[100] = stor7
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = stor7
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args stor7, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor4
    mem[(2 * ceil32(return_data.size)) + 160] = stor2
    mem[(2 * ceil32(return_data.size)) + 192] = 3
    mem[(2 * ceil32(return_data.size)) + 224] = stor4
    mem[(2 * ceil32(return_data.size)) + 256] = stor5
    mem[(2 * ceil32(return_data.size)) + 288] = stor2
    mem[(2 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 356] = 64
    mem[(2 * ceil32(return_data.size)) + 388] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 420
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _44 = mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351 < (2 * ceil32(return_data.size)) + return_data.size + 320
    _45 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 321 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 321
    mem[(4 * ceil32(return_data.size)) + 320] = _45
    require _44 + (32 * _45) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _44 + 352
    t = (4 * ceil32(return_data.size)) + 352
    while idx < _45:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _45:
        revert with 'NH{q', 50
    _76 = mem[(4 * ceil32(return_data.size)) + 384]
    if ext_call.return_data[0] < ext_call.return_data[0] / 2:
        revert with 'NH{q', 17
    _77 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    mem[mem[64] + 36] = 64
    _78 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 224
    t = mem[64] + 100
    while idx < _78:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    staticcall stor1.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _77 + (32 * _78) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _108 = mem[_107]
    require mem[_107] <= test266151307()
    require _107 + mem[_107] + 31 < _107 + return_data.size
    _109 = mem[_107 + mem[_107]]
    if mem[_107 + mem[_107]] > test266151307():
        revert with 'NH{q', 65
    if _107 + ceil32(return_data.size) + floor32(mem[_107 + mem[_107]]) + 1 > test266151307() or floor32(mem[_107 + mem[_107]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _107 + ceil32(return_data.size) + floor32(mem[_107 + mem[_107]]) + 1
    mem[_107 + ceil32(return_data.size)] = _109
    require _108 + (32 * _109) + 32 <= return_data.size
    idx = 0
    s = _107 + _108 + 32
    t = _107 + ceil32(return_data.size) + 32
    while idx < _109:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 2 >= _109:
        revert with 'NH{q', 50
    _134 = mem[_107 + ceil32(return_data.size) + 96]
    if _76 < _76 / 50:
        revert with 'NH{q', 17
    _135 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = _76 - (_76 / 50)
    mem[mem[64] + 68] = 160
    _136 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _136:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_135 + 100] = this.address
    mem[_135 + 132] = block.timestamp
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _135 + (32 * _136) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] < ext_call.return_data[0] / 2:
        revert with 'NH{q', 17
    if _134 < _134 / 50:
        revert with 'NH{q', 17
    _155 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    mem[mem[64] + 36] = _134 - (_134 / 50)
    mem[mem[64] + 68] = 160
    _156 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 224
    t = mem[64] + 196
    while idx < _156:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_155 + 100] = this.address
    mem[_155 + 132] = block.timestamp
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _155 + (32 * _156) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _173 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_173] == mem[_173]
    mem[mem[64] + 4] = mem[_173]
    mem[mem[64] + 36] = stor7
    require ext_code.size(stor0)
    call stor0.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], stor7
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _177 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_177] == bool(mem[_177])
    require ext_code.size(stor0)
    call stor0.claim(address arg1) with:
         gas gas_remaining wei
        args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unstakeAndsell() {
    require ext_code.size(stor0)
    staticcall stor0.epoch() with:
            gas gas_remaining wei
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    if lastEpoch > -2:
        revert with 'NH{q', 17
    if ext_call.return_data[0] != lastEpoch + 1:
        revert with 0, 'EpochNotYet'
    mem[ceil32(return_data.size) + 100] = stor7
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = stor7
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args stor7, address(this.address), ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor0)
    call stor0.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = stor2
    mem[(4 * ceil32(return_data.size)) + 160] = stor4
    mem[(4 * ceil32(return_data.size)) + 192] = 2
    mem[(4 * ceil32(return_data.size)) + 224] = stor2
    mem[(4 * ceil32(return_data.size)) + 256] = stor5
    mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 2
    mem[(4 * ceil32(return_data.size)) + 324] = 64
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args Mask(255, 1, ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _47 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
    _48 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 289
    mem[(6 * ceil32(return_data.size)) + 288] = _48
    require _47 + (32 * _48) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _47 + 320
    t = (6 * ceil32(return_data.size)) + 320
    while idx < _48:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _48:
        revert with 'NH{q', 50
    _76 = mem[(6 * ceil32(return_data.size)) + 352]
    if ext_call.return_data[0] < ext_call.return_data[0] / 2:
        revert with 'NH{q', 17
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] - (ext_call.return_data[0] / 2), Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _101 = mem[_100]
    require mem[_100] <= test266151307()
    require _100 + mem[_100] + 31 < _100 + return_data.size
    _102 = mem[_100 + mem[_100]]
    if mem[_100 + mem[_100]] > test266151307():
        revert with 'NH{q', 65
    if _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1 > test266151307() or floor32(mem[_100 + mem[_100]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1
    mem[_100 + ceil32(return_data.size)] = _102
    require _101 + (32 * _102) + 32 <= return_data.size
    idx = 0
    s = _100 + _101 + 32
    t = _100 + ceil32(return_data.size) + 32
    while idx < _102:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _102:
        revert with 'NH{q', 50
    _119 = mem[_100 + ceil32(return_data.size) + 64]
    if _76 < _76 / 50:
        revert with 'NH{q', 17
    _120 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] / 2
    mem[mem[64] + 36] = _76 - (_76 / 50)
    mem[mem[64] + 68] = 160
    _121 = mem[(4 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _121:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_120 + 100] = stor7
    mem[_120 + 132] = block.timestamp
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _120 + (32 * _121) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] < ext_call.return_data[0] / 2:
        revert with 'NH{q', 17
    if _119 < _119 / 50:
        revert with 'NH{q', 17
    _132 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    mem[mem[64] + 36] = _119 - (_119 / 50)
    mem[mem[64] + 68] = 160
    _133 = mem[(4 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 192]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = mem[64] + 196
    while idx < _133:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_132 + 100] = stor7
    mem[_132 + 132] = block.timestamp
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _132 + (32 * _133) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x8e8f7425 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
