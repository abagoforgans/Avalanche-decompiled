contract main {




// =====================  Runtime code  =====================


#
#  - sub_2bf48be3(?)
#
address owner;
address stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_29a30527(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Contract has zero token balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b680a32c(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == bool(arg5)
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = address(arg1)
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor1 != address(arg3):
        mem[(2 * ceil32(return_data.size)) + 96] = 3
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 192] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = arg4
        mem[(2 * ceil32(return_data.size)) + 260] = 64
        mem[(2 * ceil32(return_data.size)) + 292] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg4, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _158 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 255
        _160 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]) + 225 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]) + 225
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]
        require _158 + (32 * _160) + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _160] = mem[(2 * ceil32(return_data.size)) + _158 + 256 len 32 * _160]
        if _160 < 1:
            revert with 0, 17
        if _160 - 1 >= _160:
            revert with 0, 50
        _290 = mem[(32 * _160 - 1) + (4 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _296 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _298 = mem[_296]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, 1, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _412 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _414 = mem[_412]
        if mem[_412] < _298:
            revert with 0, 17
        if _290 < mem[_412] - _298:
            revert with 0, 17
        if _290 - mem[_412] + _298 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not _290:
            revert with 0, 18
        if uint8(var120002) < var120001:
            if uint8(var124001) < uint8(var124002):
                revert with 0, 17
            if uint8(var130001) < 1:
                revert with 0, 17
            if uint8(var134003) < mem[(2 * ceil32(return_data.size)) + 96]:
                _1662 = mem[(32 * uint8(var134003)) + (2 * ceil32(return_data.size)) + 128]
                s = uint8(var134003)
                idx = var134001
                t = var134003
                while uint8(idx) < mem[(2 * ceil32(return_data.size)) + 96]:
                    if uint8(t) >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[(32 * uint8(t)) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 140 len 20]
                    if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] = address(_1662)
                    if uint8(t) == 255:
                        revert with 0, 17
                    if uint8(uint8(t) + 1) < mem[(2 * ceil32(return_data.size)) + 96] / 2:
                        if mem[(2 * ceil32(return_data.size)) + 127 len 1] < uint8(uint8(t) + 1):
                            revert with 0, 17
                        if uint8(mem[(2 * ceil32(return_data.size)) + 127 len 1] - uint8(uint8(t) + 1)) < 1:
                            revert with 0, 17
                        if uint8(uint8(t) + 1) >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _1662 = mem[(32 * uint8(uint8(uint8(t) + 1) + 1)) + (2 * ceil32(return_data.size)) + 128]
                        s = uint8(uint8(t) + 1)
                        idx = uint8(mem[(2 * ceil32(return_data.size)) + 127 len 1] - uint8(uint8(t) + 1)) - 1
                        t = uint8(t) + 1
                        continue 
                    if not arg5:
                        emit 0x30658b22: address(arg2), (10^18 * _290) - (10^18 * _414) + (10^18 * _298) / _290, bool(arg5), 0
                        return (10^18 * _290) - (10^18 * _414) + (10^18 * _298) / _290, 0
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _414 - _298
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), _414 - _298
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1687] == bool(mem[_1687])
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _414 - _298
                    mem[mem[64] + 36] = 64
                    _1696 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    t = (2 * ceil32(return_data.size)) + 128
                    u = mem[64] + 100
                    while idx < _1696:
                        mem[u] = mem[t + 12 len 20]
                        _1662 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 128]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _414 - _298, 64, mem[mem[64] + 68 len (32 * _1696) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1754 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1756 = mem[_1754]
                    require mem[_1754] <= test266151307()
                    require _1754 + return_data.size > _1754 + mem[_1754] + 31
                    _1758 = mem[_1754 + mem[_1754]]
                    if mem[_1754 + mem[_1754]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1754 + mem[_1754]]) + 1 < 0 or _1754 + ceil32(return_data.size) + ceil32(32 * mem[_1754 + mem[_1754]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1754 + ceil32(return_data.size) + ceil32(32 * mem[_1754 + mem[_1754]]) + 1
                    mem[_1754 + ceil32(return_data.size)] = _1758
                    require _1756 + (32 * _1758) + 32 <= return_data.size
                    t = _1754 + _1756 + 32
                    u = _1754 + ceil32(return_data.size) + 32
                    idx = 0
                    while idx < _1758:
                        mem[u] = mem[t]
                        _1662 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 128]
                        t = t + 32
                        u = u + 32
                        idx = idx + 1
                        continue 
                    if _1758 < 1:
                        revert with 0, 17
                    if _1758 - 1 >= _1758:
                        revert with 0, 50
                    _1808 = mem[(32 * _1758 - 1) + _1754 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = owner
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args owner
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1814 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1816 = mem[_1814]
                    _1818 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _414 - _298
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    _1820 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    t = (2 * ceil32(return_data.size)) + 128
                    u = mem[64] + 196
                    while idx < _1820:
                        mem[u] = mem[t + 12 len 20]
                        _1662 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 128]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1818 + 100] = owner
                    mem[_1818 + 132] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1818 + (32 * _1820) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = owner
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args owner
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1850] < _1816:
                        revert with 0, 17
                    if _1808 < mem[_1850] - _1816:
                        revert with 0, 17
                    if _1808 - mem[_1850] + _1816 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _1808:
                        revert with 0, 18
                    emit 0x30658b22: address(arg2), (10^18 * _290) - (10^18 * _414) + (10^18 * _298) / _290, bool(arg5), (10^18 * _1808) - (10^18 * mem[_1850]) + (10^18 * _1816) / _1808
                    return (10^18 * _290) - (10^18 * _414) + (10^18 * _298) / _290, 
                           (10^18 * _1808) - (10^18 * mem[_1850]) + (10^18 * _1816) / _1808
            revert with 0, 50
        if not arg5:
            emit 0x30658b22: address(arg2), (10^18 * _290) - (10^18 * mem[_412]) + (10^18 * _298) / _290, bool(arg5), 0
            return (10^18 * _290) - (10^18 * mem[_412]) + (10^18 * _298) / _290, 0
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _414 - _298
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), _414 - _298
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _783 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_783] == bool(mem[_783])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _414 - _298
        mem[mem[64] + 36] = 64
        _802 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 100
        while idx < _802:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _414 - _298, 64, mem[mem[64] + 68 len (32 * _802) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _936 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _940 = mem[_936]
        require mem[_936] <= test266151307()
        require _936 + return_data.size > _936 + mem[_936] + 31
        _950 = mem[_936 + mem[_936]]
        if mem[_936 + mem[_936]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_936 + mem[_936]]) + 1 < 0 or _936 + ceil32(return_data.size) + ceil32(32 * mem[_936 + mem[_936]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _936 + ceil32(return_data.size) + ceil32(32 * mem[_936 + mem[_936]]) + 1
        mem[_936 + ceil32(return_data.size)] = _950
        require _940 + (32 * _950) + 32 <= return_data.size
        mem[_936 + ceil32(return_data.size) + 32 len 32 * _950] = mem[_936 + _940 + 32 len 32 * _950]
        var136001 = _936 + _940 + (32 * _950) + 32
        var136005 = _950
        if _950 < 1:
            revert with 0, 17
        if _950 - 1 >= _950:
            revert with 0, 50
        _1080 = mem[(32 * _950 - 1) + _936 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = owner
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args owner
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1096 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1098 = mem[_1096]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _414 - _298
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _1104 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _1104:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = owner
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _414 - _298, 1, 160, owner, block.timestamp, mem[mem[64] + 164 len (32 * _1104) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = owner
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args owner
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1220 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_1220] < _1098:
            revert with 0, 17
        if _1080 < mem[_1220] - _1098:
            revert with 0, 17
        if _1080 - mem[_1220] + _1098 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not _1080:
            revert with 0, 18
        emit 0x30658b22: address(arg2), (10^18 * _290) - (10^18 * _414) + (10^18 * _298) / _290, bool(arg5), (10^18 * _1080) - (10^18 * mem[_1220]) + (10^18 * _1098) / _1080
        return (10^18 * _290) - (10^18 * _414) + (10^18 * _298) / _290, 
               (10^18 * _1080) - (10^18 * mem[_1220]) + (10^18 * _1098) / _1080
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg4
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _159 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223
    _161 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require _159 + (32 * _161) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _161] = mem[(2 * ceil32(return_data.size)) + _159 + 224 len 32 * _161]
    if _161 < 1:
        revert with 0, 17
    if _161 - 1 >= _161:
        revert with 0, 50
    _293 = mem[(32 * _161 - 1) + (4 * ceil32(return_data.size)) + 224]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _297 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _299 = mem[_297]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg4
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg4, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _413 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _415 = mem[_413]
    if mem[_413] < _299:
        revert with 0, 17
    if _293 < mem[_413] - _299:
        revert with 0, 17
    if _293 - mem[_413] + _299 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not _293:
        revert with 0, 18
    if uint8(var119002) < var119001:
        if uint8(var123001) < uint8(var123002):
            revert with 0, 17
        if uint8(var129001) < 1:
            revert with 0, 17
        if uint8(var133003) < mem[(2 * ceil32(return_data.size)) + 96]:
            _1664 = mem[(32 * uint8(var133003)) + (2 * ceil32(return_data.size)) + 128]
            s = uint8(var133003)
            idx = var133001
            t = var133003
            while uint8(idx) < mem[(2 * ceil32(return_data.size)) + 96]:
                if uint8(t) >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * uint8(t)) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 140 len 20]
                if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 128] = address(_1664)
                if uint8(t) == 255:
                    revert with 0, 17
                if uint8(uint8(t) + 1) < mem[(2 * ceil32(return_data.size)) + 96] / 2:
                    if mem[(2 * ceil32(return_data.size)) + 127 len 1] < uint8(uint8(t) + 1):
                        revert with 0, 17
                    if uint8(mem[(2 * ceil32(return_data.size)) + 127 len 1] - uint8(uint8(t) + 1)) < 1:
                        revert with 0, 17
                    if uint8(uint8(t) + 1) >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    _1664 = mem[(32 * uint8(uint8(uint8(t) + 1) + 1)) + (2 * ceil32(return_data.size)) + 128]
                    s = uint8(uint8(t) + 1)
                    idx = uint8(mem[(2 * ceil32(return_data.size)) + 127 len 1] - uint8(uint8(t) + 1)) - 1
                    t = uint8(t) + 1
                    continue 
                if not arg5:
                    emit 0x30658b22: address(arg2), (10^18 * _293) - (10^18 * _415) + (10^18 * _299) / _293, bool(arg5), 0
                    return (10^18 * _293) - (10^18 * _415) + (10^18 * _299) / _293, 0
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _415 - _299
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _415 - _299
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1689] == bool(mem[_1689])
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _415 - _299
                mem[mem[64] + 36] = 64
                _1697 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 100
                while idx < _1697:
                    mem[u] = mem[t + 12 len 20]
                    _1664 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 128]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _415 - _299, 64, mem[mem[64] + 68 len (32 * _1697) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1755 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1757 = mem[_1755]
                require mem[_1755] <= test266151307()
                require _1755 + return_data.size > _1755 + mem[_1755] + 31
                _1759 = mem[_1755 + mem[_1755]]
                if mem[_1755 + mem[_1755]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_1755 + mem[_1755]]) + 1 < 0 or _1755 + ceil32(return_data.size) + ceil32(32 * mem[_1755 + mem[_1755]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1755 + ceil32(return_data.size) + ceil32(32 * mem[_1755 + mem[_1755]]) + 1
                mem[_1755 + ceil32(return_data.size)] = _1759
                require _1757 + (32 * _1759) + 32 <= return_data.size
                t = _1755 + _1757 + 32
                u = _1755 + ceil32(return_data.size) + 32
                idx = 0
                while idx < _1759:
                    mem[u] = mem[t]
                    _1664 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 128]
                    t = t + 32
                    u = u + 32
                    idx = idx + 1
                    continue 
                if _1759 < 1:
                    revert with 0, 17
                if _1759 - 1 >= _1759:
                    revert with 0, 50
                _1809 = mem[(32 * _1759 - 1) + _1755 + ceil32(return_data.size) + 32]
                mem[mem[64] + 4] = owner
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1815 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1817 = mem[_1815]
                _1819 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _415 - _299
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _1821 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                t = (2 * ceil32(return_data.size)) + 128
                u = mem[64] + 196
                while idx < _1821:
                    mem[u] = mem[t + 12 len 20]
                    _1664 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 128]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1819 + 100] = owner
                mem[_1819 + 132] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1819 + (32 * _1821) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = owner
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1851 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1851] < _1817:
                    revert with 0, 17
                if _1809 < mem[_1851] - _1817:
                    revert with 0, 17
                if _1809 - mem[_1851] + _1817 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not _1809:
                    revert with 0, 18
                emit 0x30658b22: address(arg2), (10^18 * _293) - (10^18 * _415) + (10^18 * _299) / _293, bool(arg5), (10^18 * _1809) - (10^18 * mem[_1851]) + (10^18 * _1817) / _1809
                return (10^18 * _293) - (10^18 * _415) + (10^18 * _299) / _293, 
                       (10^18 * _1809) - (10^18 * mem[_1851]) + (10^18 * _1817) / _1809
        revert with 0, 50
    if not arg5:
        emit 0x30658b22: address(arg2), (10^18 * _293) - (10^18 * mem[_413]) + (10^18 * _299) / _293, bool(arg5), 0
        return (10^18 * _293) - (10^18 * mem[_413]) + (10^18 * _299) / _293, 0
    mem[mem[64] + 4] = address(arg1)
    mem[mem[64] + 36] = _415 - _299
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), _415 - _299
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _785 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_785] == bool(mem[_785])
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _415 - _299
    mem[mem[64] + 36] = 64
    _803 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 100
    while idx < _803:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _415 - _299, 64, mem[mem[64] + 68 len (32 * _803) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _937 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _943 = mem[_937]
    require mem[_937] <= test266151307()
    require _937 + return_data.size > _937 + mem[_937] + 31
    _952 = mem[_937 + mem[_937]]
    if mem[_937 + mem[_937]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_937 + mem[_937]]) + 1 < 0 or _937 + ceil32(return_data.size) + ceil32(32 * mem[_937 + mem[_937]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _937 + ceil32(return_data.size) + ceil32(32 * mem[_937 + mem[_937]]) + 1
    mem[_937 + ceil32(return_data.size)] = _952
    require _943 + (32 * _952) + 32 <= return_data.size
    mem[_937 + ceil32(return_data.size) + 32 len 32 * _952] = mem[_937 + _943 + 32 len 32 * _952]
    var135001 = _937 + _943 + (32 * _952) + 32
    var135005 = _952
    if _952 < 1:
        revert with 0, 17
    if _952 - 1 >= _952:
        revert with 0, 50
    _1083 = mem[(32 * _952 - 1) + _937 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = owner
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args owner
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1097 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1099 = mem[_1097]
    _1102 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _415 - _299
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _1105 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _1105:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1102 + 100] = owner
    mem[_1102 + 132] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _1102 + (32 * _1105) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = owner
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args owner
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1221 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_1221] < _1099:
        revert with 0, 17
    if _1083 < mem[_1221] - _1099:
        revert with 0, 17
    if _1083 - mem[_1221] + _1099 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not _1083:
        revert with 0, 18
    emit 0x30658b22: address(arg2), (10^18 * _293) - (10^18 * _415) + (10^18 * _299) / _293, bool(arg5), (10^18 * _1083) - (10^18 * mem[_1221]) + (10^18 * _1099) / _1083
    return (10^18 * _293) - (10^18 * _415) + (10^18 * _299) / _293, 
           (10^18 * _1083) - (10^18 * mem[_1221]) + (10^18 * _1099) / _1083
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x89476069(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x89476069(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Contract has zero token balance'
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0xb680a32c(?????):
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(cd[4]):
                    revert with 0, 'Ownable: new owner is the zero address'
                owner = address(cd[4])
                emit OwnershipTransferred(owner, address(cd[4]));
            require not msg.value
            require calldata.size - 4 >= 160
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[68] == address(cd[68])
            require cd[132] == bool(cd[132])
            mem[132] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 132] = address(cd[4])
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor1 == address(cd[68]):
                mem[(2 * ceil32(return_data.size)) + 128] = 2
                mem[(2 * ceil32(return_data.size)) + 160] = stor1
                mem[(2 * ceil32(return_data.size)) + 192] = address(cd[36])
                mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = cd[100]
                mem[(2 * ceil32(return_data.size)) + 260] = 64
                mem[(2 * ceil32(return_data.size)) + 292] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 160
                t = (2 * ceil32(return_data.size)) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[100], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _689 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[100]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[100]) >> 32 + 255
                _691 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[100]) >> 32 + 224]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[100]) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[100]) >> 32 + 224]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[100]) >> 32 + 224]) + 225 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[100]) >> 32 + 224]) + 225
                mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[100]) >> 32 + 224]
                require _689 + (32 * _691) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 256 len 32 * _691] = mem[(2 * ceil32(return_data.size)) + _689 + 256 len 32 * _691]
                if _691 < 1:
                    revert with 0, 17
                if _691 - 1 >= _691:
                    revert with 0, 50
                _1389 = mem[(32 * _691 - 1) + (4 * ceil32(return_data.size)) + 256]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1396 = mem[_1393]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[100]
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 160
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[100], 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2197 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2202 = mem[_2197]
                if mem[_2197] < _1396:
                    revert with 0, 17
                if _1389 < mem[_2197] - _1396:
                    revert with 0, 17
                if _1389 - mem[_2197] + _1396 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not _1389:
                    revert with 0, 18
                if uint8(var124002) < var124001:
                    if uint8(var128001) < uint8(var128002):
                        revert with 0, 17
                    if uint8(var134001) < 1:
                        revert with 0, 17
                    if uint8(var138003) < mem[(2 * ceil32(return_data.size)) + 128]:
                        _13024 = mem[(32 * uint8(var138003)) + (2 * ceil32(return_data.size)) + 160]
                        s = uint8(var138003)
                        idx = var138001
                        t = var138003
                        while uint8(idx) < mem[(2 * ceil32(return_data.size)) + 128]:
                            if uint8(t) >= mem[(2 * ceil32(return_data.size)) + 128]:
                                revert with 0, 50
                            mem[(32 * uint8(t)) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 172 len 20]
                            if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 128]:
                                revert with 0, 50
                            mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 160] = address(_13024)
                            if uint8(t) == 255:
                                revert with 0, 17
                            if uint8(uint8(t) + 1) < mem[(2 * ceil32(return_data.size)) + 128] / 2:
                                if mem[(2 * ceil32(return_data.size)) + 159 len 1] < uint8(uint8(t) + 1):
                                    revert with 0, 17
                                if uint8(mem[(2 * ceil32(return_data.size)) + 159 len 1] - uint8(uint8(t) + 1)) < 1:
                                    revert with 0, 17
                                if uint8(uint8(t) + 1) >= mem[(2 * ceil32(return_data.size)) + 128]:
                                    revert with 0, 50
                                _13024 = mem[(32 * uint8(uint8(uint8(t) + 1) + 1)) + (2 * ceil32(return_data.size)) + 160]
                                s = uint8(uint8(t) + 1)
                                idx = uint8(mem[(2 * ceil32(return_data.size)) + 159 len 1] - uint8(uint8(t) + 1)) - 1
                                t = uint8(t) + 1
                                continue 
                            if not cd[132]:
                                emit 0x30658b22: address(cd[36]), (10^18 * _1389) - (10^18 * _2202) + (10^18 * _1396) / _1389, bool(cd[132]), 0
                                return (10^18 * _1389) - (10^18 * _2202) + (10^18 * _1396) / _1389, 0
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _2202 - _1396
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[4]), _2202 - _1396
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13073 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_13073] == bool(mem[_13073])
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2202 - _1396
                            mem[mem[64] + 36] = 64
                            _13109 = mem[(2 * ceil32(return_data.size)) + 128]
                            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
                            idx = 0
                            t = (2 * ceil32(return_data.size)) + 160
                            u = mem[64] + 100
                            while idx < _13109:
                                mem[u] = mem[t + 12 len 20]
                                _13024 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 160]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args _2202 - _1396, 64, mem[mem[64] + 68 len (32 * _13109) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13767 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _13769 = mem[_13767]
                            require mem[_13767] <= test266151307()
                            require _13767 + return_data.size > _13767 + mem[_13767] + 31
                            _13773 = mem[_13767 + mem[_13767]]
                            if mem[_13767 + mem[_13767]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_13767 + mem[_13767]]) + 1 < 0 or _13767 + ceil32(return_data.size) + ceil32(32 * mem[_13767 + mem[_13767]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _13767 + ceil32(return_data.size) + ceil32(32 * mem[_13767 + mem[_13767]]) + 1
                            mem[_13767 + ceil32(return_data.size)] = _13773
                            require _13769 + (32 * _13773) + 32 <= return_data.size
                            t = _13767 + _13769 + 32
                            u = _13767 + ceil32(return_data.size) + 32
                            idx = 0
                            while idx < _13773:
                                mem[u] = mem[t]
                                _13024 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 160]
                                t = t + 32
                                u = u + 32
                                idx = idx + 1
                                continue 
                            if _13773 < 1:
                                revert with 0, 17
                            if _13773 - 1 >= _13773:
                                revert with 0, 50
                            _14453 = mem[(32 * _13773 - 1) + _13767 + ceil32(return_data.size) + 32]
                            mem[mem[64] + 4] = owner
                            require ext_code.size(stor1)
                            staticcall stor1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14463 = mem[_14461]
                            _14475 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2202 - _1396
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = 160
                            _14483 = mem[(2 * ceil32(return_data.size)) + 128]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 128]
                            idx = 0
                            t = (2 * ceil32(return_data.size)) + 160
                            u = mem[64] + 196
                            while idx < _14483:
                                mem[u] = mem[t + 12 len 20]
                                _13024 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 160]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_14475 + 100] = owner
                            mem[_14475 + 132] = block.timestamp
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _14475 + (32 * _14483) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = owner
                            require ext_code.size(stor1)
                            staticcall stor1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15129 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_15129] < _14463:
                                revert with 0, 17
                            if _14453 < mem[_15129] - _14463:
                                revert with 0, 17
                            if _14453 - mem[_15129] + _14463 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not _14453:
                                revert with 0, 18
                            emit 0x30658b22: address(cd[36]), (10^18 * _1389) - (10^18 * _2202) + (10^18 * _1396) / _1389, bool(cd[132]), (10^18 * _14453) - (10^18 * mem[_15129]) + (10^18 * _14463) / _14453
                            return (10^18 * _1389) - (10^18 * _2202) + (10^18 * _1396) / _1389, 
                                   (10^18 * _14453) - (10^18 * mem[_15129]) + (10^18 * _14463) / _14453
                    revert with 0, 50
                if not cd[132]:
                    emit 0x30658b22: address(cd[36]), (10^18 * _1389) - (10^18 * mem[_2197]) + (10^18 * _1396) / _1389, bool(cd[132]), 0
                    return (10^18 * _1389) - (10^18 * mem[_2197]) + (10^18 * _1396) / _1389, 0
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = _2202 - _1396
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), _2202 - _1396
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5393] == bool(mem[_5393])
                _5434 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2202 - _1396
                mem[mem[64] + 36] = 64
                _5449 = mem[(2 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 160
                t = mem[64] + 100
                while idx < _5449:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5434 + (32 * _5449) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6187 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6199 = mem[_6187]
                require mem[_6187] <= test266151307()
                require _6187 + return_data.size > _6187 + mem[_6187] + 31
                _6218 = mem[_6187 + mem[_6187]]
                if mem[_6187 + mem[_6187]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_6187 + mem[_6187]]) + 1 < 0 or _6187 + ceil32(return_data.size) + ceil32(32 * mem[_6187 + mem[_6187]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _6187 + ceil32(return_data.size) + ceil32(32 * mem[_6187 + mem[_6187]]) + 1
                mem[_6187 + ceil32(return_data.size)] = _6218
                require _6199 + (32 * _6218) + 32 <= return_data.size
                mem[_6187 + ceil32(return_data.size) + 32 len 32 * _6218] = mem[_6187 + _6199 + 32 len 32 * _6218]
                var140001 = _6187 + _6199 + (32 * _6218) + 32
                var140005 = _6218
                if _6218 < 1:
                    revert with 0, 17
                if _6218 - 1 >= _6218:
                    revert with 0, 50
                _6971 = mem[(32 * _6218 - 1) + _6187 + ceil32(return_data.size) + 32]
                mem[mem[64] + 4] = owner
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7001 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7017 = mem[_7001]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2202 - _1396
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _7037 = mem[(2 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 128]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 160
                t = mem[64] + 196
                while idx < _7037:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = owner
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _2202 - _1396, 1, 160, owner, block.timestamp, mem[mem[64] + 164 len (32 * _7037) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = owner
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args owner
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7757 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_7757] < _7017:
                    revert with 0, 17
                if _6971 < mem[_7757] - _7017:
                    revert with 0, 17
                if _6971 - mem[_7757] + _7017 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not _6971:
                    revert with 0, 18
                emit 0x30658b22: address(cd[36]), (10^18 * _1389) - (10^18 * _2202) + (10^18 * _1396) / _1389, bool(cd[132]), (10^18 * _6971) - (10^18 * mem[_7757]) + (10^18 * _7017) / _6971
                return (10^18 * _1389) - (10^18 * _2202) + (10^18 * _1396) / _1389, 
                       (10^18 * _6971) - (10^18 * mem[_7757]) + (10^18 * _7017) / _6971
            mem[(2 * ceil32(return_data.size)) + 128] = 3
            mem[(2 * ceil32(return_data.size)) + 160] = stor1
            mem[(2 * ceil32(return_data.size)) + 192] = address(cd[68])
            mem[(2 * ceil32(return_data.size)) + 224] = address(cd[36])
            mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 260] = cd[100]
            mem[(2 * ceil32(return_data.size)) + 292] = 64
            mem[(2 * ceil32(return_data.size)) + 324] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 160
            t = (2 * ceil32(return_data.size)) + 356
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[100], Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _688 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 256 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[100]) >> 32 + 287
            _690 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[100]) >> 32 + 256]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[100]) >> 32 + 256] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[100]) >> 32 + 256]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[100]) >> 32 + 256]) + 257 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[100]) >> 32 + 256]) + 257
            mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[100]) >> 32 + 256]
            require _688 + (32 * _690) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 288 len 32 * _690] = mem[(2 * ceil32(return_data.size)) + _688 + 288 len 32 * _690]
            if _690 < 1:
                revert with 0, 17
            if _690 - 1 >= _690:
                revert with 0, 50
            _1386 = mem[(32 * _690 - 1) + (4 * ceil32(return_data.size)) + 288]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1395 = mem[_1392]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[100]
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 160
            t = mem[64] + 196
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[100], 1, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2201 = mem[_2196]
            if mem[_2196] < _1395:
                revert with 0, 17
            if _1386 < mem[_2196] - _1395:
                revert with 0, 17
            if _1386 - mem[_2196] + _1395 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not _1386:
                revert with 0, 18
            if uint8(var125002) < var125001:
                if uint8(var129001) < uint8(var129002):
                    revert with 0, 17
                if uint8(var135001) < 1:
                    revert with 0, 17
                if uint8(var139003) < mem[(2 * ceil32(return_data.size)) + 128]:
                    _13022 = mem[(32 * uint8(var139003)) + (2 * ceil32(return_data.size)) + 160]
                    s = uint8(var139003)
                    idx = var139001
                    t = var139003
                    while uint8(idx) < mem[(2 * ceil32(return_data.size)) + 128]:
                        if uint8(t) >= mem[(2 * ceil32(return_data.size)) + 128]:
                            revert with 0, 50
                        mem[(32 * uint8(t)) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 172 len 20]
                        if uint8(idx) >= mem[(2 * ceil32(return_data.size)) + 128]:
                            revert with 0, 50
                        mem[(32 * uint8(idx)) + (2 * ceil32(return_data.size)) + 160] = address(_13022)
                        if uint8(t) == 255:
                            revert with 0, 17
                        if uint8(uint8(t) + 1) < mem[(2 * ceil32(return_data.size)) + 128] / 2:
                            if mem[(2 * ceil32(return_data.size)) + 159 len 1] < uint8(uint8(t) + 1):
                                revert with 0, 17
                            if uint8(mem[(2 * ceil32(return_data.size)) + 159 len 1] - uint8(uint8(t) + 1)) < 1:
                                revert with 0, 17
                            if uint8(uint8(t) + 1) >= mem[(2 * ceil32(return_data.size)) + 128]:
                                revert with 0, 50
                            _13022 = mem[(32 * uint8(uint8(uint8(t) + 1) + 1)) + (2 * ceil32(return_data.size)) + 160]
                            s = uint8(uint8(t) + 1)
                            idx = uint8(mem[(2 * ceil32(return_data.size)) + 159 len 1] - uint8(uint8(t) + 1)) - 1
                            t = uint8(t) + 1
                            continue 
                        if not cd[132]:
                            emit 0x30658b22: address(cd[36]), (10^18 * _1386) - (10^18 * _2201) + (10^18 * _1395) / _1386, bool(cd[132]), 0
                            return (10^18 * _1386) - (10^18 * _2201) + (10^18 * _1395) / _1386, 0
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _2201 - _1395
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), _2201 - _1395
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_13071] == bool(mem[_13071])
                        _13102 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2201 - _1395
                        mem[mem[64] + 36] = 64
                        _13108 = mem[(2 * ceil32(return_data.size)) + 128]
                        mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
                        idx = 0
                        t = (2 * ceil32(return_data.size)) + 160
                        u = mem[64] + 100
                        while idx < _13108:
                            mem[u] = mem[t + 12 len 20]
                            _13022 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 160]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _13102 + (32 * _13108) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13766 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _13768 = mem[_13766]
                        require mem[_13766] <= test266151307()
                        require _13766 + return_data.size > _13766 + mem[_13766] + 31
                        _13772 = mem[_13766 + mem[_13766]]
                        if mem[_13766 + mem[_13766]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_13766 + mem[_13766]]) + 1 < 0 or _13766 + ceil32(return_data.size) + ceil32(32 * mem[_13766 + mem[_13766]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _13766 + ceil32(return_data.size) + ceil32(32 * mem[_13766 + mem[_13766]]) + 1
                        mem[_13766 + ceil32(return_data.size)] = _13772
                        require _13768 + (32 * _13772) + 32 <= return_data.size
                        t = _13766 + _13768 + 32
                        u = _13766 + ceil32(return_data.size) + 32
                        idx = 0
                        while idx < _13772:
                            mem[u] = mem[t]
                            _13022 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 160]
                            t = t + 32
                            u = u + 32
                            idx = idx + 1
                            continue 
                        if _13772 < 1:
                            revert with 0, 17
                        if _13772 - 1 >= _13772:
                            revert with 0, 50
                        _14452 = mem[(32 * _13772 - 1) + _13766 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 4] = owner
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args owner
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14462 = mem[_14460]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2201 - _1395
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 160
                        _14482 = mem[(2 * ceil32(return_data.size)) + 128]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 128]
                        idx = 0
                        t = (2 * ceil32(return_data.size)) + 160
                        u = mem[64] + 196
                        while idx < _14482:
                            mem[u] = mem[t + 12 len 20]
                            _13022 = mem[(32 * s) + (2 * ceil32(return_data.size)) + 160]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = owner
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _2201 - _1395, 1, 160, owner, block.timestamp, mem[mem[64] + 164 len (32 * _14482) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = owner
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args owner
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15128 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_15128] < _14462:
                            revert with 0, 17
                        if _14452 < mem[_15128] - _14462:
                            revert with 0, 17
                        if _14452 - mem[_15128] + _14462 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not _14452:
                            revert with 0, 18
                        emit 0x30658b22: address(cd[36]), (10^18 * _1386) - (10^18 * _2201) + (10^18 * _1395) / _1386, bool(cd[132]), (10^18 * _14452) - (10^18 * mem[_15128]) + (10^18 * _14462) / _14452
                        return (10^18 * _1386) - (10^18 * _2201) + (10^18 * _1395) / _1386, 
                               (10^18 * _14452) - (10^18 * mem[_15128]) + (10^18 * _14462) / _14452
                revert with 0, 50
            if not cd[132]:
                emit 0x30658b22: address(cd[36]), (10^18 * _1386) - (10^18 * mem[_2196]) + (10^18 * _1395) / _1386, bool(cd[132]), 0
                return (10^18 * _1386) - (10^18 * mem[_2196]) + (10^18 * _1395) / _1386, 0
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _2201 - _1395
            require ext_code.size(address(cd[36]))
            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), _2201 - _1395
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5391 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5391] == bool(mem[_5391])
            _5432 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2201 - _1395
            mem[mem[64] + 36] = 64
            _5448 = mem[(2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 128]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 160
            t = mem[64] + 100
            while idx < _5448:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _5432 + (32 * _5448) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6186 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6196 = mem[_6186]
            require mem[_6186] <= test266151307()
            require _6186 + return_data.size > _6186 + mem[_6186] + 31
            _6216 = mem[_6186 + mem[_6186]]
            if mem[_6186 + mem[_6186]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_6186 + mem[_6186]]) + 1 < 0 or _6186 + ceil32(return_data.size) + ceil32(32 * mem[_6186 + mem[_6186]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _6186 + ceil32(return_data.size) + ceil32(32 * mem[_6186 + mem[_6186]]) + 1
            mem[_6186 + ceil32(return_data.size)] = _6216
            require _6196 + (32 * _6216) + 32 <= return_data.size
            mem[_6186 + ceil32(return_data.size) + 32 len 32 * _6216] = mem[_6186 + _6196 + 32 len 32 * _6216]
            var141001 = _6186 + _6196 + (32 * _6216) + 32
            var141005 = _6216
            if _6216 < 1:
                revert with 0, 17
            if _6216 - 1 >= _6216:
                revert with 0, 50
            _6968 = mem[(32 * _6216 - 1) + _6186 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = owner
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7000 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7016 = mem[_7000]
            _7026 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2201 - _1395
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _7036 = mem[(2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 128]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 160
            t = mem[64] + 196
            while idx < _7036:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_7026 + 100] = owner
            mem[_7026 + 132] = block.timestamp
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _7026 + (32 * _7036) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = owner
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7756 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_7756] < _7016:
                revert with 0, 17
            if _6968 < mem[_7756] - _7016:
                revert with 0, 17
            if _6968 - mem[_7756] + _7016 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not _6968:
                revert with 0, 18
            emit 0x30658b22: address(cd[36]), (10^18 * _1386) - (10^18 * _2201) + (10^18 * _1395) / _1386, bool(cd[132]), (10^18 * _6968) - (10^18 * mem[_7756]) + (10^18 * _7016) / _6968
            return (10^18 * _1386) - (10^18 * _2201) + (10^18 * _1395) / _1386, 
                   (10^18 * _6968) - (10^18 * mem[_7756]) + (10^18 * _7016) / _6968
        if unknown_0x1d111d13(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            call owner with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'withdraw failed'
        else:
            if unknown_0x29a30527(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor1 = address(cd[4])
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x2bf48be3(?????):
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    require not msg.value
                    require calldata.size - 4 >= 352
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    require cd[100] == uint8(cd[100])
                    require cd[132] <= test266151307()
                    require cd[132] + 35 < calldata.size
                    if ('cd', 132).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 132).length) + 129 < 128 or ceil32(32 * ('cd', 132).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 132).length
                    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[132] + 36
                    t = 160
                    while idx < ('cd', 132).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require cd[164] == address(cd[164])
                    require cd[196] == bool(cd[196])
                    require cd[228] == bool(cd[228])
                    require cd[292] <= test266151307()
                    require cd[292] + 35 < calldata.size
                    if ('cd', 292).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 292).length) + 130 < 129 or ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(32 * ('cd', 132).length) + 129] = ('cd', 292).length
                    require cd[292] + (32 * ('cd', 292).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[292] + 36
                    t = ceil32(32 * ('cd', 132).length) + 161
                    while idx < ('cd', 292).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require cd[324] <= test266151307()
                    require cd[324] + 35 < calldata.size
                    if ('cd', 324).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 324).length) + 131 < 130 or ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + 131 > test266151307():
                        revert with 0, 65
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + 130] = ('cd', 324).length
                    require cd[324] + (32 * ('cd', 324).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[324] + 36
                    t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + 162
                    while idx < ('cd', 324).length:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if 1 >= ('cd', 324).length:
                        revert with 0, 50
                    if stor2[mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + 194]]:
                        revert with 0, 'This transaction is already executed'
                    if 1 >= ('cd', 324).length:
                        revert with 0, 50
                    mem[0] = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + 194]
                    mem[32] = 2
                    stor2[mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + 194]] = 1
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + 135] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + 131] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(return_data.size) + 135] = address(cd[4])
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(return_data.size) + 167] = ext_call.return_data[0]
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), ext_call.return_data[0]
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(return_data.size) + 131] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not cd[196]:
                        if address(cd[164]):
                            if stor1 == address(cd[68]):
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131] = 2
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = stor1
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 195] = address(cd[36])
                                if uint8(cd[100]):
                                    if 1 == uint8(cd[100]):
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 231] = this.address
                                        require ext_code.size(address(cd[36]))
                                        staticcall address(cd[36]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227
                                        require return_data.size >= 32
                                        if 1 >= ('cd', 132).length:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 231] = mem[192]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 263] = 1
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 295] = 160
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 391] = 2
                                        idx = 0
                                        s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                        t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423
                                        while idx < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 327] = address(cd[164])
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 359] = block.timestamp
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]) + -mem[64] + 419]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0 >= ('cd', 132).length:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 231] = this.address
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227
                                    require return_data.size >= 32
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 231] = mem[160]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 263] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 295] = 160
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 391] = 2
                                    idx = 0
                                    s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                    t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423
                                    while idx < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 327] = address(cd[164])
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 359] = block.timestamp
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]) + -mem[64] + 419]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3109 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3109] <= test266151307()
                                    require _3109 + return_data.size > _3109 + mem[_3109] + 31
                                    if mem[_3109 + mem[_3109]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_3109 + mem[_3109]]) + 1 < 0 or _3109 + ceil32(return_data.size) + ceil32(32 * mem[_3109 + mem[_3109]]) + 1 > test266151307():
                                        revert with 0, 65
                                    require mem[_3109] + (32 * mem[_3109 + mem[_3109]]) + 32 <= return_data.size
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131] = 3
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = stor1
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 195] = address(cd[68])
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227] = address(cd[36])
                                if uint8(cd[100]):
                                    if 1 == uint8(cd[100]):
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 263] = this.address
                                        require ext_code.size(address(cd[36]))
                                        staticcall address(cd[36]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259
                                        require return_data.size >= 32
                                        if 1 >= ('cd', 132).length:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 263] = mem[192]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 295] = 1
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 327] = 160
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423] = 3
                                        idx = 0
                                        s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                        t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 455
                                        while idx < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 359] = address(cd[164])
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 391] = block.timestamp
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]) + -mem[64] + 451]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0 >= ('cd', 132).length:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 263] = this.address
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259
                                    require return_data.size >= 32
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 263] = mem[160]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 295] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 327] = 160
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423] = 3
                                    idx = 0
                                    s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                    t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 455
                                    while idx < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 359] = address(cd[164])
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 391] = block.timestamp
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]) + -mem[64] + 451]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3108 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3108] <= test266151307()
                                    require _3108 + return_data.size > _3108 + mem[_3108] + 31
                                    if mem[_3108 + mem[_3108]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_3108 + mem[_3108]]) + 1 < 0 or _3108 + ceil32(return_data.size) + ceil32(32 * mem[_3108 + mem[_3108]]) + 1 > test266151307():
                                        revert with 0, 65
                                    require mem[_3108] + (32 * mem[_3108 + mem[_3108]]) + 32 <= return_data.size
                        else:
                            if stor1 == address(cd[68]):
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131] = 2
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = stor1
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 195] = address(cd[36])
                                if uint8(cd[100]):
                                    if 1 == uint8(cd[100]):
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 231] = this.address
                                        require ext_code.size(address(cd[36]))
                                        staticcall address(cd[36]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227
                                        require return_data.size >= 32
                                        if 1 >= ('cd', 132).length:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 231] = mem[192]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 263] = 1
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 295] = 160
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 391] = 2
                                        idx = 0
                                        s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                        t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423
                                        while idx < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 327] = owner
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 359] = block.timestamp
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]) + -mem[64] + 419]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0 >= ('cd', 132).length:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 231] = this.address
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227
                                    require return_data.size >= 32
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 231] = mem[160]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 263] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 295] = 160
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 391] = 2
                                    idx = 0
                                    s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                    t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423
                                    while idx < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 327] = owner
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 359] = block.timestamp
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]) + -mem[64] + 419]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3111 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3111] <= test266151307()
                                    require _3111 + return_data.size > _3111 + mem[_3111] + 31
                                    if mem[_3111 + mem[_3111]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_3111 + mem[_3111]]) + 1 < 0 or _3111 + ceil32(return_data.size) + ceil32(32 * mem[_3111 + mem[_3111]]) + 1 > test266151307():
                                        revert with 0, 65
                                    require mem[_3111] + (32 * mem[_3111 + mem[_3111]]) + 32 <= return_data.size
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131] = 3
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = stor1
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 195] = address(cd[68])
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227] = address(cd[36])
                                if uint8(cd[100]):
                                    if 1 == uint8(cd[100]):
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 263] = this.address
                                        require ext_code.size(address(cd[36]))
                                        staticcall address(cd[36]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259
                                        require return_data.size >= 32
                                        if 1 >= ('cd', 132).length:
                                            revert with 0, 50
                                        _2349 = mem[192]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 263] = mem[192]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 295] = 1
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 327] = 160
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423] = 3
                                        idx = 0
                                        s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                        t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 455
                                        while idx < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _2349, 1, 160, owner, block.timestamp, mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423 len (32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0 >= ('cd', 132).length:
                                        revert with 0, 50
                                    _2293 = mem[160]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 263] = this.address
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259
                                    require return_data.size >= 32
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 263] = mem[160]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 295] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 327] = 160
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423] = 3
                                    idx = 0
                                    s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                    t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 455
                                    while idx < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 359] = owner
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 391] = block.timestamp
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _2293, ext_call.return_data[0], 160, owner, block.timestamp, mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 423 len (32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, _2293) >> 32 <= test266151307()
                                    require ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + return_data.size + 259 > ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, _2293) >> 32 + 290
                                    if mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, _2293) >> 32 + 259] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, _2293) >> 32 + 259]) + 1 < 0 or ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, _2293) >> 32 + 259]) + 260 > test266151307():
                                        revert with 0, 65
                                    require mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, _2293) >> 32 + (32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, _2293) >> 32 + 259]) + 32 <= return_data.size
                    else:
                        if stor1 == address(cd[68]):
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131] = 2
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = stor1
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 195] = address(cd[36])
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 231] = cd[260]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 263] = 64
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 295] = 2
                            idx = 0
                            s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                            t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 327
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[260], Array(len=2, data=mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 327 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227
                            require return_data.size >= 32
                            _3129 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227 len 4], Mask(224, 32, cd[260]) >> 32
                            require mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227 len 4], Mask(224, 32, cd[260]) >> 32 <= test266151307()
                            require ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + return_data.size + 227 > ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227 len 4], Mask(224, 32, cd[260]) >> 32 + 258
                            _3139 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227 len 4], Mask(224, 32, cd[260]) >> 32 + 227]
                            if mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227 len 4], Mask(224, 32, cd[260]) >> 32 + 227] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227 len 4], Mask(224, 32, cd[260]) >> 32 + 227]) + 1 < 0 or ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227 len 4], Mask(224, 32, cd[260]) >> 32 + 227]) + 228 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227 len 4], Mask(224, 32, cd[260]) >> 32 + 227]) + 228
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 227] = _3139
                            require _3129 + (32 * _3139) + 32 <= return_data.size
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259 len 32 * _3139] = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + _3129 + 259 len 32 * _3139]
                            if _3139 < 1:
                                revert with 0, 17
                            if _3139 - 1 >= _3139:
                                revert with 0, 50
                            _3911 = mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3919 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3925 = mem[_3919]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[260]
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[260], 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4673 = mem[_4667]
                            if mem[_4667] < _3925:
                                revert with 0, 17
                            if mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259] < mem[_4667] - _3925:
                                revert with 0, 17
                            if mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259] - mem[_4667] + _3925 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]:
                                revert with 0, 18
                            if uint8(var185002) < var185001:
                                if uint8(var189001) < uint8(var189002):
                                    revert with 0, 17
                                if uint8(var195001) < 1:
                                    revert with 0, 17
                                if uint8(var199003) < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                    _15110 = mem[(32 * uint8(var199003)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                    s = uint8(var199003)
                                    idx = var199001
                                    t = var199003
                                    while uint8(idx) < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                        if uint8(t) >= mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                            revert with 0, 50
                                        mem[(32 * uint8(t)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = mem[(32 * uint8(idx)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 175 len 20]
                                        if uint8(idx) >= mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                            revert with 0, 50
                                        mem[(32 * uint8(idx)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = address(_15110)
                                        if uint8(t) == 255:
                                            revert with 0, 17
                                        if uint8(uint8(t) + 1) < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131] / 2:
                                            if mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 162 len 1] < uint8(uint8(t) + 1):
                                                revert with 0, 17
                                            if uint8(mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 162 len 1] - uint8(uint8(t) + 1)) < 1:
                                                revert with 0, 17
                                            if uint8(uint8(t) + 1) >= mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                                revert with 0, 50
                                            _15110 = mem[(32 * uint8(uint8(uint8(t) + 1) + 1)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                            s = uint8(uint8(t) + 1)
                                            idx = uint8(mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 162 len 1] - uint8(uint8(t) + 1)) - 1
                                            t = uint8(t) + 1
                                            continue 
                                        if cd[228]:
                                            mem[mem[64] + 4] = address(cd[4])
                                            mem[mem[64] + 36] = _4673 - _3925
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), _4673 - _3925
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _15147 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_15147] == bool(mem[_15147])
                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4673 - _3925
                                            mem[mem[64] + 36] = 64
                                            _15177 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                            mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                            idx = 0
                                            t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                            u = mem[64] + 100
                                            while idx < _15177:
                                                mem[u] = mem[t + 12 len 20]
                                                _15110 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                idx = idx + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            require ext_code.size(address(cd[4]))
                                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args _4673 - _3925, 64, mem[mem[64] + 68 len (32 * _15177) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _15805 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_15805] <= test266151307()
                                            require _15805 + return_data.size > _15805 + mem[_15805] + 31
                                            if mem[_15805 + mem[_15805]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_15805 + mem[_15805]]) + 1 < 0 or _15805 + ceil32(return_data.size) + ceil32(32 * mem[_15805 + mem[_15805]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require mem[_15805] + (32 * mem[_15805 + mem[_15805]]) + 32 <= return_data.size
                                            # nil
                                        else:
                                            mem[mem[64]] = address(cd[36])
                                            mem[mem[64] + 32] = (10^18 * mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]) - (10^18 * _4673) + (10^18 * _3925) / mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]
                                            mem[mem[64] + 64] = bool(cd[228])
                                            mem[mem[64] + 96] = 0
                                            emit 0x30658b22: address(cd[36]), (10^18 * mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]) - (10^18 * _4673) + (10^18 * _3925) / mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259], bool(cd[228]), 0
                                            if 0 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                                revert with 0, 50
                                            if (10^18 * mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]) - (10^18 * _4673) + (10^18 * _3925) / mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259] > mem[ceil32(32 * ('cd', 132).length) + 161]:
                                                revert with 0, 'Tax larger than max taxes specified'
                                            if 1 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                                revert with 0, 50
                                            if 0 > mem[ceil32(32 * ('cd', 132).length) + 193]:
                                                revert with 0, 'Tax larger than max taxes specified'
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if address(cd[164]):
                                                _15176 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _15182 = mem[_15176]
                                                mem[mem[64] + 4] = address(cd[4])
                                                mem[mem[64] + 36] = _15182
                                                require ext_code.size(stor1)
                                                call stor1.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), _15182
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _15205 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_15205] == bool(mem[_15205])
                                                if stor1 == address(cd[68]):
                                                    _15224 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    if not mem[_15224]:
                                                        revert with 0, 50
                                                    mem[_15224 + 32] = stor1
                                                    if 1 >= mem[_15224]:
                                                        revert with 0, 50
                                                    mem[_15224 + 64] = address(cd[36])
                                                    if uint8(cd[100]):
                                                        if 1 == uint8(cd[100]):
                                                            mem[_15224 + 100] = this.address
                                                            require ext_code.size(address(cd[36]))
                                                            staticcall address(cd[36]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[_15224 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _15224 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            if 1 >= ('cd', 132).length:
                                                                revert with 0, 50
                                                            _15343 = mem[192]
                                                            mem[_15224 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                            mem[_15224 + ceil32(return_data.size) + 100] = _15343
                                                            mem[_15224 + ceil32(return_data.size) + 132] = 1
                                                            mem[_15224 + ceil32(return_data.size) + 164] = 160
                                                            mem[_15224 + ceil32(return_data.size) + 260] = mem[_15224]
                                                            idx = 0
                                                            t = _15224 + 32
                                                            u = _15224 + ceil32(return_data.size) + 292
                                                            while idx < mem[_15224]:
                                                                mem[u] = mem[t + 12 len 20]
                                                                _15110 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                                idx = idx + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            mem[_15224 + ceil32(return_data.size) + 196] = address(cd[164])
                                                            mem[_15224 + ceil32(return_data.size) + 228] = block.timestamp
                                                            require ext_code.size(address(cd[4]))
                                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _15224 + ceil32(return_data.size) + (32 * mem[_15224]) + -mem[64] + 288]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    if 0 >= ('cd', 132).length:
                                                        revert with 0, 50
                                                    _15260 = mem[160]
                                                    mem[_15224 + 100] = this.address
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_15224 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15224 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    mem[_15224 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                                    mem[_15224 + ceil32(return_data.size) + 100] = _15260
                                                    mem[_15224 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                                    mem[_15224 + ceil32(return_data.size) + 164] = 160
                                                    mem[_15224 + ceil32(return_data.size) + 260] = mem[_15224]
                                                    idx = 0
                                                    t = _15224 + 32
                                                    u = _15224 + ceil32(return_data.size) + 292
                                                    while idx < mem[_15224]:
                                                        mem[u] = mem[t + 12 len 20]
                                                        _15110 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                        idx = idx + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    mem[_15224 + ceil32(return_data.size) + 196] = address(cd[164])
                                                    mem[_15224 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(address(cd[4]))
                                                    call address(cd[4]).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _15224 + ceil32(return_data.size) + (32 * mem[_15224]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _15802 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_15802] <= test266151307()
                                                    require _15802 + return_data.size > _15802 + mem[_15802] + 31
                                                    if mem[_15802 + mem[_15802]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_15802 + mem[_15802]]) + 1 < 0 or _15802 + ceil32(return_data.size) + ceil32(32 * mem[_15802 + mem[_15802]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    require mem[_15802] + (32 * mem[_15802 + mem[_15802]]) + 32 <= return_data.size
                                                    # nil
                                                else:
                                                    _15222 = mem[64]
                                                    mem[mem[64]] = 3
                                                    mem[64] = mem[64] + 128
                                                    if not mem[_15222]:
                                                        revert with 0, 50
                                                    mem[_15222 + 32] = stor1
                                                    if 1 >= mem[_15222]:
                                                        revert with 0, 50
                                                    mem[_15222 + 64] = address(cd[68])
                                                    if 2 >= mem[_15222]:
                                                        revert with 0, 50
                                                    mem[_15222 + 96] = address(cd[36])
                                                    if uint8(cd[100]):
                                                        if 1 == uint8(cd[100]):
                                                            mem[_15222 + 132] = this.address
                                                            require ext_code.size(address(cd[36]))
                                                            staticcall address(cd[36]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[_15222 + 128] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _15222 + ceil32(return_data.size) + 128
                                                            require return_data.size >= 32
                                                            if 1 >= ('cd', 132).length:
                                                                revert with 0, 50
                                                            _15358 = mem[192]
                                                            mem[_15222 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                            mem[_15222 + ceil32(return_data.size) + 132] = _15358
                                                            mem[_15222 + ceil32(return_data.size) + 164] = 1
                                                            mem[_15222 + ceil32(return_data.size) + 196] = 160
                                                            mem[_15222 + ceil32(return_data.size) + 292] = mem[_15222]
                                                            idx = 0
                                                            t = _15222 + 32
                                                            u = _15222 + ceil32(return_data.size) + 324
                                                            while idx < mem[_15222]:
                                                                mem[u] = mem[t + 12 len 20]
                                                                _15110 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                                idx = idx + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            require ext_code.size(address(cd[4]))
                                                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args _15358, 1, 160, address(cd[164]), block.timestamp, mem[_15222 + ceil32(return_data.size) + 292 len (32 * mem[_15222]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    if 0 >= ('cd', 132).length:
                                                        revert with 0, 50
                                                    _15277 = mem[160]
                                                    mem[_15222 + 132] = this.address
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_15222 + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15222 + ceil32(return_data.size) + 128
                                                    require return_data.size >= 32
                                                    mem[_15222 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                                    mem[_15222 + ceil32(return_data.size) + 132] = _15277
                                                    mem[_15222 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                    mem[_15222 + ceil32(return_data.size) + 196] = 160
                                                    mem[_15222 + ceil32(return_data.size) + 292] = mem[_15222]
                                                    idx = 0
                                                    t = _15222 + 32
                                                    u = _15222 + ceil32(return_data.size) + 324
                                                    while idx < mem[_15222]:
                                                        mem[u] = mem[t + 12 len 20]
                                                        _15110 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                        idx = idx + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    mem[_15222 + ceil32(return_data.size) + 228] = address(cd[164])
                                                    mem[_15222 + ceil32(return_data.size) + 260] = block.timestamp
                                                    require ext_code.size(address(cd[4]))
                                                    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args _15277, ext_call.return_data[0], 160, address(cd[164]), block.timestamp, mem[_15222 + ceil32(return_data.size) + 292 len (32 * mem[_15222]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_15222 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15222 + (2 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    require mem[_15222 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15277) >> 32 <= test266151307()
                                                    require _15222 + ceil32(return_data.size) + return_data.size + 128 > _15222 + ceil32(return_data.size) + mem[_15222 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15277) >> 32 + 159
                                                    if mem[_15222 + ceil32(return_data.size) + mem[_15222 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15277) >> 32 + 128] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_15222 + ceil32(return_data.size) + mem[_15222 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15277) >> 32 + 128]) + 1 < 0 or _15222 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_15222 + ceil32(return_data.size) + mem[_15222 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15277) >> 32 + 128]) + 129 > test266151307():
                                                        revert with 0, 65
                                                    require mem[_15222 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15277) >> 32 + (32 * mem[_15222 + ceil32(return_data.size) + mem[_15222 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15277) >> 32 + 128]) + 32 <= return_data.size
                                                    # nil
                                            else:
                                                _15179 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _15193 = mem[_15179]
                                                mem[mem[64] + 4] = address(cd[4])
                                                mem[mem[64] + 36] = _15193
                                                require ext_code.size(stor1)
                                                call stor1.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), _15193
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _15208 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_15208] == bool(mem[_15208])
                                                if stor1 == address(cd[68]):
                                                    _15236 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    if not mem[_15236]:
                                                        revert with 0, 50
                                                    mem[_15236 + 32] = stor1
                                                    if 1 >= mem[_15236]:
                                                        revert with 0, 50
                                                    mem[_15236 + 64] = address(cd[36])
                                                    if uint8(cd[100]):
                                                        if 1 == uint8(cd[100]):
                                                            mem[_15236 + 100] = this.address
                                                            require ext_code.size(address(cd[36]))
                                                            staticcall address(cd[36]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[_15236 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _15236 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            if 1 >= ('cd', 132).length:
                                                                revert with 0, 50
                                                            _15363 = mem[192]
                                                            mem[_15236 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                            mem[_15236 + ceil32(return_data.size) + 100] = _15363
                                                            mem[_15236 + ceil32(return_data.size) + 132] = 1
                                                            mem[_15236 + ceil32(return_data.size) + 164] = 160
                                                            mem[_15236 + ceil32(return_data.size) + 260] = mem[_15236]
                                                            idx = 0
                                                            t = _15236 + 32
                                                            u = _15236 + ceil32(return_data.size) + 292
                                                            while idx < mem[_15236]:
                                                                mem[u] = mem[t + 12 len 20]
                                                                _15110 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                                idx = idx + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            mem[_15236 + ceil32(return_data.size) + 196] = owner
                                                            mem[_15236 + ceil32(return_data.size) + 228] = block.timestamp
                                                            require ext_code.size(address(cd[4]))
                                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _15236 + ceil32(return_data.size) + (32 * mem[_15236]) + -mem[64] + 288]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    if 0 >= ('cd', 132).length:
                                                        revert with 0, 50
                                                    _15283 = mem[160]
                                                    mem[_15236 + 100] = this.address
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_15236 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15236 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    mem[_15236 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                                    mem[_15236 + ceil32(return_data.size) + 100] = _15283
                                                    mem[_15236 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                                    mem[_15236 + ceil32(return_data.size) + 164] = 160
                                                    mem[_15236 + ceil32(return_data.size) + 260] = mem[_15236]
                                                    idx = 0
                                                    t = _15236 + 32
                                                    u = _15236 + ceil32(return_data.size) + 292
                                                    while idx < mem[_15236]:
                                                        mem[u] = mem[t + 12 len 20]
                                                        _15110 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                        idx = idx + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    mem[_15236 + ceil32(return_data.size) + 196] = owner
                                                    mem[_15236 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(address(cd[4]))
                                                    call address(cd[4]).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _15236 + ceil32(return_data.size) + (32 * mem[_15236]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _15804 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_15804] <= test266151307()
                                                    require _15804 + return_data.size > _15804 + mem[_15804] + 31
                                                    if mem[_15804 + mem[_15804]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_15804 + mem[_15804]]) + 1 < 0 or _15804 + ceil32(return_data.size) + ceil32(32 * mem[_15804 + mem[_15804]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    require mem[_15804] + (32 * mem[_15804 + mem[_15804]]) + 32 <= return_data.size
                                                    # nil
                                                else:
                                                    _15234 = mem[64]
                                                    mem[mem[64]] = 3
                                                    mem[64] = mem[64] + 128
                                                    if not mem[_15234]:
                                                        revert with 0, 50
                                                    mem[_15234 + 32] = stor1
                                                    if 1 >= mem[_15234]:
                                                        revert with 0, 50
                                                    mem[_15234 + 64] = address(cd[68])
                                                    if 2 >= mem[_15234]:
                                                        revert with 0, 50
                                                    mem[_15234 + 96] = address(cd[36])
                                                    if uint8(cd[100]):
                                                        if 1 == uint8(cd[100]):
                                                            mem[_15234 + 132] = this.address
                                                            require ext_code.size(address(cd[36]))
                                                            staticcall address(cd[36]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[_15234 + 128] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _15234 + ceil32(return_data.size) + 128
                                                            require return_data.size >= 32
                                                            if 1 >= ('cd', 132).length:
                                                                revert with 0, 50
                                                            _15375 = mem[192]
                                                            mem[_15234 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                            mem[_15234 + ceil32(return_data.size) + 132] = _15375
                                                            mem[_15234 + ceil32(return_data.size) + 164] = 1
                                                            mem[_15234 + ceil32(return_data.size) + 196] = 160
                                                            mem[_15234 + ceil32(return_data.size) + 292] = mem[_15234]
                                                            idx = 0
                                                            t = _15234 + 32
                                                            u = _15234 + ceil32(return_data.size) + 324
                                                            while idx < mem[_15234]:
                                                                mem[u] = mem[t + 12 len 20]
                                                                _15110 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                                idx = idx + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            require ext_code.size(address(cd[4]))
                                                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args _15375, 1, 160, owner, block.timestamp, mem[_15234 + ceil32(return_data.size) + 292 len (32 * mem[_15234]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    if 0 >= ('cd', 132).length:
                                                        revert with 0, 50
                                                    _15298 = mem[160]
                                                    mem[_15234 + 132] = this.address
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_15234 + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15234 + ceil32(return_data.size) + 128
                                                    require return_data.size >= 32
                                                    mem[_15234 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                                    mem[_15234 + ceil32(return_data.size) + 132] = _15298
                                                    mem[_15234 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                    mem[_15234 + ceil32(return_data.size) + 196] = 160
                                                    mem[_15234 + ceil32(return_data.size) + 292] = mem[_15234]
                                                    idx = 0
                                                    t = _15234 + 32
                                                    u = _15234 + ceil32(return_data.size) + 324
                                                    while idx < mem[_15234]:
                                                        mem[u] = mem[t + 12 len 20]
                                                        _15110 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                        idx = idx + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    mem[_15234 + ceil32(return_data.size) + 228] = owner
                                                    mem[_15234 + ceil32(return_data.size) + 260] = block.timestamp
                                                    require ext_code.size(address(cd[4]))
                                                    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args _15298, ext_call.return_data[0], 160, owner, block.timestamp, mem[_15234 + ceil32(return_data.size) + 292 len (32 * mem[_15234]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_15234 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15234 + (2 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    require mem[_15234 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15298) >> 32 <= test266151307()
                                                    require _15234 + ceil32(return_data.size) + return_data.size + 128 > _15234 + ceil32(return_data.size) + mem[_15234 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15298) >> 32 + 159
                                                    if mem[_15234 + ceil32(return_data.size) + mem[_15234 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15298) >> 32 + 128] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_15234 + ceil32(return_data.size) + mem[_15234 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15298) >> 32 + 128]) + 1 < 0 or _15234 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_15234 + ceil32(return_data.size) + mem[_15234 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15298) >> 32 + 128]) + 129 > test266151307():
                                                        revert with 0, 65
                                                    require mem[_15234 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15298) >> 32 + (32 * mem[_15234 + ceil32(return_data.size) + mem[_15234 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15298) >> 32 + 128]) + 32 <= return_data.size
                                                    # nil
                                revert with 0, 50
                            if not cd[228]:
                                mem[mem[64]] = address(cd[36])
                                mem[mem[64] + 32] = (10^18 * mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]) - (10^18 * _4673) + (10^18 * _3925) / mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]
                                mem[mem[64] + 64] = bool(cd[228])
                                mem[mem[64] + 96] = 0
                                emit 0x30658b22: address(cd[36]), (10^18 * mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]) - (10^18 * _4673) + (10^18 * _3925) / mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259], bool(cd[228]), 0
                                if 0 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                    revert with 0, 50
                                if (10^18 * mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259]) - (10^18 * _4673) + (10^18 * _3925) / mem[(32 * _3139 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259] > mem[ceil32(32 * ('cd', 132).length) + 161]:
                                    revert with 0, 'Tax larger than max taxes specified'
                                if 1 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                    revert with 0, 50
                                if 0 > mem[ceil32(32 * ('cd', 132).length) + 193]:
                                    revert with 0, 'Tax larger than max taxes specified'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if address(cd[164]):
                                    _7780 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7788 = mem[_7780]
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = _7788
                                    require ext_code.size(stor1)
                                    call stor1.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), _7788
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7807 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7807] == bool(mem[_7807])
                                    if stor1 == address(cd[68]):
                                        _7861 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if not mem[_7861]:
                                            revert with 0, 50
                                        mem[_7861 + 32] = stor1
                                        if 1 >= mem[_7861]:
                                            revert with 0, 50
                                        mem[_7861 + 64] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_7861 + 100] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_7861 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _7861 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                if 1 >= ('cd', 132).length:
                                                    revert with 0, 50
                                                _8040 = mem[192]
                                                mem[_7861 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_7861 + ceil32(return_data.size) + 100] = _8040
                                                mem[_7861 + ceil32(return_data.size) + 132] = 1
                                                mem[_7861 + ceil32(return_data.size) + 164] = 160
                                                mem[_7861 + ceil32(return_data.size) + 260] = mem[_7861]
                                                idx = 0
                                                s = _7861 + 32
                                                t = _7861 + ceil32(return_data.size) + 292
                                                while idx < mem[_7861]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _8040, 1, 160, address(cd[164]), block.timestamp, mem[_7861 + ceil32(return_data.size) + 260 len (32 * mem[_7861]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= ('cd', 132).length:
                                                revert with 0, 50
                                            _7926 = mem[160]
                                            mem[_7861 + 100] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_7861 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7861 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            mem[_7861 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_7861 + ceil32(return_data.size) + 100] = _7926
                                            mem[_7861 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                            mem[_7861 + ceil32(return_data.size) + 164] = 160
                                            mem[_7861 + ceil32(return_data.size) + 260] = mem[_7861]
                                            idx = 0
                                            s = _7861 + 32
                                            t = _7861 + ceil32(return_data.size) + 292
                                            while idx < mem[_7861]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_7861 + ceil32(return_data.size) + 196] = address(cd[164])
                                            mem[_7861 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _7926, ext_call.return_data[0], 160, address(cd[164]), block.timestamp, mem[_7861 + ceil32(return_data.size) + 260 len (32 * mem[_7861]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_7861 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7861 + (2 * ceil32(return_data.size)) + 96
                                            require return_data.size >= 32
                                            require mem[_7861 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7926) >> 32 <= test266151307()
                                            require _7861 + ceil32(return_data.size) + return_data.size + 96 > _7861 + ceil32(return_data.size) + mem[_7861 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7926) >> 32 + 127
                                            if mem[_7861 + ceil32(return_data.size) + mem[_7861 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7926) >> 32 + 96] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7861 + ceil32(return_data.size) + mem[_7861 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7926) >> 32 + 96]) + 1 < 0 or _7861 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_7861 + ceil32(return_data.size) + mem[_7861 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7926) >> 32 + 96]) + 97 > test266151307():
                                                revert with 0, 65
                                            require mem[_7861 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7926) >> 32 + (32 * mem[_7861 + ceil32(return_data.size) + mem[_7861 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7926) >> 32 + 96]) + 32 <= return_data.size
                                    else:
                                        _7859 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if not mem[_7859]:
                                            revert with 0, 50
                                        mem[_7859 + 32] = stor1
                                        if 1 >= mem[_7859]:
                                            revert with 0, 50
                                        mem[_7859 + 64] = address(cd[68])
                                        if 2 >= mem[_7859]:
                                            revert with 0, 50
                                        mem[_7859 + 96] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_7859 + 132] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_7859 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _7859 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                if 1 >= ('cd', 132).length:
                                                    revert with 0, 50
                                                _8060 = mem[192]
                                                mem[_7859 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_7859 + ceil32(return_data.size) + 132] = _8060
                                                mem[_7859 + ceil32(return_data.size) + 164] = 1
                                                mem[_7859 + ceil32(return_data.size) + 196] = 160
                                                mem[_7859 + ceil32(return_data.size) + 292] = mem[_7859]
                                                idx = 0
                                                s = _7859 + 32
                                                t = _7859 + ceil32(return_data.size) + 324
                                                while idx < mem[_7859]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _8060, 1, 160, address(cd[164]), block.timestamp, mem[_7859 + ceil32(return_data.size) + 292 len (32 * mem[_7859]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= ('cd', 132).length:
                                                revert with 0, 50
                                            _7949 = mem[160]
                                            mem[_7859 + 132] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_7859 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7859 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            mem[_7859 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_7859 + ceil32(return_data.size) + 132] = _7949
                                            mem[_7859 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            mem[_7859 + ceil32(return_data.size) + 196] = 160
                                            mem[_7859 + ceil32(return_data.size) + 292] = mem[_7859]
                                            idx = 0
                                            s = _7859 + 32
                                            t = _7859 + ceil32(return_data.size) + 324
                                            while idx < mem[_7859]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_7859 + ceil32(return_data.size) + 228] = address(cd[164])
                                            mem[_7859 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _7949, ext_call.return_data[0], 160, address(cd[164]), block.timestamp, mem[_7859 + ceil32(return_data.size) + 292 len (32 * mem[_7859]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_7859 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7859 + (2 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            require mem[_7859 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7949) >> 32 <= test266151307()
                                            require _7859 + ceil32(return_data.size) + return_data.size + 128 > _7859 + ceil32(return_data.size) + mem[_7859 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7949) >> 32 + 159
                                            if mem[_7859 + ceil32(return_data.size) + mem[_7859 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7949) >> 32 + 128] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7859 + ceil32(return_data.size) + mem[_7859 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7949) >> 32 + 128]) + 1 < 0 or _7859 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_7859 + ceil32(return_data.size) + mem[_7859 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7949) >> 32 + 128]) + 129 > test266151307():
                                                revert with 0, 65
                                            require mem[_7859 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7949) >> 32 + (32 * mem[_7859 + ceil32(return_data.size) + mem[_7859 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7949) >> 32 + 128]) + 32 <= return_data.size
                                else:
                                    _7785 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7796 = mem[_7785]
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = _7796
                                    require ext_code.size(stor1)
                                    call stor1.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), _7796
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7818 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7818] == bool(mem[_7818])
                                    if stor1 == address(cd[68]):
                                        _7881 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if not mem[_7881]:
                                            revert with 0, 50
                                        mem[_7881 + 32] = stor1
                                        if 1 >= mem[_7881]:
                                            revert with 0, 50
                                        mem[_7881 + 64] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_7881 + 100] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_7881 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _7881 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                if 1 >= ('cd', 132).length:
                                                    revert with 0, 50
                                                _8065 = mem[192]
                                                mem[_7881 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_7881 + ceil32(return_data.size) + 100] = _8065
                                                mem[_7881 + ceil32(return_data.size) + 132] = 1
                                                mem[_7881 + ceil32(return_data.size) + 164] = 160
                                                mem[_7881 + ceil32(return_data.size) + 260] = mem[_7881]
                                                idx = 0
                                                s = _7881 + 32
                                                t = _7881 + ceil32(return_data.size) + 292
                                                while idx < mem[_7881]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _8065, 1, 160, owner, block.timestamp, mem[_7881 + ceil32(return_data.size) + 260 len (32 * mem[_7881]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= ('cd', 132).length:
                                                revert with 0, 50
                                            _7955 = mem[160]
                                            mem[_7881 + 100] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_7881 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7881 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            mem[_7881 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_7881 + ceil32(return_data.size) + 100] = _7955
                                            mem[_7881 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                            mem[_7881 + ceil32(return_data.size) + 164] = 160
                                            mem[_7881 + ceil32(return_data.size) + 260] = mem[_7881]
                                            idx = 0
                                            s = _7881 + 32
                                            t = _7881 + ceil32(return_data.size) + 292
                                            while idx < mem[_7881]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_7881 + ceil32(return_data.size) + 196] = owner
                                            mem[_7881 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _7955, ext_call.return_data[0], 160, owner, block.timestamp, mem[_7881 + ceil32(return_data.size) + 260 len (32 * mem[_7881]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_7881 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7881 + (2 * ceil32(return_data.size)) + 96
                                            require return_data.size >= 32
                                            require mem[_7881 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7955) >> 32 <= test266151307()
                                            require _7881 + ceil32(return_data.size) + return_data.size + 96 > _7881 + ceil32(return_data.size) + mem[_7881 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7955) >> 32 + 127
                                            if mem[_7881 + ceil32(return_data.size) + mem[_7881 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7955) >> 32 + 96] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7881 + ceil32(return_data.size) + mem[_7881 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7955) >> 32 + 96]) + 1 < 0 or _7881 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_7881 + ceil32(return_data.size) + mem[_7881 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7955) >> 32 + 96]) + 97 > test266151307():
                                                revert with 0, 65
                                            require mem[_7881 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7955) >> 32 + (32 * mem[_7881 + ceil32(return_data.size) + mem[_7881 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7955) >> 32 + 96]) + 32 <= return_data.size
                                    else:
                                        _7879 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if not mem[_7879]:
                                            revert with 0, 50
                                        mem[_7879 + 32] = stor1
                                        if 1 >= mem[_7879]:
                                            revert with 0, 50
                                        mem[_7879 + 64] = address(cd[68])
                                        if 2 >= mem[_7879]:
                                            revert with 0, 50
                                        mem[_7879 + 96] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_7879 + 132] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_7879 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _7879 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                if 1 >= ('cd', 132).length:
                                                    revert with 0, 50
                                                _8080 = mem[192]
                                                mem[_7879 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_7879 + ceil32(return_data.size) + 132] = _8080
                                                mem[_7879 + ceil32(return_data.size) + 164] = 1
                                                mem[_7879 + ceil32(return_data.size) + 196] = 160
                                                mem[_7879 + ceil32(return_data.size) + 292] = mem[_7879]
                                                idx = 0
                                                s = _7879 + 32
                                                t = _7879 + ceil32(return_data.size) + 324
                                                while idx < mem[_7879]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_7879 + ceil32(return_data.size) + 228] = owner
                                                mem[_7879 + ceil32(return_data.size) + 260] = block.timestamp
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _7879 + ceil32(return_data.size) + (32 * mem[_7879]) + -mem[64] + 320]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= ('cd', 132).length:
                                                revert with 0, 50
                                            _7973 = mem[160]
                                            mem[_7879 + 132] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_7879 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7879 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            mem[_7879 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_7879 + ceil32(return_data.size) + 132] = _7973
                                            mem[_7879 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            mem[_7879 + ceil32(return_data.size) + 196] = 160
                                            mem[_7879 + ceil32(return_data.size) + 292] = mem[_7879]
                                            idx = 0
                                            s = _7879 + 32
                                            t = _7879 + ceil32(return_data.size) + 324
                                            while idx < mem[_7879]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_7879 + ceil32(return_data.size) + 228] = owner
                                            mem[_7879 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _7879 + ceil32(return_data.size) + (32 * mem[_7879]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9109 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9109] <= test266151307()
                                            require _9109 + return_data.size > _9109 + mem[_9109] + 31
                                            if mem[_9109 + mem[_9109]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_9109 + mem[_9109]]) + 1 < 0 or _9109 + ceil32(return_data.size) + ceil32(32 * mem[_9109 + mem[_9109]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require mem[_9109] + (32 * mem[_9109 + mem[_9109]]) + 32 <= return_data.size
                            else:
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = _4673 - _3925
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), _4673 - _3925
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7721 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7721] == bool(mem[_7721])
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4673 - _3925
                                mem[mem[64] + 36] = 64
                                _7781 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                idx = 0
                                s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                t = mem[64] + 100
                                while idx < _7781:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(cd[4]))
                                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args _4673 - _3925, 64, mem[mem[64] + 68 len (32 * _7781) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9111 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9131 = mem[_9111]
                                require mem[_9111] <= test266151307()
                                require _9111 + return_data.size > _9111 + mem[_9111] + 31
                                _9148 = mem[_9111 + mem[_9111]]
                                if mem[_9111 + mem[_9111]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_9111 + mem[_9111]]) + 1 < 0 or _9111 + ceil32(return_data.size) + ceil32(32 * mem[_9111 + mem[_9111]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _9111 + ceil32(return_data.size) + ceil32(32 * mem[_9111 + mem[_9111]]) + 1
                                mem[_9111 + ceil32(return_data.size)] = _9148
                                require _9131 + (32 * _9148) + 32 <= return_data.size
                                mem[_9111 + ceil32(return_data.size) + 32 len 32 * _9148] = mem[_9111 + _9131 + 32 len 32 * _9148]
                                var201001 = _9111 + _9131 + (32 * _9148) + 32
                                var201005 = _9148
                                if _9148 < 1:
                                    revert with 0, 17
                                if _9148 - 1 >= _9148:
                                    revert with 0, 50
                                _10207 = mem[(32 * _9148 - 1) + _9111 + ceil32(return_data.size) + 32]
                                mem[mem[64] + 4] = owner
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10221 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10225 = mem[_10221]
                                _10228 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4673 - _3925
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                _10233 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                idx = 0
                                s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                t = mem[64] + 196
                                while idx < _10233:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_10228 + 100] = owner
                                mem[_10228 + 132] = block.timestamp
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _10228 + (32 * _10233) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = owner
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11249 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11253 = mem[_11249]
                                if mem[_11249] < _10225:
                                    revert with 0, 17
                                if _10207 < mem[_11249] - _10225:
                                    revert with 0, 17
                                if _10207 - mem[_11249] + _10225 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not _10207:
                                    revert with 0, 18
                                mem[mem[64]] = address(cd[36])
                                mem[mem[64] + 32] = (10^18 * _3911) - (10^18 * _4673) + (10^18 * _3925) / _3911
                                mem[mem[64] + 64] = bool(cd[228])
                                mem[mem[64] + 96] = (10^18 * _10207) - (10^18 * _11253) + (10^18 * _10225) / _10207
                                emit 0x30658b22: address(cd[36]), (10^18 * _3911) - (10^18 * _4673) + (10^18 * _3925) / _3911, bool(cd[228]), (10^18 * _10207) - (10^18 * _11253) + (10^18 * _10225) / _10207
                                if 0 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                    revert with 0, 50
                                if (10^18 * _3911) - (10^18 * _4673) + (10^18 * _3925) / _3911 > mem[ceil32(32 * ('cd', 132).length) + 161]:
                                    revert with 0, 'Tax larger than max taxes specified'
                                if 1 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                    revert with 0, 50
                                if (10^18 * _10207) - (10^18 * _11253) + (10^18 * _10225) / _10207 > mem[ceil32(32 * ('cd', 132).length) + 193]:
                                    revert with 0, 'Tax larger than max taxes specified'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if address(cd[164]):
                                    _11384 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _11395 = mem[_11384]
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = _11395
                                    require ext_code.size(stor1)
                                    call stor1.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), _11395
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11415 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11415] == bool(mem[_11415])
                                    if stor1 == address(cd[68]):
                                        _11504 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if not mem[_11504]:
                                            revert with 0, 50
                                        mem[_11504 + 32] = stor1
                                        if 1 >= mem[_11504]:
                                            revert with 0, 50
                                        mem[_11504 + 64] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_11504 + 100] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_11504 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _11504 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _11756 = mem[192]
                                                mem[_11504 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_11504 + ceil32(return_data.size) + 100] = _11756
                                                mem[_11504 + ceil32(return_data.size) + 132] = 1
                                                mem[_11504 + ceil32(return_data.size) + 164] = 160
                                                mem[_11504 + ceil32(return_data.size) + 260] = mem[_11504]
                                                idx = 0
                                                s = _11504 + 32
                                                t = _11504 + ceil32(return_data.size) + 292
                                                while idx < mem[_11504]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _11756, 1, 160, address(cd[164]), block.timestamp, mem[_11504 + ceil32(return_data.size) + 260 len (32 * mem[_11504]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _11610 = mem[160]
                                            mem[_11504 + 100] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_11504 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11504 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            mem[_11504 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_11504 + ceil32(return_data.size) + 100] = _11610
                                            mem[_11504 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                            mem[_11504 + ceil32(return_data.size) + 164] = 160
                                            mem[_11504 + ceil32(return_data.size) + 260] = mem[_11504]
                                            idx = 0
                                            s = _11504 + 32
                                            t = _11504 + ceil32(return_data.size) + 292
                                            while idx < mem[_11504]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_11504 + ceil32(return_data.size) + 196] = address(cd[164])
                                            mem[_11504 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _11610, ext_call.return_data[0], 160, address(cd[164]), block.timestamp, mem[_11504 + ceil32(return_data.size) + 260 len (32 * mem[_11504]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11504 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11504 + (2 * ceil32(return_data.size)) + 96
                                            require return_data.size >= 32
                                            require mem[_11504 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11610) >> 32 <= test266151307()
                                            require _11504 + ceil32(return_data.size) + return_data.size + 96 > _11504 + ceil32(return_data.size) + mem[_11504 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11610) >> 32 + 127
                                            if mem[_11504 + ceil32(return_data.size) + mem[_11504 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11610) >> 32 + 96] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_11504 + ceil32(return_data.size) + mem[_11504 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11610) >> 32 + 96]) + 1 < 0 or _11504 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_11504 + ceil32(return_data.size) + mem[_11504 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11610) >> 32 + 96]) + 97 > test266151307():
                                                revert with 0, 65
                                            require mem[_11504 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11610) >> 32 + (32 * mem[_11504 + ceil32(return_data.size) + mem[_11504 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11610) >> 32 + 96]) + 32 <= return_data.size
                                    else:
                                        _11502 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if not mem[_11502]:
                                            revert with 0, 50
                                        mem[_11502 + 32] = stor1
                                        if 1 >= mem[_11502]:
                                            revert with 0, 50
                                        mem[_11502 + 64] = address(cd[68])
                                        if 2 >= mem[_11502]:
                                            revert with 0, 50
                                        mem[_11502 + 96] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_11502 + 132] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_11502 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _11502 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _11779 = mem[192]
                                                mem[_11502 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_11502 + ceil32(return_data.size) + 132] = _11779
                                                mem[_11502 + ceil32(return_data.size) + 164] = 1
                                                mem[_11502 + ceil32(return_data.size) + 196] = 160
                                                mem[_11502 + ceil32(return_data.size) + 292] = mem[_11502]
                                                idx = 0
                                                s = _11502 + 32
                                                t = _11502 + ceil32(return_data.size) + 324
                                                while idx < mem[_11502]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _11779, 1, 160, address(cd[164]), block.timestamp, mem[_11502 + ceil32(return_data.size) + 292 len (32 * mem[_11502]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _11644 = mem[160]
                                            mem[_11502 + 132] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_11502 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11502 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            mem[_11502 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_11502 + ceil32(return_data.size) + 132] = _11644
                                            mem[_11502 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            mem[_11502 + ceil32(return_data.size) + 196] = 160
                                            mem[_11502 + ceil32(return_data.size) + 292] = mem[_11502]
                                            idx = 0
                                            s = _11502 + 32
                                            t = _11502 + ceil32(return_data.size) + 324
                                            while idx < mem[_11502]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_11502 + ceil32(return_data.size) + 228] = address(cd[164])
                                            mem[_11502 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _11644, ext_call.return_data[0], 160, address(cd[164]), block.timestamp, mem[_11502 + ceil32(return_data.size) + 292 len (32 * mem[_11502]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11502 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11502 + (2 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            require mem[_11502 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11644) >> 32 <= test266151307()
                                            require _11502 + ceil32(return_data.size) + return_data.size + 128 > _11502 + ceil32(return_data.size) + mem[_11502 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11644) >> 32 + 159
                                            if mem[_11502 + ceil32(return_data.size) + mem[_11502 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11644) >> 32 + 128] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_11502 + ceil32(return_data.size) + mem[_11502 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11644) >> 32 + 128]) + 1 < 0 or _11502 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_11502 + ceil32(return_data.size) + mem[_11502 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11644) >> 32 + 128]) + 129 > test266151307():
                                                revert with 0, 65
                                            require mem[_11502 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11644) >> 32 + (32 * mem[_11502 + ceil32(return_data.size) + mem[_11502 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11644) >> 32 + 128]) + 32 <= return_data.size
                                else:
                                    _11391 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _11402 = mem[_11391]
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = _11402
                                    require ext_code.size(stor1)
                                    call stor1.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), _11402
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11427 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11427] == bool(mem[_11427])
                                    if stor1 == address(cd[68]):
                                        _11529 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if not mem[_11529]:
                                            revert with 0, 50
                                        mem[_11529 + 32] = stor1
                                        if 1 >= mem[_11529]:
                                            revert with 0, 50
                                        mem[_11529 + 64] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_11529 + 100] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_11529 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _11529 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _11784 = mem[192]
                                                mem[_11529 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_11529 + ceil32(return_data.size) + 100] = _11784
                                                mem[_11529 + ceil32(return_data.size) + 132] = 1
                                                mem[_11529 + ceil32(return_data.size) + 164] = 160
                                                mem[_11529 + ceil32(return_data.size) + 260] = mem[_11529]
                                                idx = 0
                                                s = _11529 + 32
                                                t = _11529 + ceil32(return_data.size) + 292
                                                while idx < mem[_11529]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_11529 + ceil32(return_data.size) + 196] = owner
                                                mem[_11529 + ceil32(return_data.size) + 228] = block.timestamp
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _11529 + ceil32(return_data.size) + (32 * mem[_11529]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _11650 = mem[160]
                                            mem[_11529 + 100] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_11529 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11529 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            mem[_11529 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_11529 + ceil32(return_data.size) + 100] = _11650
                                            mem[_11529 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                            mem[_11529 + ceil32(return_data.size) + 164] = 160
                                            mem[_11529 + ceil32(return_data.size) + 260] = mem[_11529]
                                            idx = 0
                                            s = _11529 + 32
                                            t = _11529 + ceil32(return_data.size) + 292
                                            while idx < mem[_11529]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_11529 + ceil32(return_data.size) + 196] = owner
                                            mem[_11529 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _11529 + ceil32(return_data.size) + (32 * mem[_11529]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12287 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_12287] <= test266151307()
                                            require _12287 + return_data.size > _12287 + mem[_12287] + 31
                                            if mem[_12287 + mem[_12287]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_12287 + mem[_12287]]) + 1 < 0 or _12287 + ceil32(return_data.size) + ceil32(32 * mem[_12287 + mem[_12287]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require mem[_12287] + (32 * mem[_12287 + mem[_12287]]) + 32 <= return_data.size
                                    else:
                                        _11527 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if not mem[_11527]:
                                            revert with 0, 50
                                        mem[_11527 + 32] = stor1
                                        if 1 >= mem[_11527]:
                                            revert with 0, 50
                                        mem[_11527 + 64] = address(cd[68])
                                        if 2 >= mem[_11527]:
                                            revert with 0, 50
                                        mem[_11527 + 96] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_11527 + 132] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_11527 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _11527 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _11799 = mem[192]
                                                mem[_11527 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_11527 + ceil32(return_data.size) + 132] = _11799
                                                mem[_11527 + ceil32(return_data.size) + 164] = 1
                                                mem[_11527 + ceil32(return_data.size) + 196] = 160
                                                mem[_11527 + ceil32(return_data.size) + 292] = mem[_11527]
                                                idx = 0
                                                s = _11527 + 32
                                                t = _11527 + ceil32(return_data.size) + 324
                                                while idx < mem[_11527]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _11799, 1, 160, owner, block.timestamp, mem[_11527 + ceil32(return_data.size) + 292 len (32 * mem[_11527]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _11675 = mem[160]
                                            mem[_11527 + 132] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_11527 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11527 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            mem[_11527 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_11527 + ceil32(return_data.size) + 132] = _11675
                                            mem[_11527 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            mem[_11527 + ceil32(return_data.size) + 196] = 160
                                            mem[_11527 + ceil32(return_data.size) + 292] = mem[_11527]
                                            idx = 0
                                            s = _11527 + 32
                                            t = _11527 + ceil32(return_data.size) + 324
                                            while idx < mem[_11527]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_11527 + ceil32(return_data.size) + 228] = owner
                                            mem[_11527 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _11675, ext_call.return_data[0], 160, owner, block.timestamp, mem[_11527 + ceil32(return_data.size) + 292 len (32 * mem[_11527]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11527 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11527 + (2 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            require mem[_11527 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11675) >> 32 <= test266151307()
                                            require _11527 + ceil32(return_data.size) + return_data.size + 128 > _11527 + ceil32(return_data.size) + mem[_11527 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11675) >> 32 + 159
                                            if mem[_11527 + ceil32(return_data.size) + mem[_11527 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11675) >> 32 + 128] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_11527 + ceil32(return_data.size) + mem[_11527 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11675) >> 32 + 128]) + 1 < 0 or _11527 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_11527 + ceil32(return_data.size) + mem[_11527 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11675) >> 32 + 128]) + 129 > test266151307():
                                                revert with 0, 65
                                            require mem[_11527 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11675) >> 32 + (32 * mem[_11527 + ceil32(return_data.size) + mem[_11527 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11675) >> 32 + 128]) + 32 <= return_data.size
                        else:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131] = 3
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = stor1
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 195] = address(cd[68])
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 227] = address(cd[36])
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 263] = cd[260]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 295] = 64
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 327] = 3
                            idx = 0
                            s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                            t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 359
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[260], Array(len=3, data=mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 359 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259
                            require return_data.size >= 32
                            _3128 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, cd[260]) >> 32
                            require mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, cd[260]) >> 32 <= test266151307()
                            require ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + return_data.size + 259 > ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, cd[260]) >> 32 + 290
                            _3138 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, cd[260]) >> 32 + 259]
                            if mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, cd[260]) >> 32 + 259] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, cd[260]) >> 32 + 259]) + 1 < 0 or ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, cd[260]) >> 32 + 259]) + 260 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 259 len 4], Mask(224, 32, cd[260]) >> 32 + 259]) + 260
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 259] = _3138
                            require _3128 + (32 * _3138) + 32 <= return_data.size
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291 len 32 * _3138] = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + _3128 + 291 len 32 * _3138]
                            if _3138 < 1:
                                revert with 0, 17
                            if _3138 - 1 >= _3138:
                                revert with 0, 50
                            _3908 = mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3918 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3924 = mem[_3918]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[260]
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 3
                            idx = 0
                            s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                            t = mem[64] + 196
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[260], 1, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4672 = mem[_4666]
                            if mem[_4666] < _3924:
                                revert with 0, 17
                            if mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291] < mem[_4666] - _3924:
                                revert with 0, 17
                            if mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291] - mem[_4666] + _3924 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]:
                                revert with 0, 18
                            if uint8(var186002) < var186001:
                                if uint8(var190001) < uint8(var190002):
                                    revert with 0, 17
                                if uint8(var196001) < 1:
                                    revert with 0, 17
                                if uint8(var200003) < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                    _15108 = mem[(32 * uint8(var200003)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                    s = uint8(var200003)
                                    idx = var200001
                                    t = var200003
                                    while uint8(idx) < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                        if uint8(t) >= mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                            revert with 0, 50
                                        mem[(32 * uint8(t)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = mem[(32 * uint8(idx)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 175 len 20]
                                        if uint8(idx) >= mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                            revert with 0, 50
                                        mem[(32 * uint8(idx)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163] = address(_15108)
                                        if uint8(t) == 255:
                                            revert with 0, 17
                                        if uint8(uint8(t) + 1) < mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131] / 2:
                                            if mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 162 len 1] < uint8(uint8(t) + 1):
                                                revert with 0, 17
                                            if uint8(mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 162 len 1] - uint8(uint8(t) + 1)) < 1:
                                                revert with 0, 17
                                            if uint8(uint8(t) + 1) >= mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]:
                                                revert with 0, 50
                                            _15108 = mem[(32 * uint8(uint8(uint8(t) + 1) + 1)) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                            s = uint8(uint8(t) + 1)
                                            idx = uint8(mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 162 len 1] - uint8(uint8(t) + 1)) - 1
                                            t = uint8(t) + 1
                                            continue 
                                        if cd[228]:
                                            mem[mem[64] + 4] = address(cd[4])
                                            mem[mem[64] + 36] = _4672 - _3924
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), _4672 - _3924
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _15145 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_15145] == bool(mem[_15145])
                                            _15166 = mem[64]
                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4672 - _3924
                                            mem[mem[64] + 36] = 64
                                            _15175 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                            mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                            idx = 0
                                            t = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                            u = mem[64] + 100
                                            while idx < _15175:
                                                mem[u] = mem[t + 12 len 20]
                                                _15108 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                idx = idx + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            require ext_code.size(address(cd[4]))
                                            staticcall address(cd[4]).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _15166 + (32 * _15175) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _15800 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_15800] <= test266151307()
                                            require _15800 + return_data.size > _15800 + mem[_15800] + 31
                                            if mem[_15800 + mem[_15800]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_15800 + mem[_15800]]) + 1 < 0 or _15800 + ceil32(return_data.size) + ceil32(32 * mem[_15800 + mem[_15800]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require mem[_15800] + (32 * mem[_15800 + mem[_15800]]) + 32 <= return_data.size
                                            # nil
                                        else:
                                            mem[mem[64]] = address(cd[36])
                                            mem[mem[64] + 32] = (10^18 * mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]) - (10^18 * _4672) + (10^18 * _3924) / mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]
                                            mem[mem[64] + 64] = bool(cd[228])
                                            mem[mem[64] + 96] = 0
                                            emit 0x30658b22: address(cd[36]), (10^18 * mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]) - (10^18 * _4672) + (10^18 * _3924) / mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291], bool(cd[228]), 0
                                            if 0 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                                revert with 0, 50
                                            if (10^18 * mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]) - (10^18 * _4672) + (10^18 * _3924) / mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291] > mem[ceil32(32 * ('cd', 132).length) + 161]:
                                                revert with 0, 'Tax larger than max taxes specified'
                                            if 1 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                                revert with 0, 50
                                            if 0 > mem[ceil32(32 * ('cd', 132).length) + 193]:
                                                revert with 0, 'Tax larger than max taxes specified'
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not address(cd[164]):
                                                _15178 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _15190 = mem[_15178]
                                                mem[mem[64] + 4] = address(cd[4])
                                                mem[mem[64] + 36] = _15190
                                                require ext_code.size(stor1)
                                                call stor1.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), _15190
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _15206 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_15206] == bool(mem[_15206])
                                                if stor1 == address(cd[68]):
                                                    _15230 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    if not mem[_15230]:
                                                        revert with 0, 50
                                                    mem[_15230 + 32] = stor1
                                                    if 1 >= mem[_15230]:
                                                        revert with 0, 50
                                                    mem[_15230 + 64] = address(cd[36])
                                                    if uint8(cd[100]):
                                                        if 1 == uint8(cd[100]):
                                                            mem[_15230 + 100] = this.address
                                                            require ext_code.size(address(cd[36]))
                                                            staticcall address(cd[36]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[_15230 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _15230 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            if 1 >= ('cd', 132).length:
                                                                revert with 0, 50
                                                            _15355 = mem[192]
                                                            mem[_15230 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                            mem[_15230 + ceil32(return_data.size) + 100] = _15355
                                                            mem[_15230 + ceil32(return_data.size) + 132] = 1
                                                            mem[_15230 + ceil32(return_data.size) + 164] = 160
                                                            mem[_15230 + ceil32(return_data.size) + 260] = mem[_15230]
                                                            idx = 0
                                                            t = _15230 + 32
                                                            u = _15230 + ceil32(return_data.size) + 292
                                                            while idx < mem[_15230]:
                                                                mem[u] = mem[t + 12 len 20]
                                                                _15108 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                                idx = idx + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            require ext_code.size(address(cd[4]))
                                                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args _15355, 1, 160, owner, block.timestamp, mem[_15230 + ceil32(return_data.size) + 260 len (32 * mem[_15230]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    if 0 >= ('cd', 132).length:
                                                        revert with 0, 50
                                                    _15272 = mem[160]
                                                    mem[_15230 + 100] = this.address
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_15230 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15230 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    mem[_15230 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                                    mem[_15230 + ceil32(return_data.size) + 100] = _15272
                                                    mem[_15230 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                                    mem[_15230 + ceil32(return_data.size) + 164] = 160
                                                    mem[_15230 + ceil32(return_data.size) + 260] = mem[_15230]
                                                    idx = 0
                                                    t = _15230 + 32
                                                    u = _15230 + ceil32(return_data.size) + 292
                                                    while idx < mem[_15230]:
                                                        mem[u] = mem[t + 12 len 20]
                                                        _15108 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                        idx = idx + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    mem[_15230 + ceil32(return_data.size) + 196] = owner
                                                    mem[_15230 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(address(cd[4]))
                                                    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args _15272, ext_call.return_data[0], 160, owner, block.timestamp, mem[_15230 + ceil32(return_data.size) + 260 len (32 * mem[_15230]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_15230 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15230 + (2 * ceil32(return_data.size)) + 96
                                                    require return_data.size >= 32
                                                    require mem[_15230 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15272) >> 32 <= test266151307()
                                                    require _15230 + ceil32(return_data.size) + return_data.size + 96 > _15230 + ceil32(return_data.size) + mem[_15230 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15272) >> 32 + 127
                                                    if mem[_15230 + ceil32(return_data.size) + mem[_15230 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15272) >> 32 + 96] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_15230 + ceil32(return_data.size) + mem[_15230 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15272) >> 32 + 96]) + 1 < 0 or _15230 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_15230 + ceil32(return_data.size) + mem[_15230 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15272) >> 32 + 96]) + 97 > test266151307():
                                                        revert with 0, 65
                                                    require mem[_15230 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15272) >> 32 + (32 * mem[_15230 + ceil32(return_data.size) + mem[_15230 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15272) >> 32 + 96]) + 32 <= return_data.size
                                                    # nil
                                                else:
                                                    _15228 = mem[64]
                                                    mem[mem[64]] = 3
                                                    mem[64] = mem[64] + 128
                                                    if not mem[_15228]:
                                                        revert with 0, 50
                                                    mem[_15228 + 32] = stor1
                                                    if 1 >= mem[_15228]:
                                                        revert with 0, 50
                                                    mem[_15228 + 64] = address(cd[68])
                                                    if 2 >= mem[_15228]:
                                                        revert with 0, 50
                                                    mem[_15228 + 96] = address(cd[36])
                                                    if uint8(cd[100]):
                                                        if 1 == uint8(cd[100]):
                                                            mem[_15228 + 132] = this.address
                                                            require ext_code.size(address(cd[36]))
                                                            staticcall address(cd[36]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[_15228 + 128] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _15228 + ceil32(return_data.size) + 128
                                                            require return_data.size >= 32
                                                            if 1 >= ('cd', 132).length:
                                                                revert with 0, 50
                                                            _15368 = mem[192]
                                                            mem[_15228 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                            mem[_15228 + ceil32(return_data.size) + 132] = _15368
                                                            mem[_15228 + ceil32(return_data.size) + 164] = 1
                                                            mem[_15228 + ceil32(return_data.size) + 196] = 160
                                                            mem[_15228 + ceil32(return_data.size) + 292] = mem[_15228]
                                                            idx = 0
                                                            t = _15228 + 32
                                                            u = _15228 + ceil32(return_data.size) + 324
                                                            while idx < mem[_15228]:
                                                                mem[u] = mem[t + 12 len 20]
                                                                _15108 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                                idx = idx + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            require ext_code.size(address(cd[4]))
                                                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args _15368, 1, 160, owner, block.timestamp, mem[_15228 + ceil32(return_data.size) + 292 len (32 * mem[_15228]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    if 0 >= ('cd', 132).length:
                                                        revert with 0, 50
                                                    _15290 = mem[160]
                                                    mem[_15228 + 132] = this.address
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_15228 + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15228 + ceil32(return_data.size) + 128
                                                    require return_data.size >= 32
                                                    mem[_15228 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                                    mem[_15228 + ceil32(return_data.size) + 132] = _15290
                                                    mem[_15228 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                    mem[_15228 + ceil32(return_data.size) + 196] = 160
                                                    mem[_15228 + ceil32(return_data.size) + 292] = mem[_15228]
                                                    idx = 0
                                                    t = _15228 + 32
                                                    u = _15228 + ceil32(return_data.size) + 324
                                                    while idx < mem[_15228]:
                                                        mem[u] = mem[t + 12 len 20]
                                                        _15108 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                        idx = idx + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    mem[_15228 + ceil32(return_data.size) + 228] = owner
                                                    mem[_15228 + ceil32(return_data.size) + 260] = block.timestamp
                                                    require ext_code.size(address(cd[4]))
                                                    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args _15290, ext_call.return_data[0], 160, owner, block.timestamp, mem[_15228 + ceil32(return_data.size) + 292 len (32 * mem[_15228]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_15228 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15228 + (2 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    require mem[_15228 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15290) >> 32 <= test266151307()
                                                    require _15228 + ceil32(return_data.size) + return_data.size + 128 > _15228 + ceil32(return_data.size) + mem[_15228 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15290) >> 32 + 159
                                                    if mem[_15228 + ceil32(return_data.size) + mem[_15228 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15290) >> 32 + 128] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_15228 + ceil32(return_data.size) + mem[_15228 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15290) >> 32 + 128]) + 1 < 0 or _15228 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_15228 + ceil32(return_data.size) + mem[_15228 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15290) >> 32 + 128]) + 129 > test266151307():
                                                        revert with 0, 65
                                                    require mem[_15228 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15290) >> 32 + (32 * mem[_15228 + ceil32(return_data.size) + mem[_15228 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _15290) >> 32 + 128]) + 32 <= return_data.size
                                                    # nil
                                            else:
                                                _15174 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _15180 = mem[_15174]
                                                mem[mem[64] + 4] = address(cd[4])
                                                mem[mem[64] + 36] = _15180
                                                require ext_code.size(stor1)
                                                call stor1.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), _15180
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _15204 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_15204] == bool(mem[_15204])
                                                if stor1 == address(cd[68]):
                                                    _15220 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    if not mem[_15220]:
                                                        revert with 0, 50
                                                    mem[_15220 + 32] = stor1
                                                    if 1 >= mem[_15220]:
                                                        revert with 0, 50
                                                    mem[_15220 + 64] = address(cd[36])
                                                    if uint8(cd[100]):
                                                        if 1 == uint8(cd[100]):
                                                            mem[_15220 + 100] = this.address
                                                            require ext_code.size(address(cd[36]))
                                                            staticcall address(cd[36]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[_15220 + 96] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _15220 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            if 1 >= ('cd', 132).length:
                                                                revert with 0, 50
                                                            _15334 = mem[192]
                                                            mem[_15220 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                            mem[_15220 + ceil32(return_data.size) + 100] = _15334
                                                            mem[_15220 + ceil32(return_data.size) + 132] = 1
                                                            mem[_15220 + ceil32(return_data.size) + 164] = 160
                                                            mem[_15220 + ceil32(return_data.size) + 260] = mem[_15220]
                                                            idx = 0
                                                            t = _15220 + 32
                                                            u = _15220 + ceil32(return_data.size) + 292
                                                            while idx < mem[_15220]:
                                                                mem[u] = mem[t + 12 len 20]
                                                                _15108 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                                idx = idx + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            require ext_code.size(address(cd[4]))
                                                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args _15334, 1, 160, address(cd[164]), block.timestamp, mem[_15220 + ceil32(return_data.size) + 260 len (32 * mem[_15220]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    if 0 >= ('cd', 132).length:
                                                        revert with 0, 50
                                                    _15253 = mem[160]
                                                    mem[_15220 + 100] = this.address
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_15220 + 96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15220 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    mem[_15220 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                                    mem[_15220 + ceil32(return_data.size) + 100] = _15253
                                                    mem[_15220 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                                    mem[_15220 + ceil32(return_data.size) + 164] = 160
                                                    mem[_15220 + ceil32(return_data.size) + 260] = mem[_15220]
                                                    idx = 0
                                                    t = _15220 + 32
                                                    u = _15220 + ceil32(return_data.size) + 292
                                                    while idx < mem[_15220]:
                                                        mem[u] = mem[t + 12 len 20]
                                                        _15108 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                        idx = idx + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    mem[_15220 + ceil32(return_data.size) + 196] = address(cd[164])
                                                    mem[_15220 + ceil32(return_data.size) + 228] = block.timestamp
                                                    require ext_code.size(address(cd[4]))
                                                    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args _15253, ext_call.return_data[0], 160, address(cd[164]), block.timestamp, mem[_15220 + ceil32(return_data.size) + 260 len (32 * mem[_15220]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_15220 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15220 + (2 * ceil32(return_data.size)) + 96
                                                    require return_data.size >= 32
                                                    require mem[_15220 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15253) >> 32 <= test266151307()
                                                    require _15220 + ceil32(return_data.size) + return_data.size + 96 > _15220 + ceil32(return_data.size) + mem[_15220 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15253) >> 32 + 127
                                                    if mem[_15220 + ceil32(return_data.size) + mem[_15220 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15253) >> 32 + 96] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_15220 + ceil32(return_data.size) + mem[_15220 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15253) >> 32 + 96]) + 1 < 0 or _15220 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_15220 + ceil32(return_data.size) + mem[_15220 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15253) >> 32 + 96]) + 97 > test266151307():
                                                        revert with 0, 65
                                                    require mem[_15220 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15253) >> 32 + (32 * mem[_15220 + ceil32(return_data.size) + mem[_15220 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _15253) >> 32 + 96]) + 32 <= return_data.size
                                                    # nil
                                                else:
                                                    _15218 = mem[64]
                                                    mem[mem[64]] = 3
                                                    mem[64] = mem[64] + 128
                                                    if not mem[_15218]:
                                                        revert with 0, 50
                                                    mem[_15218 + 32] = stor1
                                                    if 1 >= mem[_15218]:
                                                        revert with 0, 50
                                                    mem[_15218 + 64] = address(cd[68])
                                                    if 2 >= mem[_15218]:
                                                        revert with 0, 50
                                                    mem[_15218 + 96] = address(cd[36])
                                                    if uint8(cd[100]):
                                                        if 1 == uint8(cd[100]):
                                                            mem[_15218 + 132] = this.address
                                                            require ext_code.size(address(cd[36]))
                                                            staticcall address(cd[36]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            mem[_15218 + 128] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _15218 + ceil32(return_data.size) + 128
                                                            require return_data.size >= 32
                                                            if 1 >= ('cd', 132).length:
                                                                revert with 0, 50
                                                            _15350 = mem[192]
                                                            mem[_15218 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                            mem[_15218 + ceil32(return_data.size) + 132] = _15350
                                                            mem[_15218 + ceil32(return_data.size) + 164] = 1
                                                            mem[_15218 + ceil32(return_data.size) + 196] = 160
                                                            mem[_15218 + ceil32(return_data.size) + 292] = mem[_15218]
                                                            idx = 0
                                                            t = _15218 + 32
                                                            u = _15218 + ceil32(return_data.size) + 324
                                                            while idx < mem[_15218]:
                                                                mem[u] = mem[t + 12 len 20]
                                                                _15108 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                                idx = idx + 1
                                                                t = t + 32
                                                                u = u + 32
                                                                continue 
                                                            mem[_15218 + ceil32(return_data.size) + 228] = address(cd[164])
                                                            mem[_15218 + ceil32(return_data.size) + 260] = block.timestamp
                                                            require ext_code.size(address(cd[4]))
                                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _15218 + ceil32(return_data.size) + (32 * mem[_15218]) + -mem[64] + 320]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    if 0 >= ('cd', 132).length:
                                                        revert with 0, 50
                                                    _15266 = mem[160]
                                                    mem[_15218 + 132] = this.address
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_15218 + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _15218 + ceil32(return_data.size) + 128
                                                    require return_data.size >= 32
                                                    mem[_15218 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                                    mem[_15218 + ceil32(return_data.size) + 132] = _15266
                                                    mem[_15218 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                    mem[_15218 + ceil32(return_data.size) + 196] = 160
                                                    mem[_15218 + ceil32(return_data.size) + 292] = mem[_15218]
                                                    idx = 0
                                                    t = _15218 + 32
                                                    u = _15218 + ceil32(return_data.size) + 324
                                                    while idx < mem[_15218]:
                                                        mem[u] = mem[t + 12 len 20]
                                                        _15108 = mem[(32 * s) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163]
                                                        idx = idx + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    mem[_15218 + ceil32(return_data.size) + 228] = address(cd[164])
                                                    mem[_15218 + ceil32(return_data.size) + 260] = block.timestamp
                                                    require ext_code.size(address(cd[4]))
                                                    call address(cd[4]).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _15218 + ceil32(return_data.size) + (32 * mem[_15218]) + -mem[64] + 320]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _15796 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_15796] <= test266151307()
                                                    require _15796 + return_data.size > _15796 + mem[_15796] + 31
                                                    if mem[_15796 + mem[_15796]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_15796 + mem[_15796]]) + 1 < 0 or _15796 + ceil32(return_data.size) + ceil32(32 * mem[_15796 + mem[_15796]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    require mem[_15796] + (32 * mem[_15796 + mem[_15796]]) + 32 <= return_data.size
                                                    # nil
                                revert with 0, 50
                            if not cd[228]:
                                mem[mem[64]] = address(cd[36])
                                mem[mem[64] + 32] = (10^18 * mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]) - (10^18 * _4672) + (10^18 * _3924) / mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]
                                mem[mem[64] + 64] = bool(cd[228])
                                mem[mem[64] + 96] = 0
                                emit 0x30658b22: address(cd[36]), (10^18 * mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]) - (10^18 * _4672) + (10^18 * _3924) / mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291], bool(cd[228]), 0
                                if 0 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                    revert with 0, 50
                                if (10^18 * mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291]) - (10^18 * _4672) + (10^18 * _3924) / mem[(32 * _3138 - 1) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (4 * ceil32(return_data.size)) + 291] > mem[ceil32(32 * ('cd', 132).length) + 161]:
                                    revert with 0, 'Tax larger than max taxes specified'
                                if 1 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                    revert with 0, 50
                                if 0 > mem[ceil32(32 * ('cd', 132).length) + 193]:
                                    revert with 0, 'Tax larger than max taxes specified'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if address(cd[164]):
                                    _7778 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7786 = mem[_7778]
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = _7786
                                    require ext_code.size(stor1)
                                    call stor1.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), _7786
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7806 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7806] == bool(mem[_7806])
                                    if stor1 == address(cd[68]):
                                        _7854 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if not mem[_7854]:
                                            revert with 0, 50
                                        mem[_7854 + 32] = stor1
                                        if 1 >= mem[_7854]:
                                            revert with 0, 50
                                        mem[_7854 + 64] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_7854 + 100] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_7854 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _7854 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                if 1 >= ('cd', 132).length:
                                                    revert with 0, 50
                                                _8030 = mem[192]
                                                mem[_7854 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_7854 + ceil32(return_data.size) + 100] = _8030
                                                mem[_7854 + ceil32(return_data.size) + 132] = 1
                                                mem[_7854 + ceil32(return_data.size) + 164] = 160
                                                mem[_7854 + ceil32(return_data.size) + 260] = mem[_7854]
                                                idx = 0
                                                s = _7854 + 32
                                                t = _7854 + ceil32(return_data.size) + 292
                                                while idx < mem[_7854]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _8030, 1, 160, address(cd[164]), block.timestamp, mem[_7854 + ceil32(return_data.size) + 260 len (32 * mem[_7854]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= ('cd', 132).length:
                                                revert with 0, 50
                                            _7917 = mem[160]
                                            mem[_7854 + 100] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_7854 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7854 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            mem[_7854 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_7854 + ceil32(return_data.size) + 100] = _7917
                                            mem[_7854 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                            mem[_7854 + ceil32(return_data.size) + 164] = 160
                                            mem[_7854 + ceil32(return_data.size) + 260] = mem[_7854]
                                            idx = 0
                                            s = _7854 + 32
                                            t = _7854 + ceil32(return_data.size) + 292
                                            while idx < mem[_7854]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_7854 + ceil32(return_data.size) + 196] = address(cd[164])
                                            mem[_7854 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _7917, ext_call.return_data[0], 160, address(cd[164]), block.timestamp, mem[_7854 + ceil32(return_data.size) + 260 len (32 * mem[_7854]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_7854 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7854 + (2 * ceil32(return_data.size)) + 96
                                            require return_data.size >= 32
                                            require mem[_7854 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7917) >> 32 <= test266151307()
                                            require _7854 + ceil32(return_data.size) + return_data.size + 96 > _7854 + ceil32(return_data.size) + mem[_7854 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7917) >> 32 + 127
                                            if mem[_7854 + ceil32(return_data.size) + mem[_7854 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7917) >> 32 + 96] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7854 + ceil32(return_data.size) + mem[_7854 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7917) >> 32 + 96]) + 1 < 0 or _7854 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_7854 + ceil32(return_data.size) + mem[_7854 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7917) >> 32 + 96]) + 97 > test266151307():
                                                revert with 0, 65
                                            require mem[_7854 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7917) >> 32 + (32 * mem[_7854 + ceil32(return_data.size) + mem[_7854 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7917) >> 32 + 96]) + 32 <= return_data.size
                                    else:
                                        _7852 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if not mem[_7852]:
                                            revert with 0, 50
                                        mem[_7852 + 32] = stor1
                                        if 1 >= mem[_7852]:
                                            revert with 0, 50
                                        mem[_7852 + 64] = address(cd[68])
                                        if 2 >= mem[_7852]:
                                            revert with 0, 50
                                        mem[_7852 + 96] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_7852 + 132] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_7852 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _7852 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                if 1 >= ('cd', 132).length:
                                                    revert with 0, 50
                                                _8050 = mem[192]
                                                mem[_7852 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_7852 + ceil32(return_data.size) + 132] = _8050
                                                mem[_7852 + ceil32(return_data.size) + 164] = 1
                                                mem[_7852 + ceil32(return_data.size) + 196] = 160
                                                mem[_7852 + ceil32(return_data.size) + 292] = mem[_7852]
                                                idx = 0
                                                s = _7852 + 32
                                                t = _7852 + ceil32(return_data.size) + 324
                                                while idx < mem[_7852]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _8050, 1, 160, address(cd[164]), block.timestamp, mem[_7852 + ceil32(return_data.size) + 292 len (32 * mem[_7852]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= ('cd', 132).length:
                                                revert with 0, 50
                                            _7936 = mem[160]
                                            mem[_7852 + 132] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_7852 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7852 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            mem[_7852 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_7852 + ceil32(return_data.size) + 132] = _7936
                                            mem[_7852 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            mem[_7852 + ceil32(return_data.size) + 196] = 160
                                            mem[_7852 + ceil32(return_data.size) + 292] = mem[_7852]
                                            idx = 0
                                            s = _7852 + 32
                                            t = _7852 + ceil32(return_data.size) + 324
                                            while idx < mem[_7852]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_7852 + ceil32(return_data.size) + 228] = address(cd[164])
                                            mem[_7852 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _7936, ext_call.return_data[0], 160, address(cd[164]), block.timestamp, mem[_7852 + ceil32(return_data.size) + 292 len (32 * mem[_7852]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_7852 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7852 + (2 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            require mem[_7852 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7936) >> 32 <= test266151307()
                                            require _7852 + ceil32(return_data.size) + return_data.size + 128 > _7852 + ceil32(return_data.size) + mem[_7852 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7936) >> 32 + 159
                                            if mem[_7852 + ceil32(return_data.size) + mem[_7852 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7936) >> 32 + 128] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7852 + ceil32(return_data.size) + mem[_7852 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7936) >> 32 + 128]) + 1 < 0 or _7852 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_7852 + ceil32(return_data.size) + mem[_7852 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7936) >> 32 + 128]) + 129 > test266151307():
                                                revert with 0, 65
                                            require mem[_7852 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7936) >> 32 + (32 * mem[_7852 + ceil32(return_data.size) + mem[_7852 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _7936) >> 32 + 128]) + 32 <= return_data.size
                                else:
                                    _7784 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7792 = mem[_7784]
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = _7792
                                    require ext_code.size(stor1)
                                    call stor1.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), _7792
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7816 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7816] == bool(mem[_7816])
                                    if stor1 == address(cd[68]):
                                        _7874 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if not mem[_7874]:
                                            revert with 0, 50
                                        mem[_7874 + 32] = stor1
                                        if 1 >= mem[_7874]:
                                            revert with 0, 50
                                        mem[_7874 + 64] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_7874 + 100] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_7874 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _7874 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                if 1 >= ('cd', 132).length:
                                                    revert with 0, 50
                                                _8055 = mem[192]
                                                mem[_7874 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_7874 + ceil32(return_data.size) + 100] = _8055
                                                mem[_7874 + ceil32(return_data.size) + 132] = 1
                                                mem[_7874 + ceil32(return_data.size) + 164] = 160
                                                mem[_7874 + ceil32(return_data.size) + 260] = mem[_7874]
                                                idx = 0
                                                s = _7874 + 32
                                                t = _7874 + ceil32(return_data.size) + 292
                                                while idx < mem[_7874]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _8055, 1, 160, owner, block.timestamp, mem[_7874 + ceil32(return_data.size) + 260 len (32 * mem[_7874]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= ('cd', 132).length:
                                                revert with 0, 50
                                            _7942 = mem[160]
                                            mem[_7874 + 100] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_7874 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7874 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            mem[_7874 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_7874 + ceil32(return_data.size) + 100] = _7942
                                            mem[_7874 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                            mem[_7874 + ceil32(return_data.size) + 164] = 160
                                            mem[_7874 + ceil32(return_data.size) + 260] = mem[_7874]
                                            idx = 0
                                            s = _7874 + 32
                                            t = _7874 + ceil32(return_data.size) + 292
                                            while idx < mem[_7874]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_7874 + ceil32(return_data.size) + 196] = owner
                                            mem[_7874 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _7942, ext_call.return_data[0], 160, owner, block.timestamp, mem[_7874 + ceil32(return_data.size) + 260 len (32 * mem[_7874]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_7874 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7874 + (2 * ceil32(return_data.size)) + 96
                                            require return_data.size >= 32
                                            require mem[_7874 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7942) >> 32 <= test266151307()
                                            require _7874 + ceil32(return_data.size) + return_data.size + 96 > _7874 + ceil32(return_data.size) + mem[_7874 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7942) >> 32 + 127
                                            if mem[_7874 + ceil32(return_data.size) + mem[_7874 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7942) >> 32 + 96] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7874 + ceil32(return_data.size) + mem[_7874 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7942) >> 32 + 96]) + 1 < 0 or _7874 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_7874 + ceil32(return_data.size) + mem[_7874 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7942) >> 32 + 96]) + 97 > test266151307():
                                                revert with 0, 65
                                            require mem[_7874 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7942) >> 32 + (32 * mem[_7874 + ceil32(return_data.size) + mem[_7874 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7942) >> 32 + 96]) + 32 <= return_data.size
                                    else:
                                        _7872 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if not mem[_7872]:
                                            revert with 0, 50
                                        mem[_7872 + 32] = stor1
                                        if 1 >= mem[_7872]:
                                            revert with 0, 50
                                        mem[_7872 + 64] = address(cd[68])
                                        if 2 >= mem[_7872]:
                                            revert with 0, 50
                                        mem[_7872 + 96] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_7872 + 132] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_7872 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _7872 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                if 1 >= ('cd', 132).length:
                                                    revert with 0, 50
                                                _8072 = mem[192]
                                                mem[_7872 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_7872 + ceil32(return_data.size) + 132] = _8072
                                                mem[_7872 + ceil32(return_data.size) + 164] = 1
                                                mem[_7872 + ceil32(return_data.size) + 196] = 160
                                                mem[_7872 + ceil32(return_data.size) + 292] = mem[_7872]
                                                idx = 0
                                                s = _7872 + 32
                                                t = _7872 + ceil32(return_data.size) + 324
                                                while idx < mem[_7872]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_7872 + ceil32(return_data.size) + 228] = owner
                                                mem[_7872 + ceil32(return_data.size) + 260] = block.timestamp
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _7872 + ceil32(return_data.size) + (32 * mem[_7872]) + -mem[64] + 320]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= ('cd', 132).length:
                                                revert with 0, 50
                                            _7964 = mem[160]
                                            mem[_7872 + 132] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_7872 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _7872 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            mem[_7872 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_7872 + ceil32(return_data.size) + 132] = _7964
                                            mem[_7872 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            mem[_7872 + ceil32(return_data.size) + 196] = 160
                                            mem[_7872 + ceil32(return_data.size) + 292] = mem[_7872]
                                            idx = 0
                                            s = _7872 + 32
                                            t = _7872 + ceil32(return_data.size) + 324
                                            while idx < mem[_7872]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_7872 + ceil32(return_data.size) + 228] = owner
                                            mem[_7872 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _7872 + ceil32(return_data.size) + (32 * mem[_7872]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9104 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9104] <= test266151307()
                                            require _9104 + return_data.size > _9104 + mem[_9104] + 31
                                            if mem[_9104 + mem[_9104]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_9104 + mem[_9104]]) + 1 < 0 or _9104 + ceil32(return_data.size) + ceil32(32 * mem[_9104 + mem[_9104]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require mem[_9104] + (32 * mem[_9104 + mem[_9104]]) + 32 <= return_data.size
                            else:
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = _4672 - _3924
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), _4672 - _3924
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7719 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7719] == bool(mem[_7719])
                                _7766 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4672 - _3924
                                mem[mem[64] + 36] = 64
                                _7779 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                idx = 0
                                s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                t = mem[64] + 100
                                while idx < _7779:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(cd[4]))
                                staticcall address(cd[4]).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _7766 + (32 * _7779) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9106 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9124 = mem[_9106]
                                require mem[_9106] <= test266151307()
                                require _9106 + return_data.size > _9106 + mem[_9106] + 31
                                _9142 = mem[_9106 + mem[_9106]]
                                if mem[_9106 + mem[_9106]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_9106 + mem[_9106]]) + 1 < 0 or _9106 + ceil32(return_data.size) + ceil32(32 * mem[_9106 + mem[_9106]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _9106 + ceil32(return_data.size) + ceil32(32 * mem[_9106 + mem[_9106]]) + 1
                                mem[_9106 + ceil32(return_data.size)] = _9142
                                require _9124 + (32 * _9142) + 32 <= return_data.size
                                mem[_9106 + ceil32(return_data.size) + 32 len 32 * _9142] = mem[_9106 + _9124 + 32 len 32 * _9142]
                                var202001 = _9106 + _9124 + (32 * _9142) + 32
                                var202005 = _9142
                                if _9142 < 1:
                                    revert with 0, 17
                                if _9142 - 1 >= _9142:
                                    revert with 0, 50
                                _10204 = mem[(32 * _9142 - 1) + _9106 + ceil32(return_data.size) + 32]
                                mem[mem[64] + 4] = owner
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10220 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10224 = mem[_10220]
                                _10226 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4672 - _3924
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                _10232 = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 131]
                                idx = 0
                                s = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + (2 * ceil32(return_data.size)) + 163
                                t = mem[64] + 196
                                while idx < _10232:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_10226 + 100] = owner
                                mem[_10226 + 132] = block.timestamp
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _10226 + (32 * _10232) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = owner
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args owner
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11248 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11252 = mem[_11248]
                                if mem[_11248] < _10224:
                                    revert with 0, 17
                                if _10204 < mem[_11248] - _10224:
                                    revert with 0, 17
                                if _10204 - mem[_11248] + _10224 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not _10204:
                                    revert with 0, 18
                                mem[mem[64]] = address(cd[36])
                                mem[mem[64] + 32] = (10^18 * _3908) - (10^18 * _4672) + (10^18 * _3924) / _3908
                                mem[mem[64] + 64] = bool(cd[228])
                                mem[mem[64] + 96] = (10^18 * _10204) - (10^18 * _11252) + (10^18 * _10224) / _10204
                                emit 0x30658b22: address(cd[36]), (10^18 * _3908) - (10^18 * _4672) + (10^18 * _3924) / _3908, bool(cd[228]), (10^18 * _10204) - (10^18 * _11252) + (10^18 * _10224) / _10204
                                if 0 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                    revert with 0, 50
                                if (10^18 * _3908) - (10^18 * _4672) + (10^18 * _3924) / _3908 > mem[ceil32(32 * ('cd', 132).length) + 161]:
                                    revert with 0, 'Tax larger than max taxes specified'
                                if 1 >= mem[ceil32(32 * ('cd', 132).length) + 129]:
                                    revert with 0, 50
                                if (10^18 * _10204) - (10^18 * _11252) + (10^18 * _10224) / _10204 > mem[ceil32(32 * ('cd', 132).length) + 193]:
                                    revert with 0, 'Tax larger than max taxes specified'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor1)
                                staticcall stor1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if address(cd[164]):
                                    _11382 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _11394 = mem[_11382]
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = _11394
                                    require ext_code.size(stor1)
                                    call stor1.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), _11394
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11410 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11410] == bool(mem[_11410])
                                    if stor1 == address(cd[68]):
                                        _11492 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if not mem[_11492]:
                                            revert with 0, 50
                                        mem[_11492 + 32] = stor1
                                        if 1 >= mem[_11492]:
                                            revert with 0, 50
                                        mem[_11492 + 64] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_11492 + 100] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_11492 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _11492 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _11744 = mem[192]
                                                mem[_11492 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_11492 + ceil32(return_data.size) + 100] = _11744
                                                mem[_11492 + ceil32(return_data.size) + 132] = 1
                                                mem[_11492 + ceil32(return_data.size) + 164] = 160
                                                mem[_11492 + ceil32(return_data.size) + 260] = mem[_11492]
                                                idx = 0
                                                s = _11492 + 32
                                                t = _11492 + ceil32(return_data.size) + 292
                                                while idx < mem[_11492]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_11492 + ceil32(return_data.size) + 196] = address(cd[164])
                                                mem[_11492 + ceil32(return_data.size) + 228] = block.timestamp
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _11492 + ceil32(return_data.size) + (32 * mem[_11492]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _11595 = mem[160]
                                            mem[_11492 + 100] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_11492 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11492 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            mem[_11492 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_11492 + ceil32(return_data.size) + 100] = _11595
                                            mem[_11492 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                            mem[_11492 + ceil32(return_data.size) + 164] = 160
                                            mem[_11492 + ceil32(return_data.size) + 260] = mem[_11492]
                                            idx = 0
                                            s = _11492 + 32
                                            t = _11492 + ceil32(return_data.size) + 292
                                            while idx < mem[_11492]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_11492 + ceil32(return_data.size) + 196] = address(cd[164])
                                            mem[_11492 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _11492 + ceil32(return_data.size) + (32 * mem[_11492]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12279 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_12279] <= test266151307()
                                            require _12279 + return_data.size > _12279 + mem[_12279] + 31
                                            if mem[_12279 + mem[_12279]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_12279 + mem[_12279]]) + 1 < 0 or _12279 + ceil32(return_data.size) + ceil32(32 * mem[_12279 + mem[_12279]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require mem[_12279] + (32 * mem[_12279 + mem[_12279]]) + 32 <= return_data.size
                                    else:
                                        _11490 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if not mem[_11490]:
                                            revert with 0, 50
                                        mem[_11490 + 32] = stor1
                                        if 1 >= mem[_11490]:
                                            revert with 0, 50
                                        mem[_11490 + 64] = address(cd[68])
                                        if 2 >= mem[_11490]:
                                            revert with 0, 50
                                        mem[_11490 + 96] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_11490 + 132] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_11490 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _11490 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _11768 = mem[192]
                                                mem[_11490 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_11490 + ceil32(return_data.size) + 132] = _11768
                                                mem[_11490 + ceil32(return_data.size) + 164] = 1
                                                mem[_11490 + ceil32(return_data.size) + 196] = 160
                                                mem[_11490 + ceil32(return_data.size) + 292] = mem[_11490]
                                                idx = 0
                                                s = _11490 + 32
                                                t = _11490 + ceil32(return_data.size) + 324
                                                while idx < mem[_11490]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _11768, 1, 160, address(cd[164]), block.timestamp, mem[_11490 + ceil32(return_data.size) + 292 len (32 * mem[_11490]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _11626 = mem[160]
                                            mem[_11490 + 132] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_11490 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11490 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            mem[_11490 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_11490 + ceil32(return_data.size) + 132] = _11626
                                            mem[_11490 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            mem[_11490 + ceil32(return_data.size) + 196] = 160
                                            mem[_11490 + ceil32(return_data.size) + 292] = mem[_11490]
                                            idx = 0
                                            s = _11490 + 32
                                            t = _11490 + ceil32(return_data.size) + 324
                                            while idx < mem[_11490]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_11490 + ceil32(return_data.size) + 228] = address(cd[164])
                                            mem[_11490 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _11626, ext_call.return_data[0], 160, address(cd[164]), block.timestamp, mem[_11490 + ceil32(return_data.size) + 292 len (32 * mem[_11490]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11490 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11490 + (2 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            require mem[_11490 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11626) >> 32 <= test266151307()
                                            require _11490 + ceil32(return_data.size) + return_data.size + 128 > _11490 + ceil32(return_data.size) + mem[_11490 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11626) >> 32 + 159
                                            if mem[_11490 + ceil32(return_data.size) + mem[_11490 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11626) >> 32 + 128] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_11490 + ceil32(return_data.size) + mem[_11490 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11626) >> 32 + 128]) + 1 < 0 or _11490 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_11490 + ceil32(return_data.size) + mem[_11490 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11626) >> 32 + 128]) + 129 > test266151307():
                                                revert with 0, 65
                                            require mem[_11490 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11626) >> 32 + (32 * mem[_11490 + ceil32(return_data.size) + mem[_11490 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _11626) >> 32 + 128]) + 32 <= return_data.size
                                else:
                                    _11388 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _11398 = mem[_11388]
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = _11398
                                    require ext_code.size(stor1)
                                    call stor1.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), _11398
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11420 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11420] == bool(mem[_11420])
                                    if stor1 == address(cd[68]):
                                        _11518 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if not mem[_11518]:
                                            revert with 0, 50
                                        mem[_11518 + 32] = stor1
                                        if 1 >= mem[_11518]:
                                            revert with 0, 50
                                        mem[_11518 + 64] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_11518 + 100] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_11518 + 96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _11518 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _11773 = mem[192]
                                                mem[_11518 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_11518 + ceil32(return_data.size) + 100] = _11773
                                                mem[_11518 + ceil32(return_data.size) + 132] = 1
                                                mem[_11518 + ceil32(return_data.size) + 164] = 160
                                                mem[_11518 + ceil32(return_data.size) + 260] = mem[_11518]
                                                idx = 0
                                                s = _11518 + 32
                                                t = _11518 + ceil32(return_data.size) + 292
                                                while idx < mem[_11518]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args _11773, 1, 160, owner, block.timestamp, mem[_11518 + ceil32(return_data.size) + 260 len (32 * mem[_11518]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _11632 = mem[160]
                                            mem[_11518 + 100] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_11518 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11518 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            mem[_11518 + ceil32(return_data.size) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_11518 + ceil32(return_data.size) + 100] = _11632
                                            mem[_11518 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                            mem[_11518 + ceil32(return_data.size) + 164] = 160
                                            mem[_11518 + ceil32(return_data.size) + 260] = mem[_11518]
                                            idx = 0
                                            s = _11518 + 32
                                            t = _11518 + ceil32(return_data.size) + 292
                                            while idx < mem[_11518]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_11518 + ceil32(return_data.size) + 196] = owner
                                            mem[_11518 + ceil32(return_data.size) + 228] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _11632, ext_call.return_data[0], 160, owner, block.timestamp, mem[_11518 + ceil32(return_data.size) + 260 len (32 * mem[_11518]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11518 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11518 + (2 * ceil32(return_data.size)) + 96
                                            require return_data.size >= 32
                                            require mem[_11518 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11632) >> 32 <= test266151307()
                                            require _11518 + ceil32(return_data.size) + return_data.size + 96 > _11518 + ceil32(return_data.size) + mem[_11518 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11632) >> 32 + 127
                                            if mem[_11518 + ceil32(return_data.size) + mem[_11518 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11632) >> 32 + 96] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_11518 + ceil32(return_data.size) + mem[_11518 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11632) >> 32 + 96]) + 1 < 0 or _11518 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_11518 + ceil32(return_data.size) + mem[_11518 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11632) >> 32 + 96]) + 97 > test266151307():
                                                revert with 0, 65
                                            require mem[_11518 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11632) >> 32 + (32 * mem[_11518 + ceil32(return_data.size) + mem[_11518 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _11632) >> 32 + 96]) + 32 <= return_data.size
                                    else:
                                        _11516 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if not mem[_11516]:
                                            revert with 0, 50
                                        mem[_11516 + 32] = stor1
                                        if 1 >= mem[_11516]:
                                            revert with 0, 50
                                        mem[_11516 + 64] = address(cd[68])
                                        if 2 >= mem[_11516]:
                                            revert with 0, 50
                                        mem[_11516 + 96] = address(cd[36])
                                        if uint8(cd[100]):
                                            if 1 == uint8(cd[100]):
                                                mem[_11516 + 132] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_11516 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _11516 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _11792 = mem[192]
                                                mem[_11516 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_11516 + ceil32(return_data.size) + 132] = _11792
                                                mem[_11516 + ceil32(return_data.size) + 164] = 1
                                                mem[_11516 + ceil32(return_data.size) + 196] = 160
                                                mem[_11516 + ceil32(return_data.size) + 292] = mem[_11516]
                                                idx = 0
                                                s = _11516 + 32
                                                t = _11516 + ceil32(return_data.size) + 324
                                                while idx < mem[_11516]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_11516 + ceil32(return_data.size) + 228] = owner
                                                mem[_11516 + ceil32(return_data.size) + 260] = block.timestamp
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _11516 + ceil32(return_data.size) + (32 * mem[_11516]) + -mem[64] + 320]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _11664 = mem[160]
                                            mem[_11516 + 132] = this.address
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_11516 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _11516 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            mem[_11516 + ceil32(return_data.size) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[_11516 + ceil32(return_data.size) + 132] = _11664
                                            mem[_11516 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            mem[_11516 + ceil32(return_data.size) + 196] = 160
                                            mem[_11516 + ceil32(return_data.size) + 292] = mem[_11516]
                                            idx = 0
                                            s = _11516 + 32
                                            t = _11516 + ceil32(return_data.size) + 324
                                            while idx < mem[_11516]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_11516 + ceil32(return_data.size) + 228] = owner
                                            mem[_11516 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _11516 + ceil32(return_data.size) + (32 * mem[_11516]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12280 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_12280] <= test266151307()
                                            require _12280 + return_data.size > _12280 + mem[_12280] + 31
                                            if mem[_12280 + mem[_12280]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_12280 + mem[_12280]]) + 1 < 0 or _12280 + ceil32(return_data.size) + ceil32(32 * mem[_12280 + mem[_12280]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require mem[_12280] + (32 * mem[_12280 + mem[_12280]]) + 32 <= return_data.size
}



}
