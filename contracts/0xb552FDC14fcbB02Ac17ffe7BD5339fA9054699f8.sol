contract main {




// =====================  Runtime code  =====================


const FACTORY = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10


address owner;
address routerAddress;

function owner() {
    return owner
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_75f00d22(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint16(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[100] = address(('cd', 4)[0])
    mem[132] = address(('cd', 4)[1])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(('cd', 4)[0]), address(('cd', 4)[1])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(7 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 100] = 0
    mem[(7 * ceil32(return_data.size)) + 132] = 64
    mem[(7 * ceil32(return_data.size)) + 164] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = (7 * ceil32(return_data.size)) + 196
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 0, 64, ('cd', 4).length, mem[(7 * ceil32(return_data.size)) + 196 len 32 * ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _54 = mem[(7 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
    _55 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(8 * ceil32(return_data.size)) + 96] = _55
    require _54 + (32 * _55) + 32 <= return_data.size
    idx = 0
    s = (7 * ceil32(return_data.size)) + _54 + 128
    t = (8 * ceil32(return_data.size)) + 128
    while idx < _55:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _55:
        revert with 'NH{q', 50
    _82 = mem[(8 * ceil32(return_data.size)) + 160]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_85] == mem[_85 + 12 len 20]
    if mem[_85 + 12 len 20] == address(('cd', 4)[1]):
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _82, 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[36]):
            revert with 'NH{q', 18
        if _82 < _82 / uint16(cd[36]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 4)[1]))
        staticcall address(('cd', 4)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_95] == mem[_95]
        if mem[_95] < _82 - (_82 / uint16(cd[36])):
            revert with 0, 'Slippage'
    else:
        mem[mem[64] + 36] = _82
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _82, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[36]):
            revert with 'NH{q', 18
        if _82 < _82 / uint16(cd[36]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 4)[1]))
        staticcall address(('cd', 4)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_96] == mem[_96]
        if mem[_96] < _82 - (_82 / uint16(cd[36])):
            revert with 0, 'Slippage'
}

function sub_5dca75a0(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint16(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[ceil32(return_data.size) + 100] = address(('cd', 4)[0])
    mem[ceil32(return_data.size) + 132] = address(('cd', 4)[1])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(('cd', 4)[0]), address(('cd', 4)[1])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 100] = 0
    mem[(8 * ceil32(return_data.size)) + 132] = 64
    mem[(8 * ceil32(return_data.size)) + 164] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = (8 * ceil32(return_data.size)) + 196
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 0, 64, ('cd', 4).length, mem[(8 * ceil32(return_data.size)) + 196 len 32 * ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _62 = mem[(8 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(8 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (8 * ceil32(return_data.size)) + return_data.size + 96
    _63 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(10 * ceil32(return_data.size)) + 96] = _63
    require _62 + (32 * _63) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _62 + 128
    t = (10 * ceil32(return_data.size)) + 128
    while idx < _63:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _63:
        revert with 'NH{q', 50
    _90 = mem[(10 * ceil32(return_data.size)) + 160]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_93] == mem[_93 + 12 len 20]
    if mem[_93 + 12 len 20] == address(('cd', 4)[1]):
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _90, 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[36]):
            revert with 'NH{q', 18
        if _90 < _90 / uint16(cd[36]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 4)[1]))
        staticcall address(('cd', 4)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_103] == mem[_103]
        if mem[_103] < _90 - (_90 / uint16(cd[36])):
            revert with 0, 'Slippage'
    else:
        mem[mem[64] + 36] = _90
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _90, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[36]):
            revert with 'NH{q', 18
        if _90 < _90 / uint16(cd[36]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 4)[1]))
        staticcall address(('cd', 4)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_104] == mem[_104]
        if mem[_104] < _90 - (_90 / uint16(cd[36])):
            revert with 0, 'Slippage'
}

function sub_0ba61c5d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint16(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[100] = address(('cd', 4)[0])
    mem[132] = address(('cd', 4)[1])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(('cd', 4)[0]), address(('cd', 4)[1])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(7 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 100] = 0
    mem[(7 * ceil32(return_data.size)) + 132] = 64
    mem[(7 * ceil32(return_data.size)) + 164] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = (7 * ceil32(return_data.size)) + 196
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 0, 64, ('cd', 4).length, mem[(7 * ceil32(return_data.size)) + 196 len 32 * ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _66 = mem[(7 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
    _67 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(8 * ceil32(return_data.size)) + 96] = _67
    require _66 + (32 * _67) + 32 <= return_data.size
    idx = 0
    s = (7 * ceil32(return_data.size)) + _66 + 128
    t = (8 * ceil32(return_data.size)) + 128
    while idx < _67:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _67:
        revert with 'NH{q', 50
    _106 = mem[(8 * ceil32(return_data.size)) + 160]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_109] == mem[_109 + 12 len 20]
    if mem[_109 + 12 len 20] == address(('cd', 4)[1]):
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _106, 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[36]):
            revert with 'NH{q', 18
        if _106 < _106 / uint16(cd[36]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 4)[1]))
        staticcall address(('cd', 4)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_119] == mem[_119]
        if mem[_119] < _106 - (_106 / uint16(cd[36])):
            revert with 0, 'Slippage'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _131 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_131] == mem[_131]
        mem[mem[64] + 4] = mem[_131]
    else:
        mem[mem[64] + 36] = _106
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _106, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[36]):
            revert with 'NH{q', 18
        if _106 < _106 / uint16(cd[36]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 4)[1]))
        staticcall address(('cd', 4)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_120] == mem[_120]
        if mem[_120] < _106 - (_106 / uint16(cd[36])):
            revert with 0, 'Slippage'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_132] == mem[_132]
        mem[mem[64] + 4] = mem[_132]
    require ext_code.size(0x96bbfb78311227b805c968b070a81d358c13379)
    call 0x096bbfb78311227b805c968b070a81d358c13379.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
