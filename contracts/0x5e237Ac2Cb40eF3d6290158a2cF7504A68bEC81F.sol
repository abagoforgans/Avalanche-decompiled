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
    if stor7 != msg.sender:
        revert with 0, 'f4'
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
    _46 = mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351 < (2 * ceil32(return_data.size)) + return_data.size + 320
    _47 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 321 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 321
    mem[(4 * ceil32(return_data.size)) + 320] = _47
    require _46 + (32 * _47) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _46 + 352
    t = (4 * ceil32(return_data.size)) + 352
    while idx < _47:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _47:
        revert with 'NH{q', 50
    _78 = mem[(4 * ceil32(return_data.size)) + 384]
    if ext_call.return_data[0] < ext_call.return_data[0] / 2:
        revert with 'NH{q', 17
    _79 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    mem[mem[64] + 36] = 64
    _80 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 224
    t = mem[64] + 100
    while idx < _80:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    staticcall stor1.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _79 + (32 * _80) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _110 = mem[_109]
    require mem[_109] <= test266151307()
    require _109 + mem[_109] + 31 < _109 + return_data.size
    _111 = mem[_109 + mem[_109]]
    if mem[_109 + mem[_109]] > test266151307():
        revert with 'NH{q', 65
    if _109 + ceil32(return_data.size) + floor32(mem[_109 + mem[_109]]) + 1 > test266151307() or floor32(mem[_109 + mem[_109]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _109 + ceil32(return_data.size) + floor32(mem[_109 + mem[_109]]) + 1
    mem[_109 + ceil32(return_data.size)] = _111
    require _110 + (32 * _111) + 32 <= return_data.size
    idx = 0
    s = _109 + _110 + 32
    t = _109 + ceil32(return_data.size) + 32
    while idx < _111:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 2 >= _111:
        revert with 'NH{q', 50
    _136 = mem[_109 + ceil32(return_data.size) + 96]
    if _78 < _78 / 50:
        revert with 'NH{q', 17
    _137 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = _78 - (_78 / 50)
    mem[mem[64] + 68] = 160
    _138 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _138:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_137 + 100] = this.address
    mem[_137 + 132] = block.timestamp
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _137 + (32 * _138) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] < ext_call.return_data[0] / 2:
        revert with 'NH{q', 17
    if _136 < _136 / 50:
        revert with 'NH{q', 17
    _157 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    mem[mem[64] + 36] = _136 - (_136 / 50)
    mem[mem[64] + 68] = 160
    _158 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 224
    t = mem[64] + 196
    while idx < _158:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_157 + 100] = this.address
    mem[_157 + 132] = block.timestamp
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _157 + (32 * _158) + -mem[64] + 192]
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
    _175 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_175] == mem[_175]
    mem[mem[64] + 4] = mem[_175]
    mem[mem[64] + 36] = stor7
    require ext_code.size(stor0)
    call stor0.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], stor7
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_179] == bool(mem[_179])
    require ext_code.size(stor0)
    call stor0.claim(address arg1) with:
         gas gas_remaining wei
        args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unstakeAndsell() {
    if stor7 != msg.sender:
        revert with 0, 'f6'
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
    _49 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
    _50 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 289
    mem[(6 * ceil32(return_data.size)) + 288] = _50
    require _49 + (32 * _50) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _49 + 320
    t = (6 * ceil32(return_data.size)) + 320
    while idx < _50:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _50:
        revert with 'NH{q', 50
    _78 = mem[(6 * ceil32(return_data.size)) + 352]
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
    _102 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _103 = mem[_102]
    require mem[_102] <= test266151307()
    require _102 + mem[_102] + 31 < _102 + return_data.size
    _104 = mem[_102 + mem[_102]]
    if mem[_102 + mem[_102]] > test266151307():
        revert with 'NH{q', 65
    if _102 + ceil32(return_data.size) + floor32(mem[_102 + mem[_102]]) + 1 > test266151307() or floor32(mem[_102 + mem[_102]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _102 + ceil32(return_data.size) + floor32(mem[_102 + mem[_102]]) + 1
    mem[_102 + ceil32(return_data.size)] = _104
    require _103 + (32 * _104) + 32 <= return_data.size
    idx = 0
    s = _102 + _103 + 32
    t = _102 + ceil32(return_data.size) + 32
    while idx < _104:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _104:
        revert with 'NH{q', 50
    _121 = mem[_102 + ceil32(return_data.size) + 64]
    if _78 < _78 / 50:
        revert with 'NH{q', 17
    _122 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] / 2
    mem[mem[64] + 36] = _78 - (_78 / 50)
    mem[mem[64] + 68] = 160
    _123 = mem[(4 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _123:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_122 + 100] = stor7
    mem[_122 + 132] = block.timestamp
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _122 + (32 * _123) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] < ext_call.return_data[0] / 2:
        revert with 'NH{q', 17
    if _121 < _121 / 50:
        revert with 'NH{q', 17
    _134 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    mem[mem[64] + 36] = _121 - (_121 / 50)
    mem[mem[64] + 68] = 160
    _135 = mem[(4 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 192]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = mem[64] + 196
    while idx < _135:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_134 + 100] = stor7
    mem[_134 + 132] = block.timestamp
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _134 + (32 * _135) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x8e8f7425 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
