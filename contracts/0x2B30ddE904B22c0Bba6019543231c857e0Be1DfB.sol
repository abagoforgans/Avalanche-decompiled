contract main {




// =====================  Runtime code  =====================


address routerAddress;
uint256 stor1;

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_aaece8bd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    routerAddress = address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x73b295c2 with:
            gas gas_remaining wei
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 288] = 2
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 352] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 384] = 2
    mem[(2 * ceil32(return_data.size)) + 416] = address(arg1)
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 480
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 484] = msg.value
    mem[(4 * ceil32(return_data.size)) + 516] = 64
    mem[(4 * ceil32(return_data.size)) + 548] = 2
    idx = 0
    s = ceil32(return_data.size) + 320
    t = (4 * ceil32(return_data.size)) + 580
    while idx < mem[ceil32(return_data.size) + 288]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 640]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _80 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _81 = mem[_80]
    require mem[_80] <= test266151307()
    require _80 + mem[_80] + 31 < _80 + return_data.size
    _82 = mem[_80 + mem[_80]]
    if mem[_80 + mem[_80]] > test266151307():
        revert with 0, 65
    if _80 + ceil32(return_data.size) + ceil32(32 * mem[_80 + mem[_80]]) + 1 > test266151307() or ceil32(32 * mem[_80 + mem[_80]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _80 + ceil32(return_data.size) + ceil32(32 * mem[_80 + mem[_80]]) + 1
    mem[_80 + ceil32(return_data.size)] = _82
    require return_data.size >= _81 + (32 * _82) + 32
    mem[_80 + ceil32(return_data.size) + 32 len 32 * _82] = mem[_80 + _81 + 32 len 32 * _82]
    if 1 >= _82:
        revert with 0, 50
    _136 = mem[_80 + ceil32(return_data.size) + 64]
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _139 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_139] == mem[_139 + 12 len 20]
    require ext_code.size(mem[_139 + 12 len 20])
    call mem[_139 + 12 len 20].0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = stor1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), stor1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _145 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_145] == bool(mem[_145])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _149 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _150 = mem[_149]
    if 10 > !block.timestamp:
        revert with 0, 17
    _151 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _150
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _152 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 288]
    idx = 0
    s = ceil32(return_data.size) + 320
    t = mem[64] + 196
    while idx < _152:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_151 + 100] = this.address
    mem[_151 + 132] = block.timestamp + 10
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _151 + (32 * _152) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _188 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _189 = mem[_188]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = stor1
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), stor1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _192 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_192] == bool(mem[_192])
    if 10 > !block.timestamp:
        revert with 0, 17
    _194 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _189
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _195 = mem[(2 * ceil32(return_data.size)) + 384]
    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 384]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 416
    t = mem[64] + 196
    while idx < _195:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_194 + 100] = this.address
    mem[_194 + 132] = block.timestamp + 10
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _194 + (32 * _195) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _219 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _220 = mem[_219]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _223 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if gas_remaining < gas_remaining:
        revert with 0, 17
    return _189, _220, mem[_223], 0, 0, _136
}



}
