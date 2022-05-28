contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function sub_97ae06b5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'err'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5f957edb(?) {
    require calldata.size - 4 >= 32
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.MEMOTowMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7146241c(?) {
    require calldata.size - 4 >= 32
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if stor1 != msg.sender:
        revert with 0, 'err'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ec2bf5d0(?) {
    if stor1 != msg.sender:
        revert with 0, 'err'
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_eabc0000(?) {
    if stor1 != msg.sender:
        revert with 0, 'err'
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6ffe6ac0(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[160] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _37 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _38 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _38) + _37 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _38)] = mem[_37 + 224 len ceil32(32 * _38)]
    if 1 >= _38:
        revert with 0, 50
    _64 = mem[ceil32(return_data.size) + 256]
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 256]
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.MEMOTowMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args _64
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _67 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _68 = mem[_67]
    mem[128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[160] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = mem[64] + 100
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _86 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _87 = mem[_86]
    require mem[_86] <= test266151307()
    require _86 + mem[_86] + 31 < _86 + return_data.size
    _88 = mem[_86 + mem[_86]]
    if mem[_86 + mem[_86]] > test266151307():
        revert with 0, 65
    if _86 + ceil32(return_data.size) + ceil32(32 * mem[_86 + mem[_86]]) + 1 > test266151307() or ceil32(32 * mem[_86 + mem[_86]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _86 + ceil32(return_data.size) + ceil32(32 * mem[_86 + mem[_86]]) + 1
    mem[_86 + ceil32(return_data.size)] = _88
    require (32 * _88) + _87 + 32 <= return_data.size
    mem[_86 + ceil32(return_data.size) + 32 len ceil32(32 * _88)] = mem[_86 + _87 + 32 len ceil32(32 * _88)]
    if 1 >= _88:
        revert with 0, 50
    return _68, mem[_86 + ceil32(return_data.size) + 64]
}

function sub_d1c153b3(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[196] = arg1
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _37 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
    _38 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _38
    require (32 * _38) + _37 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _38)] = mem[ceil32(return_data.size) + _37 + 224 len ceil32(32 * _38)]
    if 1 >= _38:
        revert with 0, 50
    _60 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[128] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = mem[64] + 100
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _79 = mem[_78]
    require mem[_78] <= test266151307()
    require _78 + mem[_78] + 31 < _78 + return_data.size
    _80 = mem[_78 + mem[_78]]
    if mem[_78 + mem[_78]] > test266151307():
        revert with 0, 65
    if _78 + ceil32(return_data.size) + ceil32(32 * mem[_78 + mem[_78]]) + 1 > test266151307() or ceil32(32 * mem[_78 + mem[_78]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _78 + ceil32(return_data.size) + ceil32(32 * mem[_78 + mem[_78]]) + 1
    mem[_78 + ceil32(return_data.size)] = _80
    require (32 * _80) + _79 + 32 <= return_data.size
    mem[_78 + ceil32(return_data.size) + 32 len ceil32(32 * _80)] = mem[_78 + _79 + 32 len ceil32(32 * _80)]
    if 1 >= _80:
        revert with 0, 50
    return _60, mem[_78 + ceil32(return_data.size) + 64]
}

function sub_ef790f90(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[160] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _105 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _106 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _106) + _105 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _106)] = mem[_105 + 224 len ceil32(32 * _106)]
    if 1 >= _106:
        revert with 0, 50
    _200 = mem[ceil32(return_data.size) + 256]
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 256]
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.MEMOTowMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args _200
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _203 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _204 = mem[_203]
    mem[128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[160] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = mem[64] + 100
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _290 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _291 = mem[_290]
    require mem[_290] <= test266151307()
    require _290 + mem[_290] + 31 < _290 + return_data.size
    _292 = mem[_290 + mem[_290]]
    if mem[_290 + mem[_290]] > test266151307():
        revert with 0, 65
    if _290 + ceil32(return_data.size) + ceil32(32 * mem[_290 + mem[_290]]) + 1 > test266151307() or ceil32(32 * mem[_290 + mem[_290]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _290 + ceil32(return_data.size) + ceil32(32 * mem[_290 + mem[_290]]) + 1
    mem[_290 + ceil32(return_data.size)] = _292
    require (32 * _292) + _291 + 32 <= return_data.size
    mem[_290 + ceil32(return_data.size) + 32 len ceil32(32 * _292)] = mem[_290 + _291 + 32 len ceil32(32 * _292)]
    if 1 >= _292:
        revert with 0, 50
    _369 = mem[_290 + ceil32(return_data.size) + 64]
    if _204 > mem[_290 + ceil32(return_data.size) + 64]:
        _370 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_370]:
            revert with 0, 50
        mem[_370 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        if 1 >= mem[_370]:
            revert with 0, 50
        mem[_370 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[_370 + 100] = _204
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
                gas gas_remaining wei
               args _204
        mem[_370 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _370 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        mem[_370 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_370 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
        mem[_370 + ceil32(return_data.size) + 132] = 64
        mem[_370 + ceil32(return_data.size) + 164] = mem[_370]
        idx = 0
        s = _370 + ceil32(return_data.size) + 196
        t = _370 + 32
        while idx < mem[_370]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, mem[_370 + ceil32(return_data.size) + 164 len (32 * mem[_370]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_370 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _370 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _446 = mem[_370 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[_370 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require _370 + ceil32(return_data.size) + mem[_370 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < _370 + ceil32(return_data.size) + return_data.size + 96
        _448 = mem[_370 + ceil32(return_data.size) + mem[_370 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[_370 + ceil32(return_data.size) + mem[_370 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if _370 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_370 + ceil32(return_data.size) + mem[_370 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[_370 + ceil32(return_data.size) + mem[_370 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = _370 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_370 + ceil32(return_data.size) + mem[_370 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[_370 + (2 * ceil32(return_data.size)) + 96] = mem[_370 + ceil32(return_data.size) + mem[_370 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require (32 * _448) + _446 + 32 <= return_data.size
        mem[_370 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _448)] = mem[_370 + ceil32(return_data.size) + _446 + 128 len ceil32(32 * _448)]
        if 1 >= _448:
            revert with 0, 50
        _496 = mem[_370 + (2 * ceil32(return_data.size)) + 160]
        if 0 >= mem[_370]:
            revert with 0, 50
        mem[_370 + 32] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        if 1 >= mem[_370]:
            revert with 0, 50
        mem[_370 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _204
        mem[mem[64] + 36] = 64
        _504 = mem[_370]
        mem[mem[64] + 68] = mem[_370]
        idx = 0
        s = mem[64] + 100
        t = _370 + 32
        while idx < _504:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _204, 64, mem[mem[64] + 68 len (32 * _504) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _536 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _538 = mem[_536]
        require mem[_536] <= test266151307()
        require _536 + mem[_536] + 31 < _536 + return_data.size
        _540 = mem[_536 + mem[_536]]
        if mem[_536 + mem[_536]] > test266151307():
            revert with 0, 65
        if _536 + ceil32(return_data.size) + ceil32(32 * mem[_536 + mem[_536]]) + 1 > test266151307() or ceil32(32 * mem[_536 + mem[_536]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _536 + ceil32(return_data.size) + ceil32(32 * mem[_536 + mem[_536]]) + 1
        mem[_536 + ceil32(return_data.size)] = _540
        require (32 * _540) + _538 + 32 <= return_data.size
        mem[_536 + ceil32(return_data.size) + 32 len ceil32(32 * _540)] = mem[_536 + _538 + 32 len ceil32(32 * _540)]
        if 1 >= _540:
            revert with 0, 50
        if _496 > mem[_536 + ceil32(return_data.size) + 64]:
            return _204, _496
        return _204, mem[_536 + ceil32(return_data.size) + 64]
    _372 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_372]:
        revert with 0, 50
    mem[_372 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    if 1 >= mem[_372]:
        revert with 0, 50
    mem[_372 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[_372 + 100] = _369
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args _369
    mem[_372 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _372 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    mem[_372 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_372 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[_372 + ceil32(return_data.size) + 132] = 64
    mem[_372 + ceil32(return_data.size) + 164] = mem[_372]
    idx = 0
    s = _372 + ceil32(return_data.size) + 196
    t = _372 + 32
    while idx < mem[_372]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], 64, mem[_372 + ceil32(return_data.size) + 164 len (32 * mem[_372]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_372 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _372 + (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _447 = mem[_372 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[_372 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require _372 + ceil32(return_data.size) + mem[_372 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < _372 + ceil32(return_data.size) + return_data.size + 96
    _449 = mem[_372 + ceil32(return_data.size) + mem[_372 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[_372 + ceil32(return_data.size) + mem[_372 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 0, 65
    if _372 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_372 + ceil32(return_data.size) + mem[_372 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[_372 + ceil32(return_data.size) + mem[_372 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = _372 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_372 + ceil32(return_data.size) + mem[_372 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[_372 + (2 * ceil32(return_data.size)) + 96] = mem[_372 + ceil32(return_data.size) + mem[_372 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require (32 * _449) + _447 + 32 <= return_data.size
    mem[_372 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _449)] = mem[_372 + ceil32(return_data.size) + _447 + 128 len ceil32(32 * _449)]
    if 1 >= _449:
        revert with 0, 50
    _498 = mem[_372 + (2 * ceil32(return_data.size)) + 160]
    if 0 >= mem[_372]:
        revert with 0, 50
    mem[_372 + 32] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
    if 1 >= mem[_372]:
        revert with 0, 50
    mem[_372 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    _503 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _369
    mem[mem[64] + 36] = 64
    _505 = mem[_372]
    mem[mem[64] + 68] = mem[_372]
    idx = 0
    s = mem[64] + 100
    t = _372 + 32
    while idx < _505:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _503 + (32 * _505) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _537 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _539 = mem[_537]
    require mem[_537] <= test266151307()
    require _537 + mem[_537] + 31 < _537 + return_data.size
    _541 = mem[_537 + mem[_537]]
    if mem[_537 + mem[_537]] > test266151307():
        revert with 0, 65
    if _537 + ceil32(return_data.size) + ceil32(32 * mem[_537 + mem[_537]]) + 1 > test266151307() or ceil32(32 * mem[_537 + mem[_537]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _537 + ceil32(return_data.size) + ceil32(32 * mem[_537 + mem[_537]]) + 1
    mem[_537 + ceil32(return_data.size)] = _541
    require (32 * _541) + _539 + 32 <= return_data.size
    mem[_537 + ceil32(return_data.size) + 32 len ceil32(32 * _541)] = mem[_537 + _539 + 32 len ceil32(32 * _541)]
    if 1 >= _541:
        revert with 0, 50
    if _498 > mem[_537 + ceil32(return_data.size) + 64]:
        return _369, _498
    return _369, mem[_537 + ceil32(return_data.size) + 64]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x97ae06b5(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x3ccdbb28(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg3 == address(arg3)
            if stor1 != msg.sender:
                revert with 0, 'err'
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if unknown_0x5f957edb(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.MEMOTowMEMO(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        if uint32(call.func_hash) >> 224 != unknown_0x6ffe6ac0(?????):
            require unknown_0x7146241c(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        require not msg.value
        require calldata.size - 4 >= 32
        mem[128] = 2
        mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[192] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg1
        mem[260] = 64
        mem[292] = 2
        idx = 0
        s = 324
        t = 160
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _266 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _269 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require (32 * _269) + _266 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 256 len ceil32(32 * _269)] = mem[_266 + 256 len ceil32(32 * _269)]
        if 1 >= _269:
            revert with 0, 50
        _411 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 288]
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.MEMOTowMEMO(uint256 arg1) with:
                gas gas_remaining wei
               args _411
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _420 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _424 = mem[_420]
        mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[192] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = mem[64] + 100
        t = 160
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _541 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _544 = mem[_541]
        require mem[_541] <= test266151307()
        require _541 + mem[_541] + 31 < _541 + return_data.size
        _547 = mem[_541 + mem[_541]]
        if mem[_541 + mem[_541]] > test266151307():
            revert with 0, 65
        if _541 + ceil32(return_data.size) + ceil32(32 * mem[_541 + mem[_541]]) + 1 > test266151307() or ceil32(32 * mem[_541 + mem[_541]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _541 + ceil32(return_data.size) + ceil32(32 * mem[_541 + mem[_541]]) + 1
        mem[_541 + ceil32(return_data.size)] = _547
        require (32 * _547) + _544 + 32 <= return_data.size
        mem[_541 + ceil32(return_data.size) + 32 len ceil32(32 * _547)] = mem[_541 + _544 + 32 len ceil32(32 * _547)]
        if 1 >= _547:
            revert with 0, 50
        return _424, mem[_541 + ceil32(return_data.size) + 64]
    if unknown_0x97ae06b5(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if stor1 != msg.sender:
            revert with 0, 'err'
        call address(arg1) with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0xd1c153b3(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        mem[128] = 2
        mem[160] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        mem[192] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[228] = arg1
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 260] = 64
        mem[ceil32(return_data.size) + 292] = 2
        idx = 0
        s = ceil32(return_data.size) + 324
        t = 160
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _267 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
        _270 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        require (32 * _270) + _267 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 256 len ceil32(32 * _270)] = mem[ceil32(return_data.size) + _267 + 256 len ceil32(32 * _270)]
        if 1 >= _270:
            revert with 0, 50
        _413 = mem[(2 * ceil32(return_data.size)) + 288]
        mem[160] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[192] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = mem[64] + 100
        t = 160
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _542 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _545 = mem[_542]
        require mem[_542] <= test266151307()
        require _542 + mem[_542] + 31 < _542 + return_data.size
        _548 = mem[_542 + mem[_542]]
        if mem[_542 + mem[_542]] > test266151307():
            revert with 0, 65
        if _542 + ceil32(return_data.size) + ceil32(32 * mem[_542 + mem[_542]]) + 1 > test266151307() or ceil32(32 * mem[_542 + mem[_542]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _542 + ceil32(return_data.size) + ceil32(32 * mem[_542 + mem[_542]]) + 1
        mem[_542 + ceil32(return_data.size)] = _548
        require (32 * _548) + _545 + 32 <= return_data.size
        mem[_542 + ceil32(return_data.size) + 32 len ceil32(32 * _548)] = mem[_542 + _545 + 32 len ceil32(32 * _548)]
        if 1 >= _548:
            revert with 0, 50
        return _413, mem[_542 + ceil32(return_data.size) + 64]
    if unknown_0xeabc0000(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        if stor1 != msg.sender:
            revert with 0, 'err'
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.claim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        require return_data.size >= 32
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if unknown_0xec2bf5d0(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        if stor1 != msg.sender:
            revert with 0, 'err'
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        require return_data.size >= 32
        call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require unknown_0xef790f90(?????) == uint32(call.func_hash) >> 224
    require not msg.value
    require calldata.size - 4 >= 32
    mem[128] = 2
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[192] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = arg1
    mem[260] = 64
    mem[292] = 2
    idx = 0
    s = 324
    t = 160
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[324 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _268 = mem[224 len 4], Mask(224, 32, arg1) >> 32
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
    _271 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    require (32 * _271) + _268 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256 len ceil32(32 * _271)] = mem[_268 + 256 len ceil32(32 * _271)]
    if 1 >= _271:
        revert with 0, 50
    _415 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 288]
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.MEMOTowMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args _415
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _422 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _425 = mem[_422]
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[192] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = mem[64] + 100
    t = 160
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _543 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _546 = mem[_543]
    require mem[_543] <= test266151307()
    require _543 + mem[_543] + 31 < _543 + return_data.size
    _549 = mem[_543 + mem[_543]]
    if mem[_543 + mem[_543]] > test266151307():
        revert with 0, 65
    if _543 + ceil32(return_data.size) + ceil32(32 * mem[_543 + mem[_543]]) + 1 > test266151307() or ceil32(32 * mem[_543 + mem[_543]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _543 + ceil32(return_data.size) + ceil32(32 * mem[_543 + mem[_543]]) + 1
    mem[_543 + ceil32(return_data.size)] = _549
    require (32 * _549) + _546 + 32 <= return_data.size
    mem[_543 + ceil32(return_data.size) + 32 len ceil32(32 * _549)] = mem[_543 + _546 + 32 len ceil32(32 * _549)]
    if 1 >= _549:
        revert with 0, 50
    _644 = mem[_543 + ceil32(return_data.size) + 64]
    if _425 > mem[_543 + ceil32(return_data.size) + 64]:
        _649 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_649]:
            revert with 0, 50
        mem[_649 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        if 1 >= mem[_649]:
            revert with 0, 50
        mem[_649 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[_649 + 100] = _425
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
                gas gas_remaining wei
               args _425
        mem[_649 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _649 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        mem[_649 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_649 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
        mem[_649 + ceil32(return_data.size) + 132] = 64
        mem[_649 + ceil32(return_data.size) + 164] = mem[_649]
        idx = 0
        s = _649 + ceil32(return_data.size) + 196
        t = _649 + 32
        while idx < mem[_649]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor0.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _649 + ceil32(return_data.size) + (32 * mem[_649]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _723 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _725 = mem[_723]
        require mem[_723] <= test266151307()
        require _723 + mem[_723] + 31 < _723 + return_data.size
        _727 = mem[_723 + mem[_723]]
        if mem[_723 + mem[_723]] > test266151307():
            revert with 0, 65
        if _723 + ceil32(return_data.size) + ceil32(32 * mem[_723 + mem[_723]]) + 1 > test266151307() or ceil32(32 * mem[_723 + mem[_723]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _723 + ceil32(return_data.size) + ceil32(32 * mem[_723 + mem[_723]]) + 1
        mem[_723 + ceil32(return_data.size)] = _727
        require (32 * _727) + _725 + 32 <= return_data.size
        mem[_723 + ceil32(return_data.size) + 32 len ceil32(32 * _727)] = mem[_723 + _725 + 32 len ceil32(32 * _727)]
        if 1 >= _727:
            revert with 0, 50
        _775 = mem[_723 + ceil32(return_data.size) + 64]
        if 0 >= mem[_649]:
            revert with 0, 50
        mem[_649 + 32] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        if 1 >= mem[_649]:
            revert with 0, 50
        mem[_649 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _425
        mem[mem[64] + 36] = 64
        _783 = mem[_649]
        mem[mem[64] + 68] = mem[_649]
        idx = 0
        s = mem[64] + 100
        t = _649 + 32
        while idx < _783:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _425, 64, mem[mem[64] + 68 len (32 * _783) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _815 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _817 = mem[_815]
        require mem[_815] <= test266151307()
        require _815 + mem[_815] + 31 < _815 + return_data.size
        _819 = mem[_815 + mem[_815]]
        if mem[_815 + mem[_815]] > test266151307():
            revert with 0, 65
        if _815 + ceil32(return_data.size) + ceil32(32 * mem[_815 + mem[_815]]) + 1 > test266151307() or ceil32(32 * mem[_815 + mem[_815]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _815 + ceil32(return_data.size) + ceil32(32 * mem[_815 + mem[_815]]) + 1
        mem[_815 + ceil32(return_data.size)] = _819
        require (32 * _819) + _817 + 32 <= return_data.size
        mem[_815 + ceil32(return_data.size) + 32 len ceil32(32 * _819)] = mem[_815 + _817 + 32 len ceil32(32 * _819)]
        if 1 >= _819:
            revert with 0, 50
        if _775 > mem[_815 + ceil32(return_data.size) + 64]:
            return _425, _775
        return _425, mem[_815 + ceil32(return_data.size) + 64]
    _651 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_651]:
        revert with 0, 50
    mem[_651 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    if 1 >= mem[_651]:
        revert with 0, 50
    mem[_651 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[_651 + 100] = _644
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args _644
    mem[_651 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _651 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    mem[_651 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_651 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[_651 + ceil32(return_data.size) + 132] = 64
    mem[_651 + ceil32(return_data.size) + 164] = mem[_651]
    idx = 0
    s = _651 + ceil32(return_data.size) + 196
    t = _651 + 32
    while idx < mem[_651]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], 64, mem[_651 + ceil32(return_data.size) + 164 len (32 * mem[_651]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_651 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _651 + (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _726 = mem[_651 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[_651 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require _651 + ceil32(return_data.size) + mem[_651 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < _651 + ceil32(return_data.size) + return_data.size + 96
    _728 = mem[_651 + ceil32(return_data.size) + mem[_651 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[_651 + ceil32(return_data.size) + mem[_651 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 0, 65
    if _651 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_651 + ceil32(return_data.size) + mem[_651 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[_651 + ceil32(return_data.size) + mem[_651 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = _651 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_651 + ceil32(return_data.size) + mem[_651 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[_651 + (2 * ceil32(return_data.size)) + 96] = _728
    require (32 * _728) + _726 + 32 <= return_data.size
    mem[_651 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _728)] = mem[_651 + ceil32(return_data.size) + _726 + 128 len ceil32(32 * _728)]
    if 1 >= _728:
        revert with 0, 50
    _777 = mem[_651 + (2 * ceil32(return_data.size)) + 160]
    if 0 >= mem[_651]:
        revert with 0, 50
    mem[_651 + 32] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
    if 1 >= mem[_651]:
        revert with 0, 50
    mem[_651 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    _782 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _644
    mem[mem[64] + 36] = 64
    _784 = mem[_651]
    mem[mem[64] + 68] = mem[_651]
    idx = 0
    s = mem[64] + 100
    t = _651 + 32
    while idx < _784:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _782 + (32 * _784) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _816 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _818 = mem[_816]
    require mem[_816] <= test266151307()
    require _816 + mem[_816] + 31 < _816 + return_data.size
    _820 = mem[_816 + mem[_816]]
    if mem[_816 + mem[_816]] > test266151307():
        revert with 0, 65
    if _816 + ceil32(return_data.size) + ceil32(32 * mem[_816 + mem[_816]]) + 1 > test266151307() or ceil32(32 * mem[_816 + mem[_816]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _816 + ceil32(return_data.size) + ceil32(32 * mem[_816 + mem[_816]]) + 1
    mem[_816 + ceil32(return_data.size)] = _820
    require (32 * _820) + _818 + 32 <= return_data.size
    mem[_816 + ceil32(return_data.size) + 32 len ceil32(32 * _820)] = mem[_816 + _818 + 32 len ceil32(32 * _820)]
    if 1 >= _820:
        revert with 0, 50
    if _777 > mem[_816 + ceil32(return_data.size) + 64]:
        return _644, _777
    return _644, mem[_816 + ceil32(return_data.size) + 64]
}



}
