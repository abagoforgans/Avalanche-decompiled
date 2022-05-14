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

function unstake() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
}

function stake() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x96bbfb78311227b805c968b070a81d358c13379)
    call 0x096bbfb78311227b805c968b070a81d358c13379.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4bff4150(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == uint16(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[100] = address(('cd', 36)[0])
    mem[132] = address(('cd', 36)[1])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(('cd', 36)[0]), address(('cd', 36)[1])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = cd[4]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), cd[4]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 100] = 0
    mem[(6 * ceil32(return_data.size)) + 132] = 64
    mem[(6 * ceil32(return_data.size)) + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (6 * ceil32(return_data.size)) + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 0, 64, ('cd', 36).length, mem[(6 * ceil32(return_data.size)) + 196 len 32 * ('cd', 36).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _34 = mem[(6 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
    _35 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(7 * ceil32(return_data.size)) + 96] = _35
    require _34 + (32 * _35) + 32 <= return_data.size
    idx = 0
    s = (6 * ceil32(return_data.size)) + _34 + 128
    t = (7 * ceil32(return_data.size)) + 128
    while idx < _35:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _35:
        revert with 'NH{q', 50
    _62 = mem[(7 * ceil32(return_data.size)) + 160]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_65] == mem[_65 + 12 len 20]
    if mem[_65 + 12 len 20] == address(('cd', 36)[1]):
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _62, 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[68]):
            revert with 'NH{q', 18
        if _62 < _62 / uint16(cd[68]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 36)[1]))
        staticcall address(('cd', 36)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_75] == mem[_75]
        if mem[_75] < _62 - (_62 / uint16(cd[68])):
            revert with 0, 'slippage'
    else:
        mem[mem[64] + 36] = _62
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _62, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[68]):
            revert with 'NH{q', 18
        if _62 < _62 / uint16(cd[68]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 36)[1]))
        staticcall address(('cd', 36)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_76] == mem[_76]
        if mem[_76] < _62 - (_62 / uint16(cd[68])):
            revert with 0, 'slippage'
}

function sub_0b6d0abc(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == uint16(cd[68])
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
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[ceil32(return_data.size) + 100] = address(('cd', 36)[0])
    mem[ceil32(return_data.size) + 132] = address(('cd', 36)[1])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(('cd', 36)[0]), address(('cd', 36)[1])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 132] = cd[4]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), cd[4]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
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
    mem[(7 * ceil32(return_data.size)) + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (7 * ceil32(return_data.size)) + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 0, 64, ('cd', 36).length, mem[(7 * ceil32(return_data.size)) + 196 len 32 * ('cd', 36).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _58 = mem[(7 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
    _59 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(8 * ceil32(return_data.size)) + 96] = _59
    require _58 + (32 * _59) + 32 <= return_data.size
    idx = 0
    s = (7 * ceil32(return_data.size)) + _58 + 128
    t = (8 * ceil32(return_data.size)) + 128
    while idx < _59:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _59:
        revert with 'NH{q', 50
    _86 = mem[(8 * ceil32(return_data.size)) + 160]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_89] == mem[_89 + 12 len 20]
    if mem[_89 + 12 len 20] == address(('cd', 36)[1]):
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _86, 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[68]):
            revert with 'NH{q', 18
        if _86 < _86 / uint16(cd[68]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 36)[1]))
        staticcall address(('cd', 36)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_99] == mem[_99]
        if mem[_99] < _86 - (_86 / uint16(cd[68])):
            revert with 0, 'slippage'
    else:
        mem[mem[64] + 36] = _86
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _86, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[68]):
            revert with 'NH{q', 18
        if _86 < _86 / uint16(cd[68]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 36)[1]))
        staticcall address(('cd', 36)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _100 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_100] == mem[_100]
        if mem[_100] < _86 - (_86 / uint16(cd[68])):
            revert with 0, 'slippage'
}

function sub_3ec94f77(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == uint16(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[100] = address(('cd', 36)[0])
    mem[132] = address(('cd', 36)[1])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(('cd', 36)[0]), address(('cd', 36)[1])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = cd[4]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), cd[4]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 100] = 0
    mem[(6 * ceil32(return_data.size)) + 132] = 64
    mem[(6 * ceil32(return_data.size)) + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (6 * ceil32(return_data.size)) + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 0, 64, ('cd', 36).length, mem[(6 * ceil32(return_data.size)) + 196 len 32 * ('cd', 36).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _32 = mem[(6 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
    _33 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(7 * ceil32(return_data.size)) + 96] = _33
    require _32 + (32 * _33) + 32 <= return_data.size
    idx = 0
    s = (6 * ceil32(return_data.size)) + _32 + 128
    t = (7 * ceil32(return_data.size)) + 128
    while idx < _33:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _33:
        revert with 'NH{q', 50
    _76 = mem[(7 * ceil32(return_data.size)) + 160]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _79 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_79] == mem[_79 + 12 len 20]
    if mem[_79 + 12 len 20] == address(('cd', 36)[1]):
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _76, 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[68]):
            revert with 'NH{q', 18
        if _76 < _76 / uint16(cd[68]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 36)[1]))
        staticcall address(('cd', 36)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_89] == mem[_89]
        if mem[_89] < _76 - (_76 / uint16(cd[68])):
            revert with 0, 'slippage'
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_105] == mem[_105]
        mem[mem[64] + 4] = mem[_105]
    else:
        mem[mem[64] + 36] = _76
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _76, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint16(cd[68]):
            revert with 'NH{q', 18
        if _76 < _76 / uint16(cd[68]):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 36)[1]))
        staticcall address(('cd', 36)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _90 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_90] == mem[_90]
        if mem[_90] < _76 - (_76 / uint16(cd[68])):
            revert with 0, 'slippage'
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_106] == mem[_106]
        mem[mem[64] + 4] = mem[_106]
    require ext_code.size(0x96bbfb78311227b805c968b070a81d358c13379)
    call 0x096bbfb78311227b805c968b070a81d358c13379.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
