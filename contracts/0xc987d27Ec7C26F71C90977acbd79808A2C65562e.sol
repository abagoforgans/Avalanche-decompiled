contract main {




// =====================  Runtime code  =====================


#
#  - liquidateBorrow(address arg1)
#  - getRepayAmount(address arg1)
#  - _fallback()
#
address addressProvider;
address lendingPoolAddress;
address priceOracleAddress;
address joeRouterAddress;
address flashloanAddress;
address stor5;
address vaultAddress;
address stor7;
mapping of uint8 stor8;

function flashloan() {
    return flashloanAddress
}

function priceOracle() {
    return priceOracleAddress
}

function addressProvider() {
    return addressProvider
}

function joeRouter() {
    return joeRouterAddress
}

function lendingPool() {
    return lendingPoolAddress
}

function allowedUsers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function vault() {
    return vaultAddress
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    stor7 = arg1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    vaultAddress = arg1
}

function setFlashloan(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    flashloanAddress = arg1
}

function whitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    stor8[address(arg1)] = 1
}

function getUserAccountData(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    mem[928] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    staticcall lendingPoolAddress.getReservesList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[928 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _7 = mem[928]
    require mem[928] <= test266151307()
    require return_data.size + 928 > mem[928] + 959
    _8 = mem[mem[928] + 928]
    if mem[mem[928] + 928] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[928] + 928]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[928] + 928]) + 929 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[928] + 928]) + 929
    mem[ceil32(return_data.size) + 928] = mem[mem[928] + 928]
    require _7 + (32 * _8) + 32 <= return_data.size
    s = ceil32(return_data.size) + 960
    idx = _7 + 960
    while idx < _7 + (32 * _8) + 960:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[mem[64] + 4] = arg1
    staticcall lendingPoolAddress.getUserConfiguration(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1240 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1241 = mem[64]
    if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 32
    mem[_1241] = mem[_1240]
    if not mem[_1241]:
        return 0
    # nil
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only permissioned joe pair can call'
    if flashloanAddress != arg1:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 196)] == address(cd[(arg4 + 196)])
    mem[288] = cd[(arg4 + 228)]
    mem[256] = address(cd[(arg4 + 196)])
    mem[224] = cd[(arg4 + 164)]
    mem[192] = address(cd[(arg4 + 132)])
    mem[160] = address(cd[(arg4 + 100)])
    mem[128] = address(cd[(arg4 + 68)])
    mem[96] = address(cd[(arg4 + 36)])
    mem[324] = lendingPoolAddress
    mem[356] = cd[(arg4 + 164)]
    call address(cd[(arg4 + 68)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args lendingPoolAddress, cd[(arg4 + 164)]
    mem[320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Approval error'
    mem[ceil32(return_data.size) + 356] = address(cd[(arg4 + 68)])
    mem[ceil32(return_data.size) + 388] = address(cd[(arg4 + 100)])
    mem[ceil32(return_data.size) + 420] = cd[(arg4 + 164)]
    mem[ceil32(return_data.size) + 452] = 0
    require ext_code.size(lendingPoolAddress)
    call lendingPoolAddress.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 132)]), address(cd[(arg4 + 68)]), address(cd[(arg4 + 100)]), cd[(arg4 + 164)], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 324] = this.address
    staticcall address(cd[(arg4 + 132)]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
    require return_data.size >= 32
    if uint64(cd[(arg4 + 132)]) << 96 == address(cd[(arg4 + 196)]):
        if cd[(arg4 + 228)] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < cd[(arg4 + 228)]:
            revert with 0, 17
        call address(cd[(arg4 + 196)]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), cd[(arg4 + 228)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(cd[(arg4 + 196)]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args vaultAddress, ext_call.return_data[0] - cd[(arg4 + 228)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[(2 * ceil32(return_data.size)) + 320] = 2
        mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg4 + 132)])
        mem[(2 * ceil32(return_data.size)) + 384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[(2 * ceil32(return_data.size)) + 420] = joeRouterAddress
        mem[(2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
        call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args joeRouterAddress, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 452] = 64
        mem[(4 * ceil32(return_data.size)) + 484] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 352
        t = (4 * ceil32(return_data.size)) + 516
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall joeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 516 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _99 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447
        _100 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 417 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 417
        mem[(6 * ceil32(return_data.size)) + 416] = _100
        require _99 + (32 * _100) + 32 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 448 len ceil32(32 * _100)] = mem[(4 * ceil32(return_data.size)) + _99 + 448 len ceil32(32 * _100)]
        if _100 < 1:
            revert with 0, 17
        if _100 - 1 >= _100:
            revert with 0, 50
        _137 = mem[(32 * _100 - 1) + (6 * ceil32(return_data.size)) + 448]
        _138 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = _137
        mem[mem[64] + 68] = 160
        _139 = mem[(2 * ceil32(return_data.size)) + 320]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 320]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 352
        t = mem[64] + 196
        while idx < _139:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_138 + 100] = this.address
        mem[_138 + 132] = block.timestamp
        call joeRouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _138 + (32 * _139) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _168 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _169 = mem[_168]
        require mem[_168] <= test266151307()
        require _168 + return_data.size > _168 + mem[_168] + 31
        _170 = mem[_168 + mem[_168]]
        if mem[_168 + mem[_168]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_168 + mem[_168]]) + 1 < 0 or _168 + ceil32(return_data.size) + ceil32(32 * mem[_168 + mem[_168]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _168 + ceil32(return_data.size) + ceil32(32 * mem[_168 + mem[_168]]) + 1
        mem[_168 + ceil32(return_data.size)] = _170
        require _169 + (32 * _170) + 32 <= return_data.size
        mem[_168 + ceil32(return_data.size) + 32 len ceil32(32 * _170)] = mem[_168 + _169 + 32 len ceil32(32 * _170)]
        _193 = mem[288]
        _194 = mem[64]
        mem[64] = mem[64] + 64
        mem[_194] = 30
        mem[_194 + 32] = 'SafeMath: subtraction overflow'
        if _193 > _137:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if _137 < _193:
            revert with 0, 17
        _198 = mem[256]
        _200 = mem[288]
        mem[mem[64] + 4] = mem[108 len 20]
        mem[mem[64] + 36] = _200
        call address(_198).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _200
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_203] == bool(mem[_203])
        _207 = mem[256]
        mem[mem[64] + 4] = vaultAddress
        mem[mem[64] + 36] = _137 - _193
        call address(_207).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args vaultAddress, _137 - _193
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _210 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_210] == bool(mem[_210])
}



}
